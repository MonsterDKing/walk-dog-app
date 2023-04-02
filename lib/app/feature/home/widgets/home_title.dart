import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/locale/locale.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.homeTitle!,
                style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
              ),
              Text(
                locale.homeSubtitle!,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.grey)),
              ),
            ],
          ),
          Container(
            width: 104,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFE904B), Color(0xFFFB724C)],
                )),
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'Book a walk',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 10)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
