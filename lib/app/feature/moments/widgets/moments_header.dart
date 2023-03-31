import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MomentsHeaderWidget extends StatelessWidget {
  const MomentsHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      width: size.width,
      child: Row(children: [
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient:
                  const LinearGradient(colors: [Color.fromRGBO(254, 144, 75, 1), Color.fromRGBO(251, 114, 76, 1)])),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              "+ Add a post",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 10)),
            ),
          ),
        ),
      ]),
    );
  }
}
