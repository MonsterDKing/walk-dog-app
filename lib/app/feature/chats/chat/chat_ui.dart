import 'package:flutter/material.dart';

import 'package:walk_dog_app/app/feature/chats/chat/widgets/chat_box.dart';
import 'package:walk_dog_app/app/feature/chats/chat/widgets/chat_header.dart';
import 'package:walk_dog_app/app/feature/chats/chat/widgets/chat_message.dart';
import 'package:walk_dog_app/app/feature/chats/chats_interactor.dart';

class ChatUI extends StatelessWidget {
  const ChatUI({
    super.key,
    required this.interactor,
  });
  final ChatsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ChatHeaderWidget(),
            SizedBox(
              height: size.height * 0.8,
              child: const MessageWidget(
                messages: [
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,.",
                ],
              ),
            ),
            //textfield to chat with the dog
            const ChatBoxWidget(),
          ],
        ),
      ),
    ));
  }
}
