import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:bmical/screens/Authentication/signInScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class authenticationScreen extends StatefulWidget {
  const authenticationScreen({super.key});

  @override
  State<authenticationScreen> createState() => _authenticationScreenState();
}

class _authenticationScreenState extends State<authenticationScreen> {
  final selectedTextStyle = GoogleFonts.montserrat(
      fontWeight: FontWeight.bold, fontSize: 17.5, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B1B1B),
      ),
      body: DefaultTabController(
        length: 2,
        child: Stack(
          children: [

            //Tab bars
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.23, left: width * 0.1, right: width * 0.1),
              child: SegmentedTabControl(
                  tabTextColor: Colors.black,
                  textStyle: selectedTextStyle,
                  selectedTextStyle: selectedTextStyle,
                  selectedTabTextColor: Colors.black,
                  barDecoration: BoxDecoration(
                    color: const Color(0xffC4F649),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  indicatorPadding: EdgeInsets.only(top: 1.5,right: 1.5,bottom: 1.5,left: 1.5),
                  indicatorDecoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  tabs: const [
                    SegmentTab(label: 'Login',selectedTextColor: Colors.white),
                    SegmentTab(label: 'Register',selectedTextColor: Colors.white)
                  ]),
            ),

            //Tab bar View

            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.37, left: width * 0.1, right: width * 0.1),
              child: const TabBarView(children: [
                signInScreen(),
                signInScreen(), //SignUp Screen / Register Screen
              ]),
            ),
          ],
        ),
      ),
    );
  }
}