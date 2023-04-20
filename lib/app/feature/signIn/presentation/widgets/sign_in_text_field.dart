import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInTextFieldWidget extends StatelessWidget {
  const SignInTextFieldWidget({super.key, required this.label, this.isPassword = false, this.isPhone = false});
  final String label;
  final bool isPassword;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      child: TextField(
        //only number
        keyboardType: isPhone ? TextInputType.number : TextInputType.text,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(240, 240, 240, 1), width: 1.0),
            borderRadius: BorderRadius.circular(14),
          ),
          labelText: label,
          labelStyle: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromRGBO(174, 174, 178, 1))),
          fillColor: const Color.fromRGBO(240, 240, 240, 1),
          filled: true,
        ),
      ),
    );
  }
}
