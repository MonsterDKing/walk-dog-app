import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:walk_dog_app/app/feature/home/presentation/home_interactor.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_options.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_search_location.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_sub_title.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_title.dart';
import 'package:walk_dog_app/core/common/constants/colors.dart';
import 'package:walk_dog_app/core/common/constants/constants.dart';

import 'package:walk_dog_app/locale/locale.dart';

import 'blocs/bloc.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key, required this.interactor});
  final HomeInteractor interactor;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            HomeTitleWidget(
              interactor: interactor,
            ),
            const HomeSearchLocationWidget(),
            HomeSubTitle(
              text: locale.topWalkers!,
            ),
            const TopWalkersWidget(),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            HomeSubTitle(
              text: locale.nearYou!,
            ),
            const NearYouWidget(),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            HomeSubTitle(
              text: locale.homeSuggested!,
            ),
            const SuggestedWidget()
          ]),
        ),
      )),
    );
  }
}

class TopWalkersWidget extends StatelessWidget {
  const TopWalkersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 190,
        child: BlocBuilder<TopWalkersBloc, TopWalkersState>(
          builder: (context, state) {
            switch (state.status) {
              case TopWalkersStatus.initial:
                return const HomeCircularProgressWidget();

              case TopWalkersStatus.loading:
                return const HomeCircularProgressWidget();

              case TopWalkersStatus.loaded:
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.cards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeOptionsWidget(cards: state.cards[index]);
                  },
                );
              case TopWalkersStatus.error:
                return Column(
                  children: const [
                    Center(child: Text(serverErrorMessage)),
                  ],
                );
              case TopWalkersStatus.noInternet:
                return Column(
                  children: [
                    const Text("No Internet"),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<TopWalkersBloc>(context).add(const TopWalkersEvent.started());
                        },
                        child: const Text("Retry"))
                  ],
                );
            }
          },
        ));
  }
}

class SuggestedWidget extends StatelessWidget {
  const SuggestedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 190,
        child: BlocBuilder<SuggestedBloc, SuggestedState>(
          builder: (context, state) {
            switch (state.status) {
              case SuggestedStatus.initial:
                return const HomeCircularProgressWidget();

              case SuggestedStatus.loading:
                return const HomeCircularProgressWidget();

              case SuggestedStatus.loaded:
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.cards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeOptionsWidget(cards: state.cards[index]);
                  },
                );
              case SuggestedStatus.error:
                return Column(
                  children: const [
                    Center(child: Text(serverErrorMessage)),
                  ],
                );
              case SuggestedStatus.noInternet:
                return Column(
                  children: [
                    const Text("No Internet"),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<SuggestedBloc>(context).add(const SuggestedEvent.started());
                        },
                        child: const Text("Retry"))
                  ],
                );
            }
          },
        ));
  }
}

class NearYouWidget extends StatelessWidget {
  const NearYouWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 190,
        child: BlocBuilder<NearYouBloc, NearYouState>(
          builder: (context, state) {
            switch (state.status) {
              case NearYouStatus.initial:
                return const HomeCircularProgressWidget();

              case NearYouStatus.loading:
                return const HomeCircularProgressWidget();

              case NearYouStatus.loaded:
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.cards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HomeOptionsWidget(cards: state.cards[index]);
                  },
                );
              case NearYouStatus.error:
                return Column(
                  children: const [
                    Center(child: Text(serverErrorMessage)),
                  ],
                );
              case NearYouStatus.noInternet:
                return Column(
                  children: [
                    const Text("No Internet"),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<NearYouBloc>(context).add(const NearYouEvent.started());
                        },
                        child: const Text("Retry"))
                  ],
                );
            }
          },
        ));
  }
}

class HomeCircularProgressWidget extends StatelessWidget {
  const HomeCircularProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: primaryColor,
      ),
    );
  }
}
