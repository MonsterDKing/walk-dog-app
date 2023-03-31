import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:walk_dog_app/app/feature/moments/moments_interactor.dart';
import 'package:walk_dog_app/app/feature/moments/widgets/moments_cards.dart';
import 'package:walk_dog_app/app/feature/moments/widgets/moments_header.dart';
import 'package:walk_dog_app/app/feature/moments/widgets/moments_story_widget.dart';

class MomentsUI extends StatelessWidget {
  const MomentsUI({super.key, required this.interactor});
  final MomentsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            MomentsHeaderWidget(size: size),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return const StoryWidget();
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.75,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) {
                  return const MomentsCardsWidget();
                },
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
