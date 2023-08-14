import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/assets/assets.dart';
import 'package:walk_dog_app/locale/locale.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_interactor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingUI extends StatelessWidget {
  const OnboardingUI({super.key, required this.interactor});
  final OnboardingInteractor interactor;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    final themeData = Theme.of(context);

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
              height: 0.7.sh,
              width: 1.sw,
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
            top: 0.35.sh,
            child: Align(
              alignment: Alignment.center,
              child: Text(locale.onboardingTitle!,
                  style: themeData.textTheme.titleLarge!.copyWith(fontSize: 22.sp, color: Colors.white)),
            ),
          ),
          Positioned.fill(
            top: 0.45.sh,
            child: Align(
              alignment: Alignment.center,
              child: Text(locale.onboardingButton!,
                  style: themeData.textTheme.titleLarge!.copyWith(fontSize: 22.sp, color: Colors.white)),
            ),
          ),
          Positioned(
            top: 0.75.sh,
            left: 1.sw * 0.5 - 162,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 22.w),
              width: 324.w,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
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
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Text(locale.joinOurCommunity!,
                    style: themeData.textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 0.1.sh,
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
