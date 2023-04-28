import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/sign_up_interactor.dart';

class FacebookButtonSignUp extends StatelessWidget {
  const FacebookButtonSignUp({
    super.key,
    required this.text,
    required this.interactor,
  });

  final String text;
  final SignUpInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 343,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: Color(0xFF3B5998),
        ),
        child: MaterialButton(
          onPressed: () {
            interactor.signInWithFacebook();
          },
          minWidth: 343,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          color: Colors.transparent,
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
          ),
        ),
      ),
    );
  }
}
