import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:walk_dog_app/app/feature/moments/moments_interactor.dart';
import 'package:walk_dog_app/app/feature/moments/moments_ui.dart';

@RoutePage(
  name: 'MomentsScreen',
)
class MomentsScreen extends StatefulWidget {
  const MomentsScreen({super.key});

  @override
  State<MomentsScreen> createState() => _MomentsScreenState();
}

class _MomentsScreenState extends State<MomentsScreen> implements MomentsInteractor {
  @override
  Widget build(BuildContext context) {
    return MomentsUI(interactor: this);
  }
}
