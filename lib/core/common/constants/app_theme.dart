import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  const AppTheme();

  static ThemeData configureAppTheme() {
    final _customTheme = ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
      scaffoldBackgroundColor: backgroundColor,
      inputDecorationTheme: _configureInputDecorationTheme(),
      fontFamily: "Lato-Font",
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    final _customTextTheme = _configureTextTheme(_customTheme);
    final _customAppBarTheme = _configureAppBarTheme(_customTextTheme);

    return _customAppBarTheme;
  }

  static ThemeData _configureAppBarTheme(ThemeData _customTextTheme) {
    return _customTextTheme.copyWith(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: darkBlueColor),
        titleTextStyle: _customTextTheme.textTheme.headline6,
      ),
    );
  }

  static ThemeData _configureTextTheme(ThemeData _customTheme) {
    return _customTheme.copyWith(
      textTheme: _customTheme.textTheme.copyWith(
        headline2: GoogleFonts.lato(
          textStyle: _customTheme.textTheme.headline2?.copyWith(
              fontWeight: FontWeight.w700, fontSize: 24, color: Colors.black),
        ),
        bodyText1: GoogleFonts.lato(
          textStyle: _customTheme.textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  static InputDecorationTheme _configureInputDecorationTheme() {
    return InputDecorationTheme(
      border: const OutlineInputBorder(),
      contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 13,
        // fontWeight: FontWeight.w400,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromRGBO(139, 135, 166, 1),
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: primaryColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      filled: true,
      fillColor: Colors.white,
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: errorColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      errorStyle: const TextStyle(color: errorColor, fontSize: 16),
    );
  }
}
