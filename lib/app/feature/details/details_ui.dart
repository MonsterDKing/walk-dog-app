import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/details/details_interactor.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class DetailsUI extends StatelessWidget {
  const DetailsUI({super.key, required this.interactor});
  final DetailsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Image.network(
            Utils.generateRandomImage(),
            height: 600,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            top: 400,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Text("Alex Murray",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        )),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("5 /hr"),
                          VerticalDivider(
                            width: 10,
                            thickness: 2,
                            color: Colors.black,
                          ),
                          Text("10 km "),
                          VerticalDivider(
                            width: 10,
                            thickness: 2,
                            color: Colors.black,
                          ),
                          Text("4.4 "),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          VerticalDivider(
                            width: 10,
                            thickness: 2,
                            color: Colors.black,
                          ),
                          Text("450 walks")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 2,
                    )
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}
