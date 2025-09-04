import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Authentication/authenticationScreen.dart';
import '../HomeScreen/home_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), ()
    {

      if(FirebaseAuth.instance.currentUser!=null)
        {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) =>  homeScreen()));
        }
      else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(
                builder: (context) => const authenticationScreen()));
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Center(
        child: Container(
          height: height * 0.5,
          width: width * 0.62,
          decoration: const BoxDecoration(
              //color: Colors.white,
              ),
          child: Image.asset(
            'assets/images/app_logo_green.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
