import 'package:bmical/screens/Authentication/PrivacyPolicy/privacyScreen.dart';
import 'package:bmical/screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import '../../components/GoogleAuth/signInWithGoogle.dart';
import '../../components/ReusableWidgets/text.dart';
import 'Terms&Conditions/termsAndConditions.dart';

class signInScreen extends StatefulWidget {
  const signInScreen({super.key});

  @override
  State<signInScreen> createState() => _signInScreenState();
}

class _signInScreenState extends State<signInScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Container(
        height: height * 0.5,
        width: double.infinity,
        //color: Colors.red,
        child: Column(
          children: [
            //SignIn With Google
            InkWell(
              onTap: () {
                signInWithGoogle(context);
              },
              child: Container(
                height: height * 0.055,
                width: width * 0.96,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Color(0xffC4F649),
                        width: 2,
                        style: BorderStyle.solid)),
                child: Center(
                  child: Row(
                    children: [
                      // SizedBox(
                      //   width: width*0.05,
                      // ),
                      Container(
                        height: height * 0.1,
                        width: width * 0.2,
                        //color: Colors.white,
                        child: Center(
                          child:  Image.asset(
                            'assets/icons/g_icon.png',
                            fit: BoxFit.contain,
                            //color: const Color(0xff494949),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width*0.02,
                      ),
                      text(
                          data: 'Sign in with Google',
                          f_s: 17,
                          f_sty: FontStyle.normal,
                          col: Color(0xffC4F649),
                          f_wei: FontWeight.w500)
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: height * 0.03,
            ),

            //Text

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>termsAndConditions() ));
                    },
                    child: text(
                        data: 'Terms & Conditions',
                        f_s: 12,
                        f_sty: FontStyle.normal,
                        col: Colors.white,
                        f_wei: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>pricacyScreen()));
                    },
                    child: text(
                        data: 'Privacy Policy',
                        f_s: 12,
                        f_sty: FontStyle.normal,
                        col: Colors.white,
                        f_wei: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.01,
            ),
            text(
                data: '© 2024 BMI cal All rights reserved.',
                f_s: 11,
                f_sty: FontStyle.normal,
                col: Color(0xff494949),
                f_wei: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}
