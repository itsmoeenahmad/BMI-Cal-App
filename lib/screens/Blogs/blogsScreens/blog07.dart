import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog07 extends StatefulWidget {
  const blog07({super.key});

  @override
  State<blog07> createState() => _blog07State();
}

class _blog07State extends State<blog07> {

  final _pageController = PageController();

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
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.2,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "High BMI correlates with health risks such as diabetes and heart conditions.\nRegular BMI monitoring provides early health warnings, prompting proactive actions. It's a vital tool for maintaining a healthy lifestyle and managing potential risks. Stay informed, and stay fit with BMI.",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: height*0.033,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI and Diet: Balancing the Equation',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.195,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "BMI and diet share an intrinsic relationship. Individuals can tailor their dietary choices based on their BMI category to achieve or maintain a healthy weight. The app encourages users to make informed dietary decisions aligned with their BMI, facilitating a harmonious diet plan.",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: height*0.065,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI and Exercise: Finding the Right Balance',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.15,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Physical activity and BMI are interconnected. The app underscores the significance of exercise in achieving a balanced BMI. Users can set fitness goals, aligning their workout routines with their BMI for a holistic approach to health.",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI Tracking: Monitoring Your Progress',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),


                        Container(
                          height: height*0.14,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "The BMI Calculator app allows users to track their BMI over time. Consistent tracking offers insights into progress and aids in making necessary adjustments to achieve health and fitness goals.",
                                f_s: 13,
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
                          height: height*0.065,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Importance of Knowing Your BMI: Empowering Your Health Journey',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.2,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Knowing one’s BMI is a fundamental step towards a healthier lifestyle. The app encourages users to recognize the importance of this metric, empowering them to take charge of their health proactively.",
                                f_s: 13,
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
              padding: EdgeInsets.only(bottom: height * 0.05),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 2,
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
