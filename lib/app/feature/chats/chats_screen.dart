import 'package:flutter/material.dart';

import 'package:walk_dog_app/app/feature/chats/chats_ui.dart';
import 'package:walk_dog_app/app/feature/chats/chats_interactor.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});
  static const name = 'ChatsScreen';
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> implements ChatsInteractor {
  @override
  Widget build(BuildContext context) {
    return ChatsUI(interactor: this);
  }
}
