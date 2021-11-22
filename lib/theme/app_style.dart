import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppStyle {
  static TextStyle header = GoogleFonts.oxanium()
      .copyWith(fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle cardText = GoogleFonts.oxanium()
      .copyWith(fontWeight: FontWeight.w700, color: Pallete.dullGrey);
  static TextStyle buttonText = GoogleFonts.oxanium()
      .copyWith(fontWeight: FontWeight.w700, color: Colors.white);

  static TextStyle boldHeader = GoogleFonts.oxanium()
      .copyWith(fontWeight: FontWeight.w700, color: Colors.white);

  static TextStyle fadeText = GoogleFonts.oxanium().copyWith(
      fontWeight: FontWeight.w600, color: Pallete.dullGrey.withOpacity(0.4));

  static TextStyle logoTextStyle = GoogleFonts.archivoBlack().copyWith(
    fontSize: 27,
    fontWeight: FontWeight.w400,
  );
}
