import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final List<String> messages;

  const MessageWidget({required this.messages});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: messages.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        // Decide si el mensaje debe mostrarse a la izquierda o a la derecha
        bool isMe = index % 2 == 0;

        return Column(
          crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.6,
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: isMe ? const Color(0xFFFB724C) : const Color(0xFFECEEF1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isMe ? 16.0 : 0),
                  topRight: Radius.circular(isMe ? 0 : 16.0),
                  bottomLeft: const Radius.circular(16.0),
                  bottomRight: const Radius.circular(16.0),
                ),
              ),
              child: Text(
                messages[index],
                style: TextStyle(color: isMe ? Colors.white : Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }
}
