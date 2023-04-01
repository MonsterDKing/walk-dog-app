import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBoxWidget extends StatefulWidget {
  const ChatBoxWidget({
    super.key,
  });

  @override
  State<ChatBoxWidget> createState() => _ChatBoxWidgetState();
}

class _ChatBoxWidgetState extends State<ChatBoxWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Write a message...',
                hintStyle: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _controller.clear();
            },
            icon: const Icon(Icons.send),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
