import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/material.dart';

class blog08 extends StatefulWidget {
  const blog08({super.key});

  @override
  State<blog08> createState() => _blog08State();
}

class _blog08State extends State<blog08> {
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
              child: Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xffC4F649),)),
        ),
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xff1B1B1B),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Container(
                height: height*0.15,
                width: double.infinity,
                // color: Colors.white,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "healthier future. Discover the advantages of maintaining an ideal BMI and use effective strategies to lead a fulfilling, well-balanced life. Discover how a healthier BMI can positively impact your well-being and longevity.",
                      f_s: 13,
                      f_sty: FontStyle.normal,
                      col: Color(0xffD9D9D9),
                      f_wei: FontWeight.w500),
                ),
              ),

              Container(
                height: height*0.04,
                width: double.infinity,
                // color: Colors.white,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: 'Health Advantages of a Healthy BMI',
                      f_s: 15,
                      f_sty: FontStyle.normal,
                      col: Color(0xffD9D9D9),
                      f_wei: FontWeight.w700),
                ),
              ),
              Container(
                height: height*0.03,
                width: double.infinity,
                //color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Reduced Risk of Chronic Diseases.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Improved Cardiovascular Health.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Enhanced Mobility and Joint Health.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Better Mental Health.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Increased Lifespan.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Improved Immune Function.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Lower Risk of Sleep Disorders',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Enhanced Fertility and Reproductive Health.',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Enhanced Respiratory Function.',
                        f_s: 12,
                        f_sty: FontStyle.normal,
                        col: Color(0xffD9D9D9),
                        f_wei: FontWeight.w500),
                  ],
                ),
              ),


              Container(
                height: height*0.065,
                width: double.infinity,
                // color: Colors.white,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: 'Strategies to Attain and Sustain a Balanced BMI',
                      f_s: 15,
                      f_sty: FontStyle.normal,
                      col: Color(0xffD9D9D9),
                      f_wei: FontWeight.w700),
                ),
              ),

              Container(
                height: height*0.03,
                width: double.infinity,
                //color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.circle,size: 8,  color: Color(0xffD9D9D9),),
                    text(
                        data: ' Balanced Diet',
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
                child:Row(
                  children: [
                    Icon(Icons.circle,size: 8,  color: Color(0xffD9D9D9),),
                    text(
                        data: ' Regular Exercise',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Hydration',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Adequate Sleep',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Stress Management',
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
                child:Row(
                  children: [
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Regular Monitoring',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Consultation',
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
                    Icon(Icons.circle,size: 8,   color: Color(0xffD9D9D9),),
                    text(
                        data: ' Consistency and Patience',
                        f_s: 12,
                        f_sty: FontStyle.normal,
                        col: Color(0xffD9D9D9),
                        f_wei: FontWeight.w500),
                  ],
                ),
              ),









            ],
          ),
        ),
      ),
    );
  }
}
