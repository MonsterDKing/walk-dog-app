import 'package:flutter/material.dart';

const primaryColor = Color(0xFF3BDA8E);
const primaryColorDark = Color(0xFF00B4AB);
const primaryColorLight = Color.fromARGB(255, 140, 250, 197);
const accentColor = Color(0xFFFF9600);
// const accentColorDark = Color(0xFF029D1A);
// const secondaryColor = Color(0xFF064BC7);

const backgroundColor = Color(0xFFFAFAFA);
const borderColor = Color(0xFFE5E5E5);
const errorColor = Color(0xFFAF0101);
const redColor = Color(0xFFFC0000);
const darkBlueColor = Color(0xFF010E73);
const successColor = Color(0xFF00BF1D);
const neutralBlack2 = Color(0xFF534E71);
const neutralBlack3 = Color(0xFF242D37);

const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
