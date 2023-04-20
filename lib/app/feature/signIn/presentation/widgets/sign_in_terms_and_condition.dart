import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_interactor.dart';

class SignInTermsAndCondition extends StatelessWidget {
  const SignInTermsAndCondition({
    super.key,
    required this.interactor,
  });
  final SignInInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: 'By signing in, I agree with ',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ))),
            TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => interactor.termsAndCondition(),
                text: 'Terms of Use  \n',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ))),
            TextSpan(
                text: ' and ',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ))),
            TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => interactor.privacyPolicy(),
                text: ' Privacy Policy ',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ))),
          ])),
    );
  }
}
