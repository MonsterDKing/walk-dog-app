import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:walk_dog_app/app/feature/chats/chats_ui.dart';
import 'package:walk_dog_app/app/feature/chats/chats_interactor.dart';

@RoutePage(
  name: 'ChatsScreen',
)
class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> implements ChatsInteractor {
  @override
  Widget build(BuildContext context) {
    return ChatsUI(interactor: this);
  }
}
