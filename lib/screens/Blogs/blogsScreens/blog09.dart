import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class blog09 extends StatefulWidget {
  const blog09({super.key});

  @override
  State<blog09> createState() => _blog09State();
}

class _blog09State extends State<blog09> {
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
              child: Icon(
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
                      height: height * 0.1,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: text(
                            data:
                                "approach toward achieving and maintaining a healthy body weight. Gain valuable insights for a healthier, happier you.",
                            f_s: 13,
                            f_sty: FontStyle.normal,
                            col: Color(0xffD9D9D9),
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
                            data: 'The Do’s',
                            f_s: 15,
                            f_sty: FontStyle.normal,
                            col: Color(0xffD9D9D9),
                            f_wei: FontWeight.w700),
                      ),
                    ),
                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          text(
                              data: '1. ',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: 'Know Your BMI',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.08,
                      width: double.infinity,
                      // color: Colors.white,
                      child: text(
                          data:
                              'Encourage readers to calculate their BMI to understand where they fall on the BMI scale.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),
                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          text(
                              data: '2. ',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: 'Consult a Healthcare Professional',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: double.infinity,
                      // color: Colors.white,
                      child: text(
                          data:
                              'Recommend consulting a healthcare provider to interpret BMI results and receive personalized advice.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),
                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          text(
                              data: '3. ',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: 'Maintain a Healthy Lifestyle',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.065,
                      width: double.infinity,
                      // color: Colors.white,
                      child: text(
                          data:
                              'Remember that eating healthy foods and staying active are key to reaching a good BMI.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),
                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          text(
                              data: '4. ',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: 'Monitor Changes',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.092,
                      width: double.infinity,
                      // color: Colors.white,
                      child: text(
                          data:
                              'Encourage regular monitoring of BMI and adjusting lifestyle as needed to maintain a healthy range.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),

                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: text(
                            data: 'The Dont’s',
                            f_s: 15,
                            f_sty: FontStyle.normal,
                            col: Color(0xffD9D9D9),
                            f_wei: FontWeight.w700),
                      ),
                    ),

                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          text(
                              data: '1. ',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: "Don't Rely Solely on BMI:",
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: double.infinity,
                       // color: Colors.white,
                      child: text(
                          data:
                              'Caution against using BMI as the only indicator of health, advocating for a holistic health approach.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),


                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(children: [

                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                        children: [
                          text(
                              data: '2. ',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: "Don't Obsess Over Numbers:",
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: double.infinity,
                      // color: Colors.yellow,
                      child: text(
                          data:
                          'Warn against becoming overly fixated on achieving a specific BMI, promoting a focus on overall health instead.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),

                    Container(
                      height: height * 0.032,
                      width: double.infinity,
                      // color: Colors.white,
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          text(
                              data: '3.',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                          text(
                              data: 'Avoid Crash Diets:',
                              f_s: 14,
                              f_sty: FontStyle.normal,
                              col: Color(0xffD9D9D9),
                              f_wei: FontWeight.w700),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.1,
                      width: double.infinity,
                      // color: Colors.white,
                      child: text(
                          data:
                              'Avoid extreme diets or rapid weight loss methods, which can adversely affect health and BMI.',
                          f_s: 13,
                          f_sty: FontStyle.normal,
                          col: Color(0xffD9D9D9),
                          f_wei: FontWeight.w500),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.08),
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
      )),
    );
  }
}
