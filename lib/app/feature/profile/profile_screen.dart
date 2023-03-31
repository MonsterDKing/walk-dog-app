import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/profile/profile_interactor.dart';
import 'package:walk_dog_app/app/feature/profile/profile_ui.dart';

@RoutePage(name: "ProfileScreen")
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

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
