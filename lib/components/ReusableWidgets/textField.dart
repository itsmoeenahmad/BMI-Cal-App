import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textField extends StatelessWidget {
  TextEditingController controller;
  String text;
  TextInputType type;
  bool star;
  textField({super.key, required this.controller,required this.text,required this.type,required this.star});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xff494949),
      style: GoogleFonts.montserrat(
          fontSize: 15,
          color:  Colors.white,
          fontWeight: FontWeight.w600),
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        label: RichText(
      text: TextSpan(children: <TextSpan>[
          TextSpan(
          text: text,style: GoogleFonts.montserrat(
              fontSize: 14,
              color: const Color(0xff494949),
              fontWeight: FontWeight.w600),),
          TextSpan(
            text: star ==true ? "*" :  ' ',
            style: GoogleFonts.montserrat(
                fontSize: 14,
                color: const Color(0xffC4F649),
                fontWeight: FontWeight.w600),
          ),
          ]),
    ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        hintText: text,
        hintStyle: GoogleFonts.montserrat(
            fontSize: 14,
            color: const Color(0xff494949),
            fontWeight: FontWeight.w600),
        fillColor: const Color(0xff494949),
        focusColor: const Color(0xff494949),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Color(0xff494949)),
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Color(0xff494949)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Color(0xff494949)),
        ),
      ),
    );
  }
}

