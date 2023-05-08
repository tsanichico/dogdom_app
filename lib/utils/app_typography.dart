import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static TextStyle Heading1 = GoogleFonts.montserrat(
    fontSize: 56,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading2 = GoogleFonts.montserrat(
    fontSize: 40,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading4 = GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700
  );
  static TextStyle Heading5 = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w700
  );
  static TextStyle heading6 = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600
  );
  static TextStyle body1 = GoogleFonts.montserrat(
    fontSize: 20,
  );
  static TextStyle Body2 = GoogleFonts.montserrat(
    fontSize: 18,
  );
  static TextStyle Body3 = GoogleFonts.montserrat(
    fontSize: 16,
  );
  static TextStyle Body4 = GoogleFonts.montserrat(
    fontSize: 14,
  );
  static TextStyle Body5 = GoogleFonts.montserrat(
    fontSize: 12,
  );
  static TextStyle Body6 = GoogleFonts.montserrat(
    fontSize: 10,
  );
}