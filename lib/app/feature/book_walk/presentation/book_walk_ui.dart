import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/book_walk/presentation/book_walk_interactor.dart';
import 'package:walk_dog_app/core/common/constants/colors.dart';
import 'package:walk_dog_app/locale/locale.dart';

class BookWalkUI extends StatelessWidget {
  const BookWalkUI({Key? key, required this.interactor}) : super(key: key);
  final BookWalkInteractor interactor;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locale.bookWalkTitle!,
                  style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
                ),
                Text(
                  locale.bookWalkSubtitle!,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.grey)),
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  '1 / 10',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.grey)),
                ),
                const SizedBox(
                  height: 10,
                ),
                LinearProgressIndicator(
                  color: primaryColor,
                  backgroundColor: Colors.grey[200],
                  value: 0.3,
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  "Bad habits",
                  style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 22)),
                ),
                Expanded(
                  child: Container(
                    child: Text("xxx"),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: size.width * 0.9),
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: Container(
                  height: 58,
                  width: 305,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffFE904B),
                        Color(0xffFB724C),
                      ],
                      stops: [
                        0.0764,
                        0.9068,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Book Walk',
                      style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
