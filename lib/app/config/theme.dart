import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IKreditheme {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: Colors.white,
      toolbarTextStyle: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: Colors.black,
      ),
      headline2: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: Colors.black,
      ),
      headline3: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Colors.black,
      ),
      headline4: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.black,
      ),
      headline5: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: Colors.black,
      ),
      headline6: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
}
