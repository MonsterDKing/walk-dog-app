import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:walk_dog_app/app/feature/home/domain/models/card_model.dart';

class HomeOptionsWidget extends StatelessWidget {
  const HomeOptionsWidget({
    super.key,
    required this.cards,
  });
  final CardModel cards;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.router.push(DetailsScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 20,
          top: 20,
        ),
        width: 180,
        height: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 179,
                height: 125,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.network(
                          cards.image,
                          fit: BoxFit.cover,
                          //add border radius
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 49,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7), color: Color.fromRGBO(229, 229, 234, 0.2)),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 203, 85, 1),
                            size: 10,
                          ),
                          //color #FFCB55
                          Text(
                            cards.rating.toString(),
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(255, 203, 85, 1), fontWeight: FontWeight.w600, fontSize: 10)),
                          )
                        ]),
                      ),
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: AutoSizeText(
                        cards.name,
                        maxLines: 1,
                        maxFontSize: 17,
                        minFontSize: 8,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        AutoSizeText(
                          cards.distance.toString(),
                          maxFontSize: 10,
                          maxLines: 1,
                          minFontSize: 7,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          )),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.black,
                  ),
                  child: AutoSizeText(
                    " \$ ${cards.priceXHour} /hr",
                    maxLines: 1,
                    minFontSize: 5,
                    maxFontSize: 10,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
