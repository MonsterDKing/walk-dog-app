//libs
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//components
import 'package:walk_dog_app/app/feature/signIn/components/sign_in_button.dart';
import 'package:walk_dog_app/app/feature/signIn/components/sign_in_facebook_button.dart';
import 'package:walk_dog_app/app/feature/signIn/components/sign_in_google_button.dart';
import 'package:walk_dog_app/app/feature/signIn/components/sign_in_terms_and_condition.dart';
import 'package:walk_dog_app/app/feature/signIn/components/sign_in_text_field.dart';

//internals
import 'package:walk_dog_app/app/feature/signIn/sign_in_interactor.dart';
import 'package:walk_dog_app/locale/locale.dart';

class SignUI extends StatelessWidget {
  const SignUI({super.key, required this.interactor});
  final SignInInteractor interactor;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  context.router.pop();
                },
                icon: const Icon(Icons.arrow_back)),
            const SizedBox(
              height: 50,
            ),
            Text(
              locale.titleSignUp!,
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),
            ),
            Text(
              locale.subtitleSignUp!,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: (Colors.grey))),
            ),
            SignInTextFieldWidget(label: locale.fullName!),
            SignInTextFieldWidget(label: locale.phone!),
            SignInTextFieldWidget(label: locale.passsword!),
            SignInButtonSignUp(
              text: locale.signUpButton!,
              interactor: interactor,
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: Text(
                  'Or',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                )),
            FacebookButtonSignUp(
              text: locale.connectWithFacebook!,
              interactor: interactor,
            ),
            const SizedBox(
              height: 10,
            ),
            GoogleButtonSignUp(
              text: locale.connectWithGoogle!,
              interactor: interactor,
            ),
            const SizedBox(
              height: 22,
            ),
            SignInTermsAndCondition(
              interactor: interactor,
            ),
          ]),
        ),
      )),
    );
  }
}
