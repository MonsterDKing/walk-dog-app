import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/locale/locale.dart';

class HomeSubTitle extends StatelessWidget {
  const HomeSubTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 34,
          )),
        ),
        Text(locale.viewAll!,
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 15, decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}
