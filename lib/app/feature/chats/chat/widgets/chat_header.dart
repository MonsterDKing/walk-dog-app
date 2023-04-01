import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:walk_dog_app/core/common/utils/utils.dart';

class ChatHeaderWidget extends StatelessWidget {
  const ChatHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 48,
        child: Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.router.pop();
              },
            ),
            const SizedBox(
              width: 20,
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(Utils.generateRandomImage()),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Alex Murray",
                  style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Online",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 13)),
                    )
                  ],
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone))
          ],
        ));
  }
}
