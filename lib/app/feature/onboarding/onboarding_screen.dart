import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_interactor.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_ui.dart';

import 'package:walk_dog_app/routes/router.gr.dart';

@RoutePage(
  name: 'OnboardingScreen',
)
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

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
    context.router.push(SignInScreen());
  }

  @override
  signUp() {
    context.router.push(SignInScreen());
  }
}
