import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:walk_dog_app/app/feature/signIn/sign_in_interactor.dart';

class FacebookButtonSignUp extends StatelessWidget {
  const FacebookButtonSignUp({
    super.key,
    required this.text,
    required this.interactor,
  });

  final String text;
  final SignInInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Acción a realizar cuando se presiona el botón
      },
      minWidth: 343,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      color: Colors.transparent,
      child: Container(
          // color #3B5998
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            color: Color(0xFF3B5998),
          ),
          height: 60,
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              )
            ],
          )),
    );
  }
}
