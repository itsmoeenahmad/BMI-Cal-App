import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog02 extends StatefulWidget {
  const blog02({super.key});

  @override
  State<blog02> createState() => _blog02State();
}

class _blog02State extends State<blog02> {
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
                controller: _pageController,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [

                        Container(
                          height: height*0.13,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "inactivity and poor diet. A BMI value of 25 or above is considered higher. Managing and reducing a higher BMI to a normal range for overall well-being is essential.",
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.035,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'What Causes Higher BMI?',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Excessive calorie consumption.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Sitting too much and not moving enough.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Unhealthy dietary choices.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          //color: Colors.white,
                          child:  Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Genetic predisposition.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          //color: Colors.white,
                          child:  Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Certain medical conditions.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          //color: Colors.white,
                          child:  Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Hormonal imbalances.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.03,
                          width: double.infinity,
                          // color: Colors.white,
                          child:   Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Emotional factors and overeating.',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: height*0.01),
                          height: height*0.04,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'How Do You Achieve A Normal BMI?',
                                f_s: 15,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),


                        Container(
                          padding: EdgeInsets.only(top: height*0.01),
                          height: height*0.036,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '1. Balanced Diet and Nutrition',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: height*0.008),
                          height: height*0.18,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Maintaining a balanced diet is key to controlling your BMI. Incorporate more fruits, vegetables, lean proteins, and whole grains. Control portion sizes and be mindful of calorie intake. Avoid excessive consumption of sugary or high-calorie foods and beverages.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.red,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: '2. Regular Physical Activity',
                                f_s: 14,
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
                                data: 'Exercise is essential for managing BMI. Add 150 minutes of moderate aerobic or 75 minutes of intense activity weekly. Include strength training for muscle development.',
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
                          height: height*0.08,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Stay active throughout the day to boost metabolism and aid in weight management.',
                                f_s: 13,
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
                                data: '3. Consult a Healthcare Professional',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.18,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "If it's hard to keep a healthy BMI, ask a doctor or a diet expert for help. They can make a plan based on your health, how you live, and what you want.Regular check-ups and consultations will help you stay on track towards achieving a normal BMI range.",
                                f_s: 12,
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
