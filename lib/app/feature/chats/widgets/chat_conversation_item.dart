import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/routes/router.gr.dart';

class ConversationItemWidget extends StatefulWidget {
  final String name;
  final String messageText;
  final String imageUrl;
  final String time;
  final bool isMessageRead;
  const ConversationItemWidget(
      {super.key,
      required this.name,
      required this.messageText,
      required this.imageUrl,
      required this.time,
      required this.isMessageRead});
  @override
  State<ConversationItemWidget> createState() => _ConversationItemWidget();
}

class _ConversationItemWidget extends State<ConversationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const ChatScreen());
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20))),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.messageText,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "∙ ${widget.time}",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            widget.isMessageRead
                ? SizedBox()
                : Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
