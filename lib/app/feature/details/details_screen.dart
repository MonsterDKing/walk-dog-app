import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/details/details_interactor.dart';
import 'package:walk_dog_app/app/feature/details/details_ui.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});
  static const name = 'DetailsScreen';
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> implements DetailsInteractor {
  @override
  Widget build(BuildContext context) {
    return DetailsUI(interactor: this);
  }
}
