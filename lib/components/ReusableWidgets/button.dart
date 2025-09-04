import 'package:bmical/components/ReusableWidgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  String textData;
  button({super.key,required this.textData});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.06,
      width: width * 0.45,
      decoration: BoxDecoration(
          color: Color(0xffC4F649),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: text(
            data: textData,
            f_s: 18,
            f_sty: FontStyle.normal,
            col: Colors.black,
            f_wei: FontWeight.w800),
      ),
    );
  }
}
