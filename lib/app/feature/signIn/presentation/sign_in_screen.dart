import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/bloc/auth_bloc.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_interactor.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_ui.dart';
import 'package:walk_dog_app/routes/router.gr.dart';

@RoutePage(
  name: 'SignInScreen',
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
  Future<void> signInWithGoogle() async {
    context.router.push(const TabsScreen());
  }

  @override
  void privacyPolicy() {}

  @override
  Future<void> signIn() async {
    context.read<AuthBloc>().add(const AuthEvent.signIn());
  }

  @override
  Future<void> signInWithFacebook() async {
    context.router.push(const TabsScreen());
  }

  @override
  void termsAndCondition() {
    context.router.push(const TabsScreen());
  }
}
