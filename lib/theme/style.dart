import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  textTheme: const TextTheme(),
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
