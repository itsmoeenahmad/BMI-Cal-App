import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog05 extends StatefulWidget {
  const blog05({super.key});

  @override
  State<blog05> createState() => _blog05State();
}

class _blog05State extends State<blog05> {
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
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xffC4F649),
              )),
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
                controller: _pageController,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.12,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    "The formula BMI = weight (kg) / (height (m))^2 categorizes you as underweight, normal weight, overweight, or obese, providing a rapid snapshot of your weight status.",
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
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI Calculator for Men and Women',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.24,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "The BMI calculator is a versatile tool for both men and women, assessing weight relative to height. While the formula remains the same, it considers variations in body composition, offering tailored insights into an individual's weight status based on gender. It's a valuable resource for all adults to monitor and manage their health effectively.",
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
                                data:
                                'BMI for the Young Ones: A Special Approach',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.19,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "BMI calculators for children and teens take into account their age, height, and weight, giving a unique perspective. Growth patterns, age, and gender are considered to accurately interpret BMI, aiding in understanding the development and health of the younger population.",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.035,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Accuracy Matters: Trusting Your BMI',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.12,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "To rely on BMI results, precision is key. Accurate BMI calculators employ the correct formula, ensuring precise outcomes based on the weight and height provided.",
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
                          height: height*0.1,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data: 'These calculators are freely accessible online and through apps, offering a user-friendly way to track BMI and monitor weight status',
                              f_s: 13,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),
                        Container(
                          height: height*0.04,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI on the Go: Apps for a Healthier You',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.28,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "BMI calculator apps, easily available on smartphones and tablets, bring convenience to your health journey. They apply the standard BMI formula and often include exciting features like progress tracking, goal setting, and helpful health tips related to BMI. It's a handy tool for those on the move, promoting a healthier lifestyle.",
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
              padding: EdgeInsets.only(bottom: height * 0.06),
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
