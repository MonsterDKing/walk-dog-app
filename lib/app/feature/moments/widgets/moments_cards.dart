import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class MomentsCardsWidget extends StatelessWidget {
  const MomentsCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            Utils.generateRandomImage(),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Container(
            width: 55,
            height: 19,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(161, 161, 162, 0.4),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "1.2k",
                style:
                    GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              )
            ]),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 75,
          child: Container(
            width: 55,
            height: 19,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(161, 161, 162, 0.4),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.messenger_outline,
                color: Colors.white,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "70",
                style:
                    GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              )
            ]),
          ),
        )
      ],
    );
  }
}
