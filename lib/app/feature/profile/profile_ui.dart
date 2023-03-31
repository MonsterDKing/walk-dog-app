import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/profile/profile_interactor.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key, required this.interactor});
  final ProfileInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text('profile ui')],
      )),
    );
  }
}
