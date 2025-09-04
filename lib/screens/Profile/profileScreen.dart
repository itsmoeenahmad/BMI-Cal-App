import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bmical/components/ReusableWidgets/button.dart';
import 'package:bmical/components/ReusableWidgets/showMessage.dart';
import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:bmical/components/ReusableWidgets/textField.dart';
import 'package:bmical/screens/Profile/FirestoreCode/saveProfile.dart';
import 'package:bmical/screens/Profile/ProviderClass/loadingProvider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

import 'ProviderClass/imageProviderClass.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  //Controllers

  TextEditingController _firstName = TextEditingController();
  TextEditingController _middleName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _code = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _yourGoal = TextEditingController();

  //Getting the user Data From GoogleSignIn

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Fetching the Current User Data From FirebaseAuth
    getUserData();

    //Fetching the Current User Data From Firestore
    getUserProfile();

  }

  void getUserData() {
    print('Email is ${FirebaseAuth.instance.currentUser!.email}');
    print('Name is ${FirebaseAuth.instance.currentUser!.displayName}');

    //Assigning Current User Email to Email TextField

    _email.text = FirebaseAuth.instance.currentUser!.email!;

    //Splitting the current user name to first and last name and then assigning to first & last name Text Field.
    String fullName = FirebaseAuth.instance.currentUser!.displayName!;
    List<String> nameParts = fullName.split(' ');
    if (nameParts.length > 0) {
      _firstName.text = nameParts[0];
    }
    if (nameParts.length > 1) {
      _lastName.text = nameParts.sublist(1).join(' ');
    }
  }

  Future<void> getUserProfile() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    DocumentReference docRef =
        FirebaseFirestore.instance.collection('userProfile').doc(uid);
    DocumentSnapshot docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      //Getting teh user Image From Firestore
      getImageUrlFromFirestore();
      Map<String, dynamic> userData =
          docSnapshot.data() as Map<String, dynamic>;

      _firstName.text = userData['firstName'] ?? '';
      _middleName.text = userData['middleName'] ?? '';
      _lastName.text = userData['lastName'] ?? '';
      _email.text = userData['email'] ?? '';
      _code.text = userData['code'] ?? '';
      _phoneNumber.text = userData['phoneNumber'] ?? '';
      _yourGoal.text = userData['yourGoal'] ?? '';
      Provider.of<loadingProviderClass>(context, listen: false).change(false);
    } else {
      print("No such document!");
      Provider.of<loadingProviderClass>(context, listen: false).change(false);
    }
  }

  //Image Picking Code

  final picker = ImagePicker();
  File? imageFile;

  Future getImageFromGallery(BuildContext context) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile = File(pickedFile.path);

      //provider class calling - storing the user profile path
      Provider.of<imageProviderClass>(context, listen: false)
          .set_image_path(imageFile);
      //Calling Firestore code for storing the image path.

      //condition
      if (imageFile == null) {
        print("object if");
        print('No image selected.');
        return;
      }

      //Firestore code
      try {
        print("object1");
        final _firestore_ref =
            FirebaseFirestore.instance.collection('userImage');
        final _ref = FirebaseStorage.instance
            .ref('/ProfileImage/${imageFile!.path.split('/').last}');

        // Start the upload task
        UploadTask _uploadTask = _ref.putFile(imageFile!);

        // Await the upload task to complete
        TaskSnapshot taskSnapshot = await _uploadTask;
        print("object2"); // Added print statement to check if the upload task completed

        // Get the download URL
        var new_url = await taskSnapshot.ref.getDownloadURL();
        print(
            "object3"); // Moved here to check if the download URL is retrieved

        // Store the URL in Firestore
        String id = FirebaseAuth.instance.currentUser!.uid.toString();
        await _firestore_ref.doc(id.toString()).set({
          'id': FirebaseAuth.instance.currentUser!.uid.toString(),
          'data': new_url.toString()
        });

        showMessage(context, "Image Uploaded ", Colors.green);
        print('Successfully uploaded image and stored URL in Firestore.');
        getImageUrlFromFirestore();
      } catch (error) {
        showMessage(context,"Image Not Uploaded", Colors.red);
        print('Error in uploading image: $error');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Image Not Selected"),
        backgroundColor: Colors.red,
      ));
    }
  }

  //Image Getting from Firestore

  String? imageUrl;

  Future<void> getImageUrlFromFirestore() async {
    try {
      // Get the current user's ID
      print('try....');
      String userId = FirebaseAuth.instance.currentUser!.uid;

      // Reference to the Firestore document
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await FirebaseFirestore.instance
          .collection('userImage')
          .doc(userId)
          .get();

      // Check if the document exists
      if (documentSnapshot.exists) {
        // Extract the URL from the document
        imageUrl = documentSnapshot.data()?['data'];
        if (imageUrl != null) {
          print("Image URL retrieved: $imageUrl");
          Provider.of<imageProviderClass>(context, listen: false)
              .set_image_URL_FireStore(imageUrl);
        } else {
          print("No URL found in document for user: $userId");
        }
      } else {
        print("No document found for user: $userId");
      }
    } catch (error) {
      print('Error getting image URL: $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: Consumer<loadingProviderClass>(
        builder: (context, ProviderClass, child) {
          return ProviderClass.check == true
              ? Center(
                  child: LoadingAnimationWidget.fourRotatingDots(
                      color: Color(0xffC4F649), size: 40),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.15,
                      ),
                      InkWell(
                        onTap: (){
                          getImageFromGallery(context);
                        },
                        child: Consumer<imageProviderClass>(
                          builder: (context, provider, child) {
                            return Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: provider.imageURL.isNotEmpty
                                  ? ClipOval(
                                child: Image.network(
                                  provider.imageURL,
                                  fit: BoxFit.cover,
                                ),
                              )
                                  : (provider.selected_image_path.isNotEmpty
                                  ? ClipOval(
                                child: Image.file(
                                  File(provider.selected_image_path),
                                  fit: BoxFit.cover,
                                ),
                              )
                                  : const Center(
                                child: Icon(
                                  Icons.person_outlined,
                                  size: 60,
                                ),
                              )),
                            );
                          },
                        ),
                        // child: Consumer<imageProviderClass>(
                        //   builder: (context, ProviderClass, child){
                        //     return Container(
                        //       height: 100,
                        //       width: 100,
                        //       decoration: BoxDecoration(
                        //           color: const Color(0xffD9D9D9),
                        //           borderRadius: BorderRadius.circular(80)),
                        //       child: ProviderClass.selected_image_path.isEmpty
                        //           ? const Center(
                        //           child: Icon(
                        //             Icons.person_outlined,
                        //             size: 60,
                        //           ))
                        //            :  ClipOval(
                        //          child: ProviderClass.imageURL.isEmpty ? Image.file(
                        //            File(ProviderClass.selected_image_path),
                        //            fit: BoxFit.fill,
                        //          ) : Image(image: NetworkImage(ProviderClass.imageURL)),
                        //       ),
                        //     );
                        //   },
                        // ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                          child: text(
                              data: 'Profile Photo',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffC4F649),
                              f_wei: FontWeight.w800)),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      textField(
                        controller: _firstName,
                        text: 'First Name',
                        type: TextInputType.text,
                        star: true,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      textField(
                        controller: _middleName,
                        text: 'Middle Name',
                        type: TextInputType.text,
                        star: false,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      textField(
                        controller: _lastName,
                        text: 'Last Name',
                        type: TextInputType.text,
                        star: true,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      textField(
                        controller: _email,
                        text: 'Email',
                        type: TextInputType.emailAddress,
                        star: true,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),

                      //Code & Phone Number
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.23,
                            child: textField(
                              controller: _code,
                              text: 'Code',
                              type: TextInputType.number,
                              star: true,
                            ),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.55,
                            //color: Colors.white,
                            child: textField(
                              controller: _phoneNumber,
                              text: 'Phone Number',
                              type: TextInputType.number,
                              star: true,
                            ),
                          ),
                        ],
                      ),


                      //Your Goal
                      SizedBox(
                        height: height * 0.3,
                        width: double.infinity,
                        child: TextField(
                          expands: true,
                          minLines: null,
                          maxLines: null,
                          cursorColor: Color(0xff494949),
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color:  Colors.white,
                              fontWeight: FontWeight.w600),
                          controller: _yourGoal,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            label: RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: 'Your Goal',style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    color: const Color(0xff494949),
                                    fontWeight: FontWeight.w600),),
                                TextSpan(
                                  text: "*",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      color: const Color(0xffC4F649),
                                      fontWeight: FontWeight.w600),
                                ),
                              ]),
                            ),
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            hintText: 'Your Goal',
                            hintStyle: GoogleFonts.montserrat(
                                fontSize: 15,
                                color: const Color(0xff494949),
                                fontWeight: FontWeight.w600),
                            fillColor: const Color(0xff494949),
                            focusColor: const Color(0xff494949),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff494949)),
                            ),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff494949)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff494949)),
                            ),
                          ),
                        ),
                      ),

                      // Container(
                      //   height: height * 0.3,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(30),
                      //       border: Border.all(color: const Color(0xff494949))
                      //       //color: Colors.white,
                      //       ),
                      //   child: TextField(
                      //     cursorColor: Color(0xff494949),
                      //     style: GoogleFonts.montserrat(
                      //         fontSize: 15,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w600),
                      //     controller: _yourGoal,
                      //     keyboardType: TextInputType.text,
                      //     minLines: 1,
                      //     maxLines: 5,
                      //     decoration: InputDecoration(
                      //         contentPadding: const EdgeInsets.symmetric(
                      //             vertical: 10, horizontal: 20),
                      //         hintText: 'Your Goal',
                      //         hintStyle: GoogleFonts.montserrat(
                      //             fontSize: 15,
                      //             color: const Color(0xff494949),
                      //             fontWeight: FontWeight.w600),
                      //         fillColor: const Color(0xff494949),
                      //         focusColor: const Color(0xff494949),
                      //         border: InputBorder.none),
                      //   ),
                      // ),


                      SizedBox(
                        height: height * 0.08,
                      ),

                      //button
                      InkWell(
                          onTap: () {
                            if (_email.text.isEmpty ||
                                _firstName.text.isEmpty ||
                                _lastName.text.isEmpty ||
                                _code.text.isEmpty ||
                                _phoneNumber.text.isEmpty ||
                                _yourGoal.text.isEmpty) {

                              if(imageUrl!.isEmpty)
                                {
                                  showMessage(context, 'Image Not Selected', Colors.red);
                                }
                              showMessage(context, 'Fill the data', Colors.red);
                            } else {
                              if(imageUrl!.isEmpty)
                              {
                                showMessage(context, 'Image Not Selected', Colors.red);
                              }
                              Provider.of<loadingProviderClass>(context,
                                      listen: false)
                                  .change(true);
                              //Call the Firestore Method which store the currentUser information
                              saveProfile(
                                  context,
                                  _firstName.text.toString(),
                                  _middleName.text.toString(),
                                  _lastName.text.toString(),
                                  _email.text.toString(),
                                  _code.text.toString(),
                                  _phoneNumber.text.toString(),
                                  _yourGoal.text.toString());

                              Future.delayed(Duration(seconds: 2), () {
                                //Call the Firestore code for getting the user data.
                                getUserProfile();
                              });
                            }
                          },
                          child: button(textData: 'Register')),
                      SizedBox(
                        height: height * 0.2,
                      ),
                    ],
                  )),
                );
        },
      ),
    );
  }
}
