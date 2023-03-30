import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:walk_dog_app/app/feature/home/home_interactor.dart';
import 'package:walk_dog_app/app/feature/home/home_ui.dart';

@RoutePage(
  name: 'HomeScreen',
)
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeInteractor {
  @override
  Widget build(BuildContext context) {
    return HomeUI(interactor: this);
  }
}
