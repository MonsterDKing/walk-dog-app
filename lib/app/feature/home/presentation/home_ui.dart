import 'package:flutter/material.dart';

import 'package:walk_dog_app/app/feature/home/presentation/home_interactor.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_options.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_search_location.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_sub_title.dart';
import 'package:walk_dog_app/app/feature/home/presentation/widgets/home_title.dart';

import 'package:walk_dog_app/locale/locale.dart';

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
            SizedBox(
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const HomeOptionsWidget();
                },
              ),
            ),
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
            SizedBox(
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const HomeOptionsWidget();
                },
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            HomeSubTitle(
              text: locale.homeSuggested!,
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const HomeOptionsWidget();
                },
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
