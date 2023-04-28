import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_interactor.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_ui.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/sign_up_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const name = 'OnboardingScreen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> implements OnboardingInteractor {
  @override
  Widget build(BuildContext context) {
    return OnboardingUI(interactor: this);
  }

  @override
  signIn() {
    context.goNamed(SignUpScreen.name);
  }

  @override
  signUp() {
    context.goNamed(SignUpScreen.name);
  }
}
