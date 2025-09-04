import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog04 extends StatefulWidget {
  const blog04({super.key});

  @override
  State<blog04> createState() => _blog04State();
}

class _blog04State extends State<blog04> {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
      backgroundColor: const Color(0xff1B1B1B),
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
                          height: height*0.16,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "health map. It enables you to know if you're at a good weight. It's a tool that guides your weight loss plans and fitness goals. Let's explore the world of BMI and see how it can help you stay healthy and fit!",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: height*0.034,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'How BMI Guides Your Fitness Goals?',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.22,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Your BMI can guide you in setting achievable fitness goals. It helps you understand your body's weight-to-height ratio, creating effective workout routines and nutrition plans. Whether you aim for strength, endurance, or flexibility, your BMI can be a valuable metric in reaching your desired fitness levels.",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),
                        Container(
                          height: height*0.06,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Find where your health shines brightest - the 18.5 to 24.9 BMI range. It's your green zone.",
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
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Using BMI for Losing Weight? A Plan Just for You!',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),


                        Container(
                          height: height*0.16,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "BMI is like a guide for losing weight. It helps you set real-life goals for your weight loss. It tells you how much weight you should aim to lose to be healthier. It's like having a map for losing weight in a way that works for you!",
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
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI for Health Assessment: Know Your Numbers',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),


                        Container(
                          height: height*0.25,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Regularly assessing your BMI is fundamental in Keeping track of your health. Your BMI can indicate whether you're in a healthy weight range or need lifestyle adjustments. It's a vital tool for preventive health, enabling you to address potential health issues before they escalate.",
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
              padding: EdgeInsets.only(bottom: height * 0.1),
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
