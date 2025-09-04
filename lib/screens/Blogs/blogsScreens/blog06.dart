import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog06 extends StatefulWidget {
  const blog06({super.key});

  @override
  State<blog06> createState() => _blog06State();
}

class _blog06State extends State<blog06> {


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
                          height: height*0.17,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "weight matches their height. But for bodybuilders and athletes, is this enough to understand how fit they are? Let's see if BMI tells us the whole story about their muscles, stamina, and how well they perform.",
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
                                data: 'How do Bodybuilders and Athletes use BMI Calculators?',
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
                                data:
                                "Bodybuilders and athletes use BMI as a starting point to gauge weight in relation to height, acknowledging its limited scope. They integrate BMI insights with body fat percentage and personal fitness goals to refine training and diet plans for the best outcomes.",
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
                                data: 'BMI Misconceptions: BMI vs. Body Composition',
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
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "BMI calculates weight in relation to height, providing weight categories. However, it overlooks the body's composition, focusing solely on weight.",
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.12,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "On the other hand, body composition analysis considers fat, muscle, bone, and water proportions in the body, giving a more comprehensive insight into fitness.",
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
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Expert Guidance on BMI for Athletes and Bodybuilders',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.3,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                "Health professionals stress the need to interpret BMI considering individual circumstances, particularly for athletes and bodybuilders with high muscle mass. They highlight body fat percentage and waist circumference for a complete health assessment. Considering multiple metrics, a holistic approach is recommended to effectively tailor fitness, nutrition, and training plans.",
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
              padding: EdgeInsets.only(bottom: height * 0.11),
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
