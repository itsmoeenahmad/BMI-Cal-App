import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/ReusableWidgets/text.dart';

class pricacyScreen extends StatelessWidget {

  final _pageController = PageController();

   pricacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xffC4F649),)),
        ),
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xff1B1B1B),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.035,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Privacy Policy for BMI Cal',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.025,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: 'Effective Date: 8/12/2024',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ),
                        Container(
                          //padding: EdgeInsets.only(top: height*0.01),
                          height: height*0.03,
                          width: double.infinity,
                         // color: Colors.white,
                          child: text(
                              data: "Introduction",
                              f_s: 18,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ),
                        Container(
                          height: height*0.162,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Welcome to BMI Cal. We are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy explains how we collect, use, and safeguard your data when you use our app.",
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Information We Collect',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.07,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Our BMI Calculator App collects the following information:",
                                f_s: 13.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.07,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  data: 'a) ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                              text(
                                  data: 'User-provided data: Height, weight, age, and\ngender (optional) for BMI calculation purposes.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.07,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  data: 'b) ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                              text(
                                  data: 'Device information: Device type, operating\nsystem version, and unique device identifiers.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.095,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  data: 'c) ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                              text(
                                  data: "Improving the App: We may use aggregated, \nanonymized data to improve the app's features\nand user experience.",
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),

                        Container(
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "We do not collect or store any personal identifiable information such as names, addresses, or contact details.",
                                f_s: 13.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'How We Use Your Information',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.05,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "The information we collect is used solely for:",
                                f_s: 13.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),





                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [

                        Container(
                          height: height*0.06,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  data: 'a) ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                              text(
                                  data: 'Calculating and displaying your Body Mass\nIndex (BMI)',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.06,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  data: 'b) ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                              text(
                                  data: 'Improving app functionality and user\nexperience',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.06,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  data: 'c) ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                              text(
                                  data: "Analyzing app usage patterns to enhance\nperformance",
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),


                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Data Storage and Security',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "All data is stored locally on your device. We do not transmit or store your personal information on external servers.",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Third-Party Services',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.065,
                          width: double.infinity,
                           // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Our app does not integrate with any third-party services or APIs that would have access to your data.",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Advertisements',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "The BMI Cal is ad-free. We do not display any advertisements or share your information with advertisers.",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Children's Privacy",
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Our app is not intended for use by children under the age of 10. We do not knowingly collect personal information from children under 10.",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Changes to This Policy",
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.11,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the 'Effective Date' at the top.",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),





                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Contact Us',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "If you have any questions or concerns about this Privacy Policy, please contact us at thebmicalculator@gmail.com",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Your Consent',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "By using the BMI Cal, you consent to the collection and use of information as described in this Privacy Policy.",
                                f_s: 12.5,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.09),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: const WormEffect(
                  dotHeight: 5.0,
                  dotWidth: 10.0,
                  activeDotColor: Color(0xffC4F649),
                  dotColor: Colors.grey,
                  spacing: 5.0,
                ),
                onDotClicked: (index) {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
