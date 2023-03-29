import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/onboarding/onboarding_interactor.dart';
import 'package:walk_dog_app/app/onboarding/onboarding_ui.dart';

@RoutePage(
  name: 'onboardingscreen',
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
  Future<void> saveOnboardingStatus() {
    // TODO: implement saveOnboardingStatus
    throw UnimplementedError();
  }
}
