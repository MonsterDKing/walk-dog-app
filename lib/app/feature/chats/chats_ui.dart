import 'package:flutter/material.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';
import 'package:walk_dog_app/app/feature/chats/chats_interactor.dart';
import 'package:walk_dog_app/app/feature/chats/widgets/chat_conversation_item.dart';
import 'package:walk_dog_app/app/feature/chats/widgets/chat_header.dart';

class ChatsUI extends StatelessWidget {
  const ChatsUI({Key? key, required this.interactor}) : super(key: key);
  final ChatsInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ChatHeader(),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ConversationItemWidget(
                    imageUrl: Utils.generateRandomImage(),
                    name: 'Test test',
                    time: '10:00',
                    isMessageRead: index % 2 == 0,
                    messageText: 'Hello',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
