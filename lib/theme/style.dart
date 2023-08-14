import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme = ThemeData(
  textTheme: TextTheme(
    titleLarge: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        textStyle: TextStyle(color: const Color(0xFFFE904B), fontWeight: FontWeight.bold, fontSize: 24.sp)),
    titleMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        textStyle: TextStyle(color: const Color(0xFFFE904B), fontWeight: FontWeight.bold, fontSize: 16.sp)),
    bodyMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        textStyle: TextStyle(color: const Color(0xFFFE904B), fontWeight: FontWeight.bold, fontSize: 16.sp)),
    bodySmall: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        textStyle: TextStyle(color: const Color(0xFFFE904B), fontWeight: FontWeight.bold, fontSize: 13.sp)),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemStatusBarContrastEnforced: true),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    selectedLabelStyle:
        GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Colors.black)),
    unselectedItemColor: const Color.fromRGBO(174, 174, 178, 1),
    showUnselectedLabels: true,
    unselectedLabelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(
              174,
              174,
              178,
              1,
            ))),
  ),
);
