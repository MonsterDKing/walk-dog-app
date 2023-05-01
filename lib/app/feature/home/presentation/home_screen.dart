import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walk_dog_app/app/feature/home/presentation/blocs/bloc.dart';

import 'package:walk_dog_app/app/feature/home/presentation/home_interactor.dart';
import 'package:walk_dog_app/app/feature/home/presentation/home_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const name = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeInteractor {
  @override
  void initState() {
    BlocProvider.of<NearYouBloc>(context).add(const NearYouEvent.started());
    BlocProvider.of<TopWalkersBloc>(context).add(const TopWalkersEvent.started());
    BlocProvider.of<SuggestedBloc>(context).add(const SuggestedEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeUI(interactor: this);
  }

  @override
  void bookAWalk() {}
}
