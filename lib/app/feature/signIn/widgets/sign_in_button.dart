import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/signIn/sign_in_interactor.dart';

class SignInButtonSignUp extends StatelessWidget {
  const SignInButtonSignUp({
    super.key,
    required this.text,
    required this.interactor,
  });

  final String text;
  final SignInInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
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
        minWidth: 343,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
