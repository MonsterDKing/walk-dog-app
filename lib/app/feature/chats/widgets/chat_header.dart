import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/chats/widgets/chat_search.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Chat",
            style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
          ),
          const ChatSearchWidget()
        ],
      ),
    );
  }
}
