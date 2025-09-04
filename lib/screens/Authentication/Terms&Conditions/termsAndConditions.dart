import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/ReusableWidgets/text.dart';

class termsAndConditions extends StatelessWidget {


  final _pageController = PageController();

   termsAndConditions({super.key});

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
                                data: 'Terms & Conditions for BMI Cal',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: height*0.01),
                          height: height*0.045,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Effective Date: 8/12/2024',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '1. Introduction',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.11,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Welcome to the BMI Cal. By downloading, accessing, or using the App, you agree to be bound by these Terms and Conditions ('Terms'). Please read them carefully before using the App.",
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
                                data: '2. Acceptance of Terms',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.12,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "By using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms, including any future modifications. If you do not agree to these Terms, please do not use the App.",
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
                                data: '3. Use of the App',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.162,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "The App is provided for informational and educational purposes only. It is not intended to be a substitute for professional medical advice, diagnosis, or treatment. Always seek the advice of your physician or another qualified health provider with any questions you may have regarding your health.",
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
                                data: '4. User Responsibilities',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.14,
                          width: double.infinity,
                           // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "You are responsible for ensuring that your use of the App complies with applicable laws and regulations. You agree not to use the App in any manner that could harm, disable, overburden, or impair the App or interfere with any other party's use of the App.",
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
                                data: '5. Privacy',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.085,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: "Your privacy is important to us. Please refer to our Privacy Policy for information on how we collect, use, and protect your personal data.",
                              f_s: 12.5,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '6. Limitation of Liability',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.17,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: "The App is provided 'as is' without warranties of any kind, either express or implied. In no event shall the creators, developers, or distributors of the App be liable for any damages arising out of the use or inability to use the App, including but not limited to direct, indirect, incidental, punitive, and consequential damages.",
                              f_s: 12.5,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '7. Intellectual Property',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.145,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: "All content, design, and code associated with the App are the property of GIANT TECH SOLUTIONS LLC and are protected by copyright, trademark, and other applicable laws. Unauthorized use of any materials contained in the App may violate these laws.",
                              f_s: 12.5,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '8. Modifications to the App and Terms',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.16,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: "We reserve the right to modify or discontinue the App at any time without prior notice. We may also update these Terms from time to time, and any changes will be posted within the App. Your continued use of the App after such changes constitutes your acceptance of the new Terms.",
                              f_s: 12.5,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
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
                                data: '9. Governing Law',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.11,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: "These Terms shall be governed by and construed in accordance with the laws of Pakistan/Islamabad. Any disputes arising out of or relating to these Terms shall be resolved in the courts of Pakistan.",
                              f_s: 12.5,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),

                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '10. Contact Information',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.17,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: "If you have any questions or concerns about these Terms, please contact us at thebmicalculator@gmail.com",
                              f_s: 12.5,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
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
