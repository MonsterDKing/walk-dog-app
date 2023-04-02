import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/details/details_interactor.dart';
import 'package:walk_dog_app/app/feature/details/details_ui.dart';

@RoutePage(name: "DetailsScreen")
class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> implements DetailsInteractor {
  @override
  Widget build(BuildContext context) {
    return DetailsUI(interactor: this);
  }
}
