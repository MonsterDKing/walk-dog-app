import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSearchLocationWidget extends StatelessWidget {
  const HomeSearchLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 43,
        child: TextField(
          decoration: InputDecoration(
            //icon
            prefixIcon: const Icon(
              Icons.location_on_outlined,
            ),
            //leading icon
            suffixIcon: const Icon(
              Icons.settings,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color.fromRGBO(240, 240, 240, 1), width: 1.0),
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color.fromRGBO(240, 240, 240, 1), width: 1.0),
              borderRadius: BorderRadius.circular(14),
            ),
            labelText: "My location",
            labelStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromRGBO(174, 174, 178, 1))),
            fillColor: const Color.fromRGBO(240, 240, 240, 1),
            filled: true,
          ),
        ));
  }
}
