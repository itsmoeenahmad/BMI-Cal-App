import 'package:bmical/screens/History/ProviderClass/tapConditionProviderClass.dart';
import 'package:bubble_box/bubble_box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

import '../../components/ReusableWidgets/text.dart';

class historyScreen extends StatefulWidget {
  const historyScreen({super.key});

  @override
  State<historyScreen> createState() => _historyScreenState();
}

class _historyScreenState extends State<historyScreen> {
  //Firestore Reference

  final _firestoreRef = FirebaseFirestore.instance.collection('bmiResult');

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final _currentUserID = FirebaseAuth.instance.currentUser!.uid;

    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      // appBar: AppBar(
      //   toolbarHeight: height * 0.09,
      //   scrolledUnderElevation: 0,
      //   backgroundColor: const Color(0xff1E1E1E),
      //   automaticallyImplyLeading: false,
      //   title: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15),
      //     child: Container(
      //       height: height * 0.08,
      //       width: width * 0.2,
      //       child: Center(
      //         child: Image.asset(
      //           'assets/images/app_logo_green.png',
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.12,
            ),
            Center(
              child: text(
                  data: 'History',
                  f_s: 25,
                  f_sty: FontStyle.normal,
                  col: const Color(0xffC4F649),
                  f_wei: FontWeight.w800),
            ),
            SizedBox(
              height: height * 0.008,
            ),
            StreamBuilder(
                stream: _firestoreRef
                    .where('uid', isEqualTo: _currentUserID)
                    .snapshots(),
                builder: (context, snapshot) {
                  final bmiResultsData = snapshot.data?.docs;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding:  EdgeInsets.only(top: height*0.3),
                      child: Center(
                        child: LoadingAnimationWidget.fourRotatingDots(
                            color: Color(0xffC4F649), size: 40),
                      ),
                    );
                  }
                  else if (snapshot.hasError) {
                    return Center(
                        child: text(
                            data: 'Error Occurred',
                            f_s: 20,
                            f_sty: FontStyle.normal,
                            col: Colors.white,
                            f_wei: FontWeight.w700));
                  }
                  else if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: bmiResultsData?.length,
                      itemBuilder: (context, index) {
                        dynamic data = bmiResultsData?[index];
                        dynamic bmiDate = data['date'];
                        dynamic bmiIs = data['bmiresult'];
                        return  Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04),
                              child: Column(
                                children: [
                                  Consumer<tapConditionProviderClass>(
                                    builder: (context, providerClass, child) {
                                      bool isExpanded =
                                          providerClass.getCheck(index);
                                      return Row(
                                        children: [
                                          Container(
                                            height: height * 0.09,
                                            width: width * 0.09,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffC4F649),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.calendar_month,
                                                size: 25,
                                                color: Color(0xff1C1B1F),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.02,
                                          ),
                                          text(
                                              data: '${bmiDate}',
                                              f_s: 12,
                                              f_sty: FontStyle.normal,
                                              col: Colors.white,
                                              f_wei: FontWeight.w700),
                                          SizedBox(
                                            width: width * 0.04,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              providerClass.change(
                                                  index, !isExpanded);
                                            },
                                            child: !isExpanded
                                                ? BubbleBox(
                                                    backgroundColor:
                                                        Color(0xff272727),
                                                    maxHeight: height * 0.1,
                                                    maxWidth: width * 0.58,
                                                    shape: BubbleShapeBorder(
                                                        border: BubbleBoxBorder(
                                                            color: Colors
                                                                .transparent),
                                                        direction:
                                                            BubbleDirection
                                                                .left,
                                                        position: const BubblePosition
                                                            .start(10)),
                                                    shadowColor: Colors.white,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        text(
                                                            data:
                                                                'Your BMI is ',
                                                            f_s: 12,
                                                            f_sty: FontStyle
                                                                .normal,
                                                            col: Colors.white,
                                                            f_wei: FontWeight
                                                                .w700),
                                                        text(
                                                            data:
                                                                '${bmiIs} kg/m²',
                                                            f_s: 14,
                                                            f_sty: FontStyle
                                                                .normal,
                                                            col: const Color(
                                                                0xffC4F649),
                                                            f_wei:
                                                                FontWeight.w900)
                                                      ],
                                                    ),
                                                  )
                                                : Container(
                                                    height: height * 0.165,
                                                    width: width * 0.6,
                                                    //color: Colors.white,
                                                    child: BubbleBox(
                                                      backgroundColor:
                                                          Color(0xff272727),
                                                      maxHeight: height * 0.1,
                                                      maxWidth: width * 0.5,
                                                      shape: BubbleShapeBorder(
                                                          border: BubbleBoxBorder(
                                                              color: Colors
                                                                  .transparent),
                                                          direction:
                                                              BubbleDirection
                                                                  .left,
                                                          position:
                                                              BubblePosition
                                                                  .start(10)),
                                                      shadowColor: Colors.white,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              text(
                                                                  data:
                                                                      'Your BMI is ',
                                                                  f_s: 13,
                                                                  f_sty: FontStyle
                                                                      .normal,
                                                                  col: Colors
                                                                      .white,
                                                                  f_wei:
                                                                      FontWeight
                                                                          .w700),
                                                              text(
                                                                  data:
                                                                      '19.9 kg/m²',
                                                                  f_s: 16,
                                                                  f_sty: FontStyle
                                                                      .normal,
                                                                  col: Color(
                                                                      0xffC4F649),
                                                                  f_wei:
                                                                      FontWeight
                                                                          .w900)
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                height * 0.005,
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              //color: Colors.red,
                                                              height:
                                                                  height * 0.08,
                                                              width:
                                                                  width * 0.48,
                                                              child: text(
                                                                  data:
                                                                      'A BMI of 18.5 - 24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems.',
                                                                  f_s: 9,
                                                                  f_sty: FontStyle
                                                                      .normal,
                                                                  col: Colors
                                                                      .white,
                                                                  f_wei:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            if (index < bmiResultsData!.length - 1)
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.08),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: width * 0.005,
                                      height: height * 0.02, //Reduce the height of the Vertical Line
                                      color: const Color(0xff494949),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        );
                      },
                    );
                  }
                  else if (bmiResultsData!.length == 0) {
                    return Center(
                      child: text(
                          data: 'Nothing Saved',
                          f_s: 20,
                          f_sty: FontStyle.normal,
                          col: Colors.white,
                          f_wei: FontWeight.w800),
                    );
                  }
                  else
                    {
                      return Text('');
                    }
                })
          ],
        ),
      ),
    );
  }
}
