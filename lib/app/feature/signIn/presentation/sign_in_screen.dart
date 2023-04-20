import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:walk_dog_app/app/feature/home/home_screen.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/bloc/auth_bloc.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_interactor.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_ui.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const name = 'SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> implements SignInInteractor {
  @override
  Widget build(BuildContext context) {
    return SignUI(interactor: this);
  }

  @override
  Future<void> signInWithGoogle() async {
    context.goNamed(HomeScreen.name);
  }

  @override
  void privacyPolicy() {}

  @override
  Future<void> signIn() async {
    // context.read<AuthBloc>().add(const AuthEvent.signIn());
    context.goNamed(HomeScreen.name);
  }

  @override
  Future<void> signInWithFacebook() async {
    context.goNamed(HomeScreen.name);
  }

  @override
  void termsAndCondition() {
    context.goNamed(HomeScreen.name);
  }
}
