import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

@RoutePage(
  name: 'MomentsStoryView',
)
class MomentsStoryView extends StatefulWidget {
  const MomentsStoryView({super.key});

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
      StoryItem.pageImage(
          url: "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg", controller: controller),
      StoryItem.pageImage(
          url: "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg", controller: controller),
      StoryItem.pageImage(
          url: "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg", controller: controller),
      StoryItem.pageImage(
          url: "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg", controller: controller),
      StoryItem.pageImage(
          url: "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg", controller: controller),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return StoryView(storyItems: storyItems, controller: controller);
  }
}
