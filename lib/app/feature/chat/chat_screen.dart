import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:walk_dog_app/app/feature/chat/chat_ui.dart';
import 'package:walk_dog_app/app/feature/chat/chat_interactor.dart';

@RoutePage(
  name: 'ChatScreen',
)
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> implements ChatInteractor {
  @override
  Widget build(BuildContext context) {
    return ChatUI(interactor: this);
  }
}
