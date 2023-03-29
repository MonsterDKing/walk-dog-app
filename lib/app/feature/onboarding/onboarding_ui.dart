import 'package:flutter/gestures.dart';
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
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(color: Colors.black),
          ),
          Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.onboardingImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.15, 0.2, 0.3, 1.0],
                )),
              )),
          Positioned.fill(
            top: size.height * 0.35,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                locale.onboardingTitle!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: size.height * 0.45,
            child: Align(
              alignment: Alignment.center,
              child: Text(locale.onboardingButton!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  )),
            ),
          ),
          Positioned(
            top: size.height * 0.75,
            left: size.width * 0.5 - 162,
            child: Container(
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
                  interactor.signIn();
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
          ),
          Positioned.fill(
            bottom: size.height * 0.1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "${locale.alreadyAMember!}  ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13))),
                  TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () => interactor.signIn(),
                      text: locale.signInNow!,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        textStyle: const TextStyle(color: Color(0xFFFE904B), fontWeight: FontWeight.bold, fontSize: 13),
                      ))
                ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
