import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/profile/profile_interactor.dart';
import 'package:walk_dog_app/app/feature/profile/profile_ui.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const name = 'ProfileScreen';
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> implements ProfileInteractor {
  @override
  Widget build(BuildContext context) {
    return ProfileUI(interactor: this);
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
