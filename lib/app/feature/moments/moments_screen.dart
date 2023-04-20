import 'package:flutter/material.dart';

import 'package:walk_dog_app/app/feature/moments/moments_interactor.dart';
import 'package:walk_dog_app/app/feature/moments/moments_ui.dart';

class MomentsScreen extends StatefulWidget {
  const MomentsScreen({super.key});
  static const name = 'MomentsScreen';

  @override
  State<MomentsScreen> createState() => _MomentsScreenState();
}

class _MomentsScreenState extends State<MomentsScreen> implements MomentsInteractor {
  @override
  Widget build(BuildContext context) {
    return MomentsUI(interactor: this);
  }
}
