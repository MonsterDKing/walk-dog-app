import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/profile/profile_interactor.dart';
import 'package:walk_dog_app/core/common/utils/utils.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key, required this.interactor});
  final ProfileInteractor interactor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const ProfileHeaderWidget(),
          Container(
            width: 165,
            height: 165,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(Utils.generateRandomImage()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 51,
            child: Text(
              "CRISTIAN DOWNEY",
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on_outlined),
              Text(
                'MOS RUSSIA',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 15, color: Color.fromRGBO(161, 161, 162, 1))),
              )
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const ProfileElementWidget(
            text: "My pets",
          ),
          const ProfileElementWidget(
            text: "My pets",
          ),
          const ProfileElementWidget(
            text: "My pets",
          ),
          const ProfileElementWidget(
            text: "My pets",
          ),
          const ProfileViewAllButton()
        ],
      )),
    );
  }
}

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add))
        ],
      ),
    );
  }
}

class ProfileViewAllButton extends StatelessWidget {
  const ProfileViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(43, 43, 43, 1),
        ),
        height: 58,
        child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "View All",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.arrow_right_alt, color: Colors.white)
          ]),
        ));
  }
}

class ProfileElementWidget extends StatelessWidget {
  const ProfileElementWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: 343,
        height: 58,
        child: Row(children: [
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.pets),
          const SizedBox(
            width: 10,
          ),
          Text(text, style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)))
        ]),
      ),
    );
  }
}
