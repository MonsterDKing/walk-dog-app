import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:walk_dog_app/app/feature/signIn/sign_in_interactor.dart';
import 'package:walk_dog_app/app/feature/signIn/sign_in_ui.dart';

@RoutePage(
  name: 'signInScreen',
)
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> implements SignInInteractor {
  @override
  Widget build(BuildContext context) {
    return SignUI(interactor: this);
  }

  @override
  Future<void> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  void privacyPolicy() {
    // TODO: implement privacyPolicy
  }

  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  void termsAndCondition() {
    // TODO: implement termsAndCondition
  }
}
