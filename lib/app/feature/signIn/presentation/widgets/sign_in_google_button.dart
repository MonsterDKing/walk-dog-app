import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:walk_dog_app/app/assets/assets.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_interactor.dart';

class GoogleButtonSignUp extends StatelessWidget {
  const GoogleButtonSignUp({
    super.key,
    required this.text,
    required this.interactor,
  });

  final String text;
  final SignInInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 343,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            color: Colors.white,
            border: Border.all(color: Colors.black)),
        child: MaterialButton(
          onPressed: () {
            interactor.signInWithGoogle();
          },
          minWidth: 343,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Container(margin: const EdgeInsets.only(left: 20), child: Image.asset(Assets.googleIconImage)),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
