import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog01 extends StatefulWidget {
  const blog01({super.key});

  @override
  State<blog01> createState() => _blog01State();
}

class _blog01State extends State<blog01> {
  final _controller = PageController();
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
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xffC4F649),
              )),
        ),
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xff1B1B1B),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.13,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data:
                              "does it say something about your health, too? Let's talk about that magic number - your BMI! It's like a health report card based on your weight and height. Exciting, right?",
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),
                        Container(
                          height: height*0.033,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'What is BMI?',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.16,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data:
                              'BMI, or Body Mass Index, is a numeric value determined by weight and height. It helps classify if a person is underweight, average weight, overweight, or obese, indicating body fat levels.',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),
                        Container(
                          height: height*0.035,
                          width: double.infinity,
                          //color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "BMI Formula: Your Weight's Story",
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.11,
                          width: double.infinity,
                         // color: Colors.white,
                          child: text(
                              data:
                              "BMI calculation involves a straightforward formula based on an individual's height and weight. The formula for BMI is:",
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),
                        Container(
                            height: height * 0.1,
                            width: width * 0.66,
                            // color: Colors.white,
                            child: const Image(
                              image:
                                  AssetImage('assets/images/bmi_formula.png'),
                              color: Color(0xffD9D9D9),
                              fit: BoxFit.cover,
                            )),
                        Container(
                          height: height*0.035,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'How to calculate your BMI: Step by Step',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              text(
                                  data: 'Step 1: ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w700),
                              text(
                                  data: 'Measure your weight in kilograms.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              text(
                                  data: 'Step 2: ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w700),
                              text(
                                  data: 'Measure your height in meters.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              text(
                                  data: 'Step 3: ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w700),
                              text(
                                  data: 'Square your height (height × height).',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              text(
                                  data: 'Step 4: ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w700),
                              text(
                                  data:
                                  'Divide your weight by the squared height',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              text(
                                  data: 'Step 5: ',
                                  f_s: 14,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w700),
                              text(
                                  data: 'The result is your BMI',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Column(
                      children: [

                        Container(
                          height: height*0.038,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Understanding the BMI Chart",
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.13,
                          width: double.infinity,
                          // color: Colors.white,
                          child: text(
                              data:
                              "The BMI chart is a valuable tool that helps interpret the calculated BMI. It categorizes individuals into different weight classifications based on their BMI score:",
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),

                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Color(0xffD9D9D9),
                              ),
                              text(
                                  data: ' Underweight: BMI less than 18.5',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Color(0xffD9D9D9),
                              ),
                              text(
                                  data: ' Average weight: BMI between 18.5 and 24.9',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Color(0xffD9D9D9),
                              ),
                              text(
                                  data: ' Overweight: BMI between 25 and 29.9',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.white,
                              ),
                              text(
                                  data: ' Obese: BMI 30 or greater',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: const Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
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
                controller: _controller,
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
                  _controller.animateToPage(index,
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

