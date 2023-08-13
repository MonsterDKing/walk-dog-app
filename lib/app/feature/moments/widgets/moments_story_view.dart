import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class MomentsStoryView extends StatefulWidget {
  const MomentsStoryView({super.key});
  static const name = 'MomentsStoryViewScreen';

  @override
  State<MomentsStoryView> createState() => _MomentsStoryViewState();
}

class _MomentsStoryViewState extends State<MomentsStoryView> {
  final controller = StoryController();
  late List<StoryItem> storyItems;

  @override
  void initState() {
    super.initState();
    storyItems = [
      StoryItem.pageImage(url: Utils.generateRandomImage(), imageFit: BoxFit.fill, controller: controller),
      StoryItem.pageImage(url: Utils.generateRandomImage(), imageFit: BoxFit.fill, controller: controller),
      StoryItem.pageImage(url: Utils.generateRandomImage(), imageFit: BoxFit.fill, controller: controller),
      StoryItem.pageImage(url: Utils.generateRandomImage(), imageFit: BoxFit.fill, controller: controller),
      StoryItem.pageImage(url: Utils.generateRandomImage(), imageFit: BoxFit.fill, controller: controller),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return StoryView(storyItems: storyItems, controller: controller, onComplete: () => context.pop());
  }
}
