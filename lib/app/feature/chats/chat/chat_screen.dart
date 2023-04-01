import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/chats/chat/chat_ui.dart';
import 'package:walk_dog_app/app/feature/chats/chats_interactor.dart';

@RoutePage(
  name: 'ChatScreen',
)
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> implements ChatsInteractor {
  @override
  Widget build(BuildContext context) {
    return ChatUI(interactor: this);
  }
}
