import 'package:flutter/material.dart';

import 'package:walk_dog_app/app/feature/home/home_interactor.dart';
import 'package:walk_dog_app/app/feature/home/home_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const name = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeInteractor {
  @override
  Widget build(BuildContext context) {
    return HomeUI(interactor: this);
  }

  @override
  void bookAWalk() {}
}
