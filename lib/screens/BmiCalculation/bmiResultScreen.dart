import 'package:bmical/components/ReusableWidgets/showMessage.dart';
import 'package:bmical/screens/BmiCalculation/ProviderClasses/savedAgainProviderClass.dart';
import 'package:bmical/screens/BmiCalculation/ProviderClasses/savedProviderClass.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/ReusableWidgets/text.dart';
import '../Activities/ProviderClasses/Feet & CentiMeter Class/centiMeterProviderClass.dart';
import '../Activities/ProviderClasses/Feet & CentiMeter Class/feetProviderClass.dart';
import '../Activities/ProviderClasses/Weight & Age Class/ageProviderClass.dart';
import '../Activities/ProviderClasses/Weight & Age Class/weightProviderClass.dart';
import '../HomeScreen/home_screen.dart';
import 'ProviderClasses/BMICalculatorProvider.dart';
import 'FirestoreCode/saveResult.dart';

class bmiResultScreen extends StatefulWidget {
  const bmiResultScreen({super.key});

  @override
  State<bmiResultScreen> createState() => _bmiResultScreenState();
}

class _bmiResultScreenState extends State<bmiResultScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff1B1B1B),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
            Provider.of<savedProvideClass>(context,listen: false).change(false);
            Provider.of<savedAgainProviderClass>(context,listen: false).change(false);
          },
            child: Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xffC4F649),)),
        backgroundColor: Color(0xff1B1B1B),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //App Logo

            SizedBox(
              height: height * 0.08,
            ),
            Center(
              child: Container(
                height: height * 0.1,
                width: width * 0.4,
                //color: Colors.white,
                child: Center(
                  child: Image.asset(
                    'assets/images/app_logo_green.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),

            //Body Sheet

            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: height * 0.677,
                  //color: Colors.white,
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipPath(
                        clipper: TopRoundedWithUShapeClipper(),
                        child: Container(
                          width: double.infinity,
                          height: height * 0.62,
                          color: Color(0xff272727),
                          child: Consumer<BMICalculatorProvider>(
                            builder: (context, ProviderClass, child) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.08,
                                  ),
                                  text(
                                      data: 'Your BMI is',
                                      f_s: 15,
                                      f_sty: FontStyle.normal,
                                      col: Color(0xffC4F649),
                                      f_wei: FontWeight.w800),
                                  SizedBox(
                                    height: height * 0.009,
                                  ),
                                  text(
                                      data:
                                          '${ProviderClass.bmi.toStringAsFixed(2)} kg/m²',
                                      f_s: 24,
                                      f_sty: FontStyle.normal,
                                      col: Colors.white,
                                      f_wei: FontWeight.w900),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  text(
                                      data: '(${ProviderClass.bmiCategory})',
                                      f_s: 15,
                                      f_sty: FontStyle.normal,
                                      col: Color(0xffC4F649),
                                      f_wei: FontWeight.w800),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.19,
                                    width: width * 0.8,
                                    // color: Colors.white,
                                    child: Center(
                                      child: text(
                                          data:
                                              'A BMI of 18.5 - 24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems.',
                                          f_s: 14,
                                          f_sty: FontStyle.normal,
                                          col: Color(0xffC4F649),
                                          f_wei: FontWeight.w700),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  //Save and share icon....
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Consumer<savedAgainProviderClass>(
                                          builder: (context, savedAgainProviderClass, child){
                                            return InkWell(
                                              onTap: () async {
                                                if(savedAgainProviderClass.savedCheck==true)
                                                  {
                                                    showMessage(context, 'Already Saved', Colors.red);
                                                    Provider.of<savedProvideClass>(context,listen: false).change(false);
                                                    return;
                                                  }
                                                Provider.of<savedProvideClass>(context,listen: false).change(false);

                                                //Saving the BMI Result in FireStore...
                                                //BMI Result, Date, UID


                                                //Current Date
                                                DateTime currentDateTime = DateTime.now();
                                                var date = DateTime.parse(currentDateTime.toString());
                                                var currentDate = "${date.day}-${date.month}-${date.year}";
                                                print(currentDate);

                                                //UID
                                                String? userID = FirebaseAuth.instance.currentUser?.uid;
                                                print(userID);

                                                //BMI Result
                                                print(ProviderClass.bmi.toStringAsFixed(2));

                                                //Method which store the bmi result in Firebase-Firestore
                                                saveResult(context, userID!, ProviderClass.bmi.toStringAsFixed(2), currentDate);


                                              },
                                              child: Consumer<savedProvideClass>(
                                                builder: (context, ProviderClass, child)
                                                {
                                                  return  Container(
                                                    height: height * 0.07,
                                                    width: width * 0.12,
                                                    // color: Colors.green,
                                                    child: Center(
                                                      child: Image(
                                                        image: ProviderClass.check==false ? const AssetImage(
                                                            "assets/icons/before_save_icon.png") : const AssetImage(
                                                            "assets/icons/after_save_icon.png") ,color: const Color(0xffC4F649),fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      SizedBox(
                                        width: width * 0.04,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          String message =
                                              'This is my BMI Result: ${ProviderClass.bmi.toStringAsFixed(2)}\n\n';
                                          message +=
                                          'Check out BMI-Cal App here: https://play.google.com/store/apps/details?id=com.bmi.cal.bmi_cal ';
                                          Share.share(message);
                                        },
                                        child: Container(
                                          height: height * 0.07,
                                          width: width * 0.1,
                                          child: const Center(
                                            child:  Image(
                                                image: AssetImage(
                                                    "assets/icons/Share icon.png")),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: width * 0.3,
                  right: width * 0.3,
                  bottom: height * 0.6,
                  child: InkWell(
                    onTap: () {

                      // Accessing the providers and updating their values
                      Provider.of<centiMeterProviderClass>(context, listen: false).selectedcentiMeter = 5;
                      Provider.of<feetProviderClass>(context, listen: false).selectedFeet = 6;
                      Provider.of<ageProviderClass>(context, listen: false).selectedAge = 18;
                      Provider.of<weightProviderClass>(context, listen: false).selectedWeight = 60;

                      Provider.of<savedProvideClass>(context,listen: false).change(false);
                      // Navigating back to the first screen

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    },
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.06,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffC4F649),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.replay,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TopRoundedWithUShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // Start from top-left corner
    path.moveTo(0, 20);
    // Top-left rounded corner
    path.quadraticBezierTo(0, 0, 20, 0);
    // Line to the start of the U-shape
    path.lineTo(size.width / 2 - 40, 0);
    // U-shape with smoother curves
    path.quadraticBezierTo(size.width / 2 - 20, 40, size.width / 2, 40);
    path.quadraticBezierTo(size.width / 2 + 20, 40, size.width / 2 + 40, 0);
    // Line to the top-right corner
    path.lineTo(size.width - 20, 0);
    // Top-right rounded corner
    path.quadraticBezierTo(size.width, 0, size.width, 20);
    // Right edge
    path.lineTo(size.width, size.height);
    // Bottom edge
    path.lineTo(0, size.height);
    // Close the path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

