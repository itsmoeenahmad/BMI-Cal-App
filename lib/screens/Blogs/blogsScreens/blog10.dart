import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog10 extends StatefulWidget {
  const blog10({super.key});

  @override
  State<blog10> createState() => _blog10State();
}

class _blog10State extends State<blog10> {
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
                controller: _pageController,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(children: [
                      Container(
                        height: height * 0.135,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: text(
                              data:
                                  "Eating a balanced diet is a big part of getting and keeping a good BMI. Here's a guide on the foods to include in your diet and those to steer clear of for a healthy BMI.",
                              f_s: 13,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: height * 0.032,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: text(
                              data: 'Foods to Eat',
                              f_s: 15,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Fruits and Vegetables',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Low-calorie, high-fiber, and nutrient-rich.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Whole Grains',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Brown rice, quinoa, whole wheat, and oats for sustained energy.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Lean Proteins',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Skinless poultry, fish, legumes, tofu, and low-fat dairy for muscle health.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Healthy Fats',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Nuts, seeds, avocados, and olive oil for heart health.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Low-Fat Dairy or Alternatives',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Provide essential nutrients with less saturated fat.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Water',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Stay hydrated for metabolic function and a healthy BMI.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(children: [
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: text(
                              data: 'Foods to Avoid',
                              f_s: 15,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Sugary Beverages',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'High in empty calories, may lead to weight gain.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Processed Foods',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.025,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'High in unhealthy fats, sugars, and sodium.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Sweets, Desserts',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.025,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Opt for fresh fruits over high-sugar desserts.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' High-Fat, Fried Foods',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.025,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Contribute to weight gain and poor health.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),
                      Container(
                        height: height * 0.04,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              color: Color(0xffD9D9D9),
                              size: 6,
                            ),
                            text(
                                data: ' Excess Salt',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w700),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data:
                                    'Reduce intake to avoid water retention and weight gain.',
                                f_s: 13,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffD9D9D9),
                                f_wei: FontWeight.w500)),
                      ),

                      Container(
                        height: height*0.032,
                        width: double.infinity,
                        // color: Colors.white,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: text(
                              data: 'The Bottom Line',
                              f_s: 15,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
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
                              data:
                              "Achieving and maintaining a healthy BMI involves making conscious food choices. Prioritize whole, nutritious foods while reducing or eliminating processed and sugary options. ",
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
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
                              'Eat healthy and move your body regularly to maintain a good BMI. Talk to a healthcare expert for advice personalized for you.',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: const Color(0xffD9D9D9),
                              f_wei: FontWeight.w500),
                        ),
                      ),


                    ]),
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
