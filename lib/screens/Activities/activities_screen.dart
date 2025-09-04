import 'package:bmical/screens/Blogs/blogsMainScreen.dart';
import 'package:bmical/screens/Profile/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import '../../components/GoogleAuth/signOutWithGoogle.dart';
import '../../components/ReusableWidgets/text.dart';
import '../BmiCalculation/ProviderClasses/BMICalculatorProvider.dart';
import '../BmiCalculation/ProviderClasses/savedProviderClass.dart';
import '../BmiCalculation/bmiResultScreen.dart';
import '../History/historyScreen.dart';
import 'ProviderClasses/Feet & CentiMeter Class/feetProviderClass.dart';
import 'ProviderClasses/Feet & CentiMeter Class/centiMeterProviderClass.dart';
import 'ProviderClasses/Weight & Age Class/ageProviderClass.dart';
import 'ProviderClasses/Weight & Age Class/weightProviderClass.dart';
import 'ProviderClasses/genderProviderClass.dart';
import 'ProviderClasses/poundProviderClass.dart';
import 'ProviderClasses/radioProviderClass.dart';

class activites_screen extends StatefulWidget {
  const activites_screen({super.key});

  @override
  State<activites_screen> createState() => _activites_screenState();
}

class _activites_screenState extends State<activites_screen> {
  //Variables which store the data in this file...

  String gender = 'female';
  String weightType = 'KG';
  int selectedFeet = 6;
  double selectedCentiMeter = 5;
  double selectedInches = 40;
  double selectedWeight = 60;
  int selectedAge = 18;
  bool isSelectedWeight = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Replacing the save icon.

    Future.delayed(Duration(seconds: 5),(){
      if(mounted){
        Provider.of<savedProvideClass>(context,listen: false).change(false);
      }
    });


  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.007,
            ),

            //Appbar Code
            Container(
              height: height*0.12,
              width: double.infinity,
              // color: Colors.yellow,
              child: Center(
                child: AppBar(
                  automaticallyImplyLeading: false,
                  scrolledUnderElevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: height*0.1,
                          width: width*0.2,
                         // color: Colors.white,
                          child: Image.asset('assets/images/app_logo_green.png'),
                        ),
                      ),
                      PopupMenuButton<int>(
                        offset: const Offset(0, 50),
                        shadowColor: Colors.white.withOpacity(0.1),
                        color: const Color(0xff272727),
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const blogsMainScreen()),
                                );
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.menu_book,
                                    color: Color(0xffC4F649),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  text(
                                    data: 'Blogs',
                                    f_s: 15,
                                    f_sty: FontStyle.normal,
                                    col: Colors.white,
                                    f_wei: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 1,
                            child: InkWell(
                              onTap: () {
                                signOutWithGoogle(context);
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.logout,
                                    color: Color(0xffC4F649),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  text(
                                    data: 'Logout',
                                    f_s: 15,
                                    f_sty: FontStyle.normal,
                                    col: Colors.white,
                                    f_wei: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        onSelected: (value) {
                          // Handle the selected value here
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),


            SizedBox(
              height: height * 0.06,
            ),

            //Another Screen Code
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [

                  //Lady Box Code

                  Container(
                    height: height * 0.18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff494949),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.04),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              text(
                                data:
                                    'Know Your Body Mass\n& keep on track.',
                                f_s: 14,
                                f_sty: FontStyle.normal,
                                col: const Color(0xffC4F649),
                                f_wei: FontWeight.w700,
                              ),
                              text(
                                data:
                                    "Calculate your BMI to see if you're\nat a healthy weight for your height.",
                                f_s: 10,
                                f_sty: FontStyle.normal,
                                col: Colors.white,
                                f_wei: FontWeight.w600,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const blogsMainScreen()));
                                },
                                child: Container(
                                  height: height * 0.025,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      //color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.white)),
                                  child: Center(
                                    child: text(
                                      data: 'Explore More',
                                      f_s: 9,
                                      f_sty: FontStyle.normal,
                                      col: Colors.white,
                                      f_wei: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: height * 0.24,
                              width: width * 0.17,
                              decoration: BoxDecoration(
                                //color: Colors.green,
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/lady.png'),
                                ),
                                borderRadius: BorderRadius.circular(8),
                                //color: Colors.red
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),

                  //Male & Female Selection Code

                  Consumer<genderProviderClass>(
                    builder: (context, providerClass, child) {
                      print(providerClass.selectedValue);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              providerClass.change();
                              gender = 'male';
                            },
                            child: Container(
                              height: height * 0.11,
                              width: width * 0.37,
                              decoration: BoxDecoration(
                                  color: providerClass.selectedValue == false
                                      ? const Color(0xff494949)
                                      : const Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(9)),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Men Avatar.png',
                                  fit: BoxFit.fill,
                                  color: Colors.black,
                                  height: height * 0.1,
                                  width: width * 0.177,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              providerClass.change();
                              gender = 'female';
                            },
                            child: Container(
                              height: height * 0.11,
                              width: width * 0.37,
                              decoration: BoxDecoration(
                                  color: providerClass.selectedValue == true
                                      ? const Color(0xff494949)
                                      : const Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(9)),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Women Avatar.png',
                                  fit: BoxFit.fill,
                                  height: height * 0.1,
                                  width: width * 0.18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.03,
                        width: width * 0.37,
                        decoration: BoxDecoration(
                            //color: Colors.grey,
                            borderRadius: BorderRadius.circular(9)),
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.13),
                          child: text(
                            data: 'Male',
                            f_s: 15,
                            f_sty: FontStyle.normal,
                            col: Colors.white,
                            f_wei: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.03,
                        width: width * 0.37,
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(9)),
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.13),
                          child: text(
                            data: 'Female',
                            f_s: 15,
                            f_sty: FontStyle.normal,
                            col: Colors.white,
                            f_wei: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),

                  //Selection Of KG or LB
                  Consumer<radioProviderClass>(
                    builder: (context, providerClass, child) {
                      print(providerClass.selectedValue);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio<int>(
                            value: 1,
                            groupValue: providerClass.selectedValue,
                            activeColor: const Color(0xffC4F649),
                            onChanged: (newvalue) {
                              providerClass.changeValue(newvalue!);
                              weightType = 'KG';
                              isSelectedWeight = true;
                            },
                          ),
                          text(
                            data: 'KG',
                            f_s: 13,
                            f_sty: FontStyle.normal,
                            col: Colors.white,
                            f_wei: FontWeight.w700,
                          ),
                          Radio<int>(
                            value: 2,
                            groupValue: providerClass.selectedValue,
                            activeColor: const Color(0xffC4F649),
                            onChanged: (newvalue) {
                              providerClass.changeValue(newvalue!);
                              weightType = 'LB';
                              isSelectedWeight = false;
                            },
                          ),
                          text(
                            data: 'LB',
                            f_s: 13,
                            f_sty: FontStyle.normal,
                            col: Colors.white,
                            f_wei: FontWeight.w700,
                          ),
                        ],
                      );
                    },
                  ),

                  ////Selection of Feet & CentiMeter or pound

                  Consumer<radioProviderClass>(
                    builder:
                        (BuildContext context, ProviderClass, Widget? child) {
                      print(ProviderClass.selectedValue);
                      return Container(
                        height: height * 0.18,
                        width: double.infinity,
                        child: ProviderClass.selectedValue == 1
                            ? Container(
                                height: height * 0.18,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color(0xff494949),
                                    //color: Colors.green,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(0, 0),
                                          blurRadius: 1,
                                          spreadRadius: 0
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(7)),
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.18,
                                      width: width * 0.39,
                                      // color: Colors.lightGreen,
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          text(
                                              data: '   (Feet)',
                                              f_s: 10,
                                              f_sty: FontStyle.normal,
                                              col: const Color(0xffC4F649),
                                              f_wei: FontWeight.w500),
                                          Container(
                                            height: height * 0.14,
                                            width: width * 0.5,
                                            // color: Colors.white,
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.only(
                                                        left: 5),
                                                child: Consumer<
                                                    feetProviderClass>(
                                                  builder:
                                                      (BuildContext context,
                                                          ProviderClass,
                                                          child) {
                                                    print(ProviderClass
                                                        .selectedFeet);
                                                    return Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          height:
                                                              height * 0.3,
                                                          width: width * 0.3,
                                                          padding: EdgeInsets.only(top: 0),
                                                          // color: Colors.white,
                                                          child: NumberPicker(
                                                            minValue: 1,
                                                            maxValue: 8,
                                                            value: ProviderClass.selectedFeet,
                                                            itemCount: 3,
                                                            itemHeight: 35,
                                                            itemWidth: 60,
                                                            onChanged:
                                                                (newValue) {
                                                              ProviderClass
                                                                  .changeFeet(
                                                                      newValue);
                                                              selectedFeet =
                                                                  ProviderClass
                                                                      .selectedFeet;
                                                            },
                                                            selectedTextStyle:
                                                                const TextStyle(
                                                                    color: Color(0xffD9D9D9),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontSize:
                                                                        25),
                                                            textStyle: const TextStyle(
                                                                color: Color(0xffD9D9D9),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const VerticalDivider(
                                      color: Color(0xff5C5C5C),
                                      width: 0,
                                      thickness: 1,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: height * 0.18,
                                        width: width * 0.38,
                                        // color: Colors.lightGreen,
                                        padding: const EdgeInsets.only(
                                            right: 7, top: 3.5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            text(
                                                data: '(Centimeter)',
                                                f_s: 10,
                                                f_sty: FontStyle.normal,
                                                col: const Color(0xffC4F649),
                                                f_wei: FontWeight.w500),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Consumer<
                                                  centiMeterProviderClass>(
                                                builder: (BuildContext context,
                                                    ProviderClass, child) {
                                                  print(ProviderClass
                                                      .selectedcentiMeter);
                                                  return Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: height * 0.15,
                                                        width: width * 0.3,
                                                        //color: Colors.white,
                                                        child: Center(
                                                          child: NumberPicker(
                                                            minValue: 0,
                                                            maxValue: 100,
                                                            value: ProviderClass
                                                                .selectedcentiMeter,
                                                            itemCount: 3,
                                                            itemHeight: 35,
                                                            itemWidth: 60,
                                                            onChanged:
                                                                (newValue) {
                                                              ProviderClass
                                                                  .changesCentiMeter(
                                                                      newValue);
                                                              selectedCentiMeter =
                                                                  ProviderClass
                                                                      .selectedcentiMeter
                                                                      .toDouble();
                                                            },
                                                            selectedTextStyle:
                                                                const TextStyle(
                                                                    color: Color(0xffD9D9D9),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontSize:
                                                                        25),
                                                            textStyle: const TextStyle(
                                                                color: Color(0xffD9D9D9),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                height: height * 0.1,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color(0xff494949),
                                    //color: Colors.white,
                                    // gradient: LinearGradient(colors: [
                                    //   Color(0xff000000),
                                    //   Color(0xff666666)
                                    // ]),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(0, 0),
                                          blurRadius: 1,
                                          spreadRadius: 0
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(7)),
                                padding:
                                    const EdgeInsets.only(left: 5, top: 5),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text(
                                          data: '   (Height in Inches)',
                                          f_s: 10,
                                          f_sty: FontStyle.normal,
                                          col: const Color(0xffC4F649),
                                          f_wei: FontWeight.w500),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5),
                                        child: Consumer<InchesProviderClass>(
                                          builder: (BuildContext context,
                                              ProviderClass, child) {
                                            print(
                                                ProviderClass.selectedInches);
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: height * 0.16,
                                                  width: width * 0.3,
                                                  // color: Colors.white,
                                                  child: Center(
                                                    child: NumberPicker(
                                                      minValue: 2,
                                                      maxValue: 200,
                                                      itemHeight: 38,
                                                      itemWidth: 50,
                                                      value: ProviderClass
                                                          .selectedInches,
                                                      itemCount: 3,
                                                      onChanged: (newValue) {
                                                        ProviderClass
                                                            .changeInches(
                                                                newValue);
                                                        selectedInches =
                                                            ProviderClass
                                                                .selectedInches
                                                                .toDouble();
                                                      },
                                                      selectedTextStyle:
                                                          const TextStyle(
                                                              color: Color(0xffD9D9D9),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              fontSize: 20),
                                                      textStyle:
                                                          const TextStyle(
                                                              color: Color(0xffD9D9D9),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                              fontSize: 17),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.006,
                  ),

                  //Selection of weight and age
                  Container(
                    height: height * 0.16,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.16,
                          width: width * 0.385,
                          padding: EdgeInsets.only(left: width*0.02),
                          decoration: BoxDecoration(
                            //color: Colors.yellow,
                            color: const Color(0xff494949),
                            // gradient: LinearGradient(
                            //   colors: [
                            //     Color(0xff1B1B1B),
                            //     Color(0xff494949)
                            //   ]
                            // ),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 0),
                                    blurRadius: 1,
                                    spreadRadius: 0
                                )
                              ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Consumer<radioProviderClass>(
                                    builder: (context, ProviderClass, index){
                                      return Container(
                                        height: 15,
                                        width: 55,
                                        //alignment: Alignment.topLeft,
                                        padding: ProviderClass.selectedValue == 2 ? EdgeInsets.only(left: width*0.007) : EdgeInsets.only(left: width*0.038),
                                        //color: Colors.white,
                                        child: text(data: ProviderClass.selectedValue == 2 ? '(POUND)' : '(KG)', f_s: 10, f_sty: FontStyle.normal, col: Color(0xffBBCF88), f_wei: FontWeight.w700
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.08,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC4F649),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                        child: Image(
                                      image: const AssetImage(
                                          'assets/icons/weight icon.png'),
                                      height: height * 0.05,
                                      width: width * 0.05,
                                    )),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  text(
                                      data:
                                      'Weight',
                                      f_s: 13,
                                      f_sty: FontStyle.normal,
                                      col: Colors.white,
                                      f_wei: FontWeight.w700),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.08,
                              ),
                              Consumer<weightProviderClass>(
                                builder: (context, ProviderClass, child) {
                                  print(ProviderClass.selectedWeight);
                                  return Container(
                                    // alignment: Alignment.topCenter,
                                    height: height * 0.12,
                                    width: width * 0.1,
                                    //color: Colors.white,
                                    child: NumberPicker(
                                      minValue: 35,
                                      maxValue: 200,
                                      itemHeight: 32,
                                      itemWidth: 35,
                                      value: ProviderClass.selectedWeight,
                                      onChanged: (newValue) {
                                        ProviderClass.changeWeight(newValue);
                                        selectedWeight = ProviderClass
                                            .selectedWeight
                                            .toDouble();
                                      },
                                      selectedTextStyle: const TextStyle(
                                          color: Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18),
                                      textStyle: const TextStyle(
                                          color: Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Expanded(
                          child: Container(
                            height: height * 0.16,
                            width: width * 0.385,
                            padding: EdgeInsets.only(left: width*0.02),
                            decoration: BoxDecoration(
                              color: const Color(0xff494949),
                              //color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 0),
                                    blurRadius: 1,
                                    spreadRadius: 0
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: height * 0.005,
                                    ),
                                    Container(
                                      height: 15,
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    Container(
                                      height: height * 0.04,
                                      width: width * 0.08,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffC4F649),
                                          borderRadius:
                                          BorderRadius.circular(40)),
                                      child: Center(
                                          child: Image(
                                            image: const AssetImage(
                                                'assets/icons/age icon.png'),
                                            height: height * 0.05,
                                            width: width * 0.05,
                                          )),
                                    ),

                                    SizedBox(
                                      height: height * 0.01
                                    ),
                                    text(
                                        data: 'Age',
                                        f_s: 13,
                                        f_sty: FontStyle.normal,
                                        col: Colors.white,
                                        f_wei: FontWeight.w700)
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.08,
                                ),
                                Consumer<ageProviderClass>(
                                  builder: (BuildContext context, ProviderClass,
                                      child) {
                                    print(ProviderClass.selectedAge);
                                    return Container(
                                      height: height * 0.12,
                                      width: width * 0.15,
                                      //color: Colors.white,
                                      child: Center(
                                        child: NumberPicker(
                                          minValue: 15,
                                          maxValue: 100,
                                          itemHeight: 32,
                                          itemWidth: 35,
                                          value: ProviderClass.selectedAge,
                                          onChanged: (newValue) {
                                            ProviderClass.changeAge(newValue);
                                            selectedAge =
                                                ProviderClass.selectedAge;
                                          },
                                          selectedTextStyle: const TextStyle(
                                              color: Color(0xffD9D9D9),
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18),
                                          textStyle: const TextStyle(
                                              color: Color(0xffD9D9D9),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),

                  //Calculate button
                  Consumer<BMICalculatorProvider>(
                    builder: (context, ProviderClass, child) {
                      return InkWell(
                        onTap: () {
                          print("Gender is ${gender}");
                          print('WeightType is ${weightType}');
                          print('Selected Feet is ${selectedFeet}');
                          print(
                              'Selected Centimeter is ${selectedCentiMeter}');
                          print('Selected Inches is ${selectedInches}');
                          print(
                              'Selected Weight In KG/LB is ${selectedWeight}');
                          print('Selected Age is ${selectedAge}');
                          print('SelectedBoolWeight is ${isSelectedWeight}');

                          //Accessing the BMICALCULATORPROVIDER CLASS For Calculating the BMI

                          ProviderClass.setHeight(
                              selectedFeet, selectedCentiMeter);
                          ProviderClass.setHeightInInches(selectedInches);
                          ProviderClass.setWeightInKg(selectedWeight);
                          ProviderClass.setWeightInPounds(selectedWeight);
                          ProviderClass.calculateBMI(isSelectedWeight);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const bmiResultScreen()));
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.75,
                          decoration: BoxDecoration(
                              color: const Color(0xffC4F649),
                              borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                              color:  Color(0xff000000)
                            )
                          ]
                          ),
                          child: Center(
                            child: text(
                                data: 'Calculate',
                                f_s: 17,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w600),
                          ),
                        ),
                      );
                    },
                  ),

                  SizedBox(
                    height: height * 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
