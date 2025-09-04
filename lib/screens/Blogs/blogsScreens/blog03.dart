import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog03 extends StatefulWidget {
  const blog03({super.key});

  @override
  State<blog03> createState() => _blog03State();
}

class _blog03State extends State<blog03> {
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
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.1,
                          width: double.infinity,
                          //color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "It helps classify if you're in a healthy weight zone or need to make positive lifestyle changes. It's a roadmap to a healthier you!",
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.037,
                          width: double.infinity,
                          // color: Colors.white,
                          child:  Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI Categories',
                                f_s: 18,
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
                                data: '1. Underweight: BMI less than 18.5',
                                f_s: 13,
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
                                data: "Individuals in this category should focus on gaining weight through a balanced diet and exercise.",
                                f_s: 12,
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
                                data: '2. Normal Weight: BMI between 18.5 and 24.9',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: height*0.068,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Falling within this range typically indicates a healthy weight and a lower risk of health issues.",
                                f_s: 12,
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
                                data: '3. Overweight: BMI between 25 and 29.9',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.09,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "If your BMI is here, you should work on weight management through dietary changes and regular exercise.",
                                f_s: 12,
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
                                data: '4. Obese: BMI of 30 or greater',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          height: height*0.095,
                          width: double.infinity,
                         // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Being overweight makes you more likely to get heart problems and diabetes. Seeking professional guidance for weight management is essential.",
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w500),
                          ),
                        ),

                        Container(
                          height: height*0.036,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Ideal BMI: Striving for the Best?',
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
                            data: "An ideal BMI typically falls within the 'Normal Weight' category (18.5 - 24.9). Keeping your BMI in this range is linked to better health and lowers the chance of long-term illnesses.",
                              f_s: 13,
                            f_sty: FontStyle.normal,
                            col: Color(0xffD9D9D9),
                            f_wei: FontWeight.w500,
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
                          height: height*0.13,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: "Achieving an ideal BMI involves finding that perfect balance through a balanced diet and regular exercise. It's like giving your body the best chance to be healthy.",
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
                                data: 'Factors Affecting Your BMI',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),


                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Genetics',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),
                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Physical Activity',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),

                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Dietary Habits',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),

                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Metabolic Rate',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),

                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Age and Gender',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),


                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Health Conditions',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),


                        Container(
                          height: height*0.032,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.circle,size: 8,color: Color(0xffD9D9D9),),
                              text(
                                  data: ' Lifestyle Factors',
                                  f_s: 12,
                                  f_sty: FontStyle.normal,
                                  col: Color(0xffD9D9D9),
                                  f_wei: FontWeight.w500),
                            ],
                          ),
                        ),

                        Container(
                          //padding: EdgeInsets.only(top: height*0.001),
                          height: height*0.034,
                          width: double.infinity,
                          // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'BMI Check: Your Next Step',
                                f_s: 18,
                                f_sty: FontStyle.normal,
                                col: Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ),
                        ),

                        Container(
                          // padding: EdgeInsets.only(top: height*0.001),
                          height: height*0.25,
                          width: double.infinity,
                           // color: Colors.white,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: 'Understanding your BMI and its interpretation is crucial to a healthier you. Whether you aim to maintain an ideal BMI or work towards it,Your health is your wealth. Calculate your BMI instantly with our app and discover your category. Take charge of your health.',
                                f_s: 14,
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
              padding:  EdgeInsets.only(bottom: height*0.06),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 2,
                axisDirection: Axis.horizontal,
                effect:  const WormEffect(
                dotHeight: 5.0,
                dotWidth: 10.0,
                activeDotColor: Color(0xffC4F649),
                dotColor: Colors.grey,
                spacing: 5.0,
              ),
                onDotClicked: (index) {
                  _pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
