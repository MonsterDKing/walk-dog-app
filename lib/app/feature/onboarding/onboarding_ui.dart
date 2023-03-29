import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/assets/assets.dart';
import 'package:walk_dog_app/locale/locale.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_interactor.dart';

class OnboardingUI extends StatelessWidget {
  const OnboardingUI({super.key, required this.interactor});
  final OnboardingInteractor interactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.onboardingImage), fit: BoxFit.cover),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF202020), // #202020
                    Color.fromRGBO(32, 32, 32, 0.95), // rgba(32, 32, 32, 0.95)
                    Color.fromRGBO(32, 32, 32, 0.9), // rgba(32, 32, 32, 0.9)
                    Color.fromRGBO(60, 60, 60, 0.85), // rgba(60, 60, 60, 0.85)
                    Color.fromRGBO(255, 255, 255, 0), // rgba(255, 255, 255, 0)
                  ],
                  stops: [
                    0.0, // 0%
                    0.1566, // 15.66%
                    0.224, // 22.4%
                    0.3229, // 32.29%
                    1.0, // 100%
                  ],
                )),
              )),
          Text(
            locale.onboardingTitle!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          Text(locale.onboardingButton!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 22),
            width: 324,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFE904B),
                  Color(0xFFFB724C),
                ],
              ),
            ),
            child: MaterialButton(
              onPressed: () {
                // Acción a realizar cuando se presiona el botón
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(locale.joinOurCommunity!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: locale.alreadyAMember!,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13))),
              TextSpan(
                  text: locale.signInNow!,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    textStyle: const TextStyle(color: Color(0xFFFE904B), fontWeight: FontWeight.bold, fontSize: 13),
                  ))
            ]),
          )
        ],
      ),
    ));
  }
}

//  const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13)
