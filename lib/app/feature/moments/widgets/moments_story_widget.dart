import 'package:flutter/material.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: 64,
        height: 64,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                radius: 29,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: SizedBox(
                      width: 56, height: 56, child: Image.network(Utils.generateRandomImage(), fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
