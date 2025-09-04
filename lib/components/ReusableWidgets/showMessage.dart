import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showMessage(context, String data, Color _col) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      data,
      style:  GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 14
      ),
    ),
    backgroundColor: _col,
  ));
}

