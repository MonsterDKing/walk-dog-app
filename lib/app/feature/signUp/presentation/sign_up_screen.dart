import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:walk_dog_app/app/feature/home/presentation/home_screen.dart';

import 'package:walk_dog_app/app/feature/signUp/presentation/blocs/sign_up/sign_up_bloc.dart';

import 'package:walk_dog_app/app/feature/signUp/presentation/sign_up_interactor.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/sign_up_ui.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const name = 'SignInScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> implements SignUpInteractor {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.status == RegisterStatusEnum.success) {
            context.goNamed(HomeScreen.name);
          } else if (state.status == RegisterStatusEnum.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: const Text("ocurrio un problema inesperado intentalo mas tarde"),
                  backgroundColor: Colors.red,
                  duration: const Duration(days: 1),
                  action: SnackBarAction(
                    label: "cerrar",
                    textColor: Colors.white,
                    onPressed: () {
                      context.read<SignUpBloc>().add(const SignUpEvent.closeSnackBar());
                    },
                  )),
            );
          }
        },
        child: SignUpUI(interactor: this));
  }

  @override
  Future<void> signInWithGoogle() async {
    context.goNamed(HomeScreen.name);
  }

  @override
  void privacyPolicy() {}

  @override
  Future<void> signIn() async {
    context.read<SignUpBloc>().add(const SignUpEvent.signUp());
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
