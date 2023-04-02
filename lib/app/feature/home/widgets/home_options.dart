import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';
import 'package:walk_dog_app/routes/router.gr.dart';

class HomeOptionsWidget extends StatelessWidget {
  const HomeOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(DetailsScreen());
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
                          Utils.generateRandomImage(),
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
                            '4.1',
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
                    Text(
                      'Mason York',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        Text(
                          '7k from you',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          )),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 48,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.black,
                  ),
                  child: Text(
                    " \$5/hr",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10)),
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
