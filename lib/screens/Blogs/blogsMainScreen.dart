import 'package:bmical/screens/Blogs/ProviderClasses/providerClasses.dart';
import 'package:bmical/screens/Blogs/blogsScreens/blog01.dart';
import 'package:bmical/screens/Blogs/blogsScreens/blog06.dart';
import 'package:bmical/screens/Blogs/blogsScreens/blog07.dart';
import 'package:bmical/screens/Blogs/blogsScreens/blog08.dart';
import 'package:bmical/screens/Blogs/blogsScreens/blog09.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/ReusableWidgets/text.dart';
import 'blogsScreens/blog02.dart';
import 'blogsScreens/blog03.dart';
import 'blogsScreens/blog04.dart';
import 'blogsScreens/blog05.dart';
import 'blogsScreens/blog10.dart';

class blogsMainScreen extends StatefulWidget {
  const blogsMainScreen({super.key});

  @override
  State<blogsMainScreen> createState() => _blogsMainScreenState();
}

class _blogsMainScreenState extends State<blogsMainScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xff1B1B1B),
        appBar: AppBar(
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xffC4F649),)),
          toolbarHeight: height * 0.08,
          scrolledUnderElevation: 0,
          centerTitle: true,
          backgroundColor: const Color(0xff1B1B1B),
          title: text(
              data: 'Blogs',
              f_s: 28,
              f_sty: FontStyle.normal,
              col: const Color(0xffC4F649),
              f_wei: FontWeight.w700),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            //Blog#01
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> blog01()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height*0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              //color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog01.png'),
                                   fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data: 'Comprehensive Guide to BMI\nCalculation',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "Have you ever wondered if your weight\nis just a number, or ",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '50 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog01ProviderClass>(
                                  builder: (context,
                                      blog01ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog01ProviderClass.change01();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog01ProviderClass.check01==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#02
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const blog02()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog02.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),

                            ),
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'Lowering High BMI? Tips for a\nHealthier You!',
                                f_s: 11.55,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "A high BMI indicates excess weight for\nheight,often caused by",
                                f_s:9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '55 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                //Make this favourite and favourite..
                                Consumer<blog02ProviderClass>(
                                  builder: (context,
                                      blog02ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog02ProviderClass.change02();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog02ProviderClass.check02==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#03
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog03()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog03.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            )
                            ,
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'Interpreting Your BMI      ',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "BMI interpretation is like reading\nyour body's story in numbers.",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                text(
                                    data: '60 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                //Make this favourite and favourite..
                                Consumer<blog03ProviderClass>(
                                  builder: (context,
                                      blog03ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog03ProviderClass.change03();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog03ProviderClass.check03==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#04
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog04()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog04.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'BMI Fit: Your Health and\nFitness Navigator',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "In this app, we'll help you simply\nunderstand BMI. BMI is like a",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '60 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                //Make this favourite and favourite..
                                Consumer<blog04ProviderClass>(
                                  builder: (context,
                                      blog04ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog04ProviderClass.change04();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog04ProviderClass.check04==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#05
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog05()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.17,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog05.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'Diverse BMI Calculators',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "BMI calculators, simple and quick to\nuse, unveil the relationship between\nweight and height.",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '60 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width*0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog05ProviderClass>(
                                  builder: (context,
                                      blog05ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog05ProviderClass.change05();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog05ProviderClass.check05==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#06
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog06()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog06.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'Why Does BMI Matter for\nBodybuilders and Athletes?',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "Body Mass Index (BMI) is a common\nway to check if someone's weight",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '50 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog06ProviderClass>(
                                  builder: (context,
                                      blog06ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog06ProviderClass.change06();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog06ProviderClass.check06==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#07
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog07()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog07.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'Health Implications of BMI',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "BMI categorizes weight in relation to\nheight, indicating obesity levels.",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '50 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog07ProviderClass>(
                                  builder: (context,
                                      blog07ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog07ProviderClass.change07();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog07ProviderClass.check07==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#08
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog08()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog08.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    'Optimizing BMI for a\nHealthier Tomorrow:\nAdvantages and Strategies',
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "Explore the secrets of BMI optimization\nfor a brighter,",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '30 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog08ProviderClass>(
                                  builder: (context,
                                      blog08ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog08ProviderClass.change08();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog08ProviderClass.check08==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#09
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog09()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog09.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    "Navigating BMI: Do’s and\nDon'ts for a Healthy Body\nWeight",
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "Explore the right steps and common\npitfalls to avoid, ensuring a balanced",
                              f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500,),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '40 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog09ProviderClass>(
                                  builder: (context,
                                      blog09ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog09ProviderClass.change09();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog09ProviderClass.check09==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            //Blog#10
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const blog10()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.006, horizontal: width * 0.06),
                  child: Container(
                      height: height * 0.17,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/blog10.png',),
                                    fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(
                                data:
                                    "Good And Bad Foods For\nAchieving A Healthy BMI",
                                f_s: 12,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w700),
                            text(
                                data:
                                    "Maintaining a good Body Mass Index\n(BMI) is vital for staying healthy.",
                                f_s: 9,
                                f_sty: FontStyle.normal,
                                col: Colors.black,
                                f_wei: FontWeight.w500),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                text(
                                    data: '50 - Seconds read',
                                    f_s: 10,
                                    f_sty: FontStyle.normal,
                                    col: Colors.black,
                                    f_wei: FontWeight.w300),
                                SizedBox(
                                  width: width * 0.19,
                                ),
                                //Make this favourite and favourite..
                                Consumer<blog10ProviderClass>(
                                  builder: (context,
                                      blog10ProviderClass, child) {
                                    return InkWell(
                                      onTap: () {
                                        //Call the provider class_01 method for changing the icon when someone pressed on it.
                                        blog10ProviderClass.change10();
                                      },
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.06,
                                        //color: Colors.green,
                                        child: blog10ProviderClass.check10==false ? Icon(Icons.favorite_border) : Icon(Icons.favorite,color: Colors.red,),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))),
            ),
            SizedBox(
              height: height*0.05,
            ),
          ]),
        ));
  }
}
