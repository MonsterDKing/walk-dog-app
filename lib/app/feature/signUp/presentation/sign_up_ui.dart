//libs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_screen.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/blocs/sign_up/sign_up_bloc.dart';

//components
import 'package:walk_dog_app/app/feature/signUp/presentation/widgets/sign_up_button.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/widgets/sign_up_facebook_button.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/widgets/sign_up_google_button.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/widgets/sign_up_terms_and_condition.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/widgets/sign_up_text_field.dart';

//internals
import 'package:walk_dog_app/app/feature/signUp/presentation/sign_up_interactor.dart';
import 'package:walk_dog_app/locale/locale.dart';

class SignUpUI extends StatelessWidget {
  const SignUpUI({super.key, required this.interactor});
  final SignUpInteractor interactor;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    var bloc = context.watch<SignUpBloc>().state;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: bloc.status == RegisterStatusEnum.loading
              ? const SignUpLoadingBody()
              : SignUpBody(
                  locale: locale,
                  interactor: interactor,
                ),
        ),
      )),
    );
  }
}

class SignUpLoadingBody extends StatelessWidget {
  const SignUpLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 50,
      ),
      Center(
        child: CircularProgressIndicator(),
      ),
    ]);
  }
}

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
    required this.locale,
    required this.interactor,
  });

  final AppLocalizations locale;
  final SignUpInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            context.goNamed(OnboardingScreen.name);
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
      SignInTextFieldWidget(
        label: locale.name!,
        event: SignUpEvent.nameChanged,
        errorText: context.watch<SignUpBloc>().state.name.errorMessage,
      ),
      SignInTextFieldWidget(
        label: locale.lastName!,
        event: SignUpEvent.lastNameChanged,
        errorText: context.watch<SignUpBloc>().state.lastName.errorMessage,
      ),
      SignInTextFieldWidget(
        label: locale.phone!,
        isPhone: true,
        event: SignUpEvent.cellphoneChanged,
        errorText: context.watch<SignUpBloc>().state.cellphone.errorMessage,
      ),
      SignInTextFieldWidget(
        label: locale.passsword!,
        isPassword: true,
        event: SignUpEvent.passwordChanged,
        errorText: context.watch<SignUpBloc>().state.password.errorMessage,
      ),
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
    ]);
  }
}
