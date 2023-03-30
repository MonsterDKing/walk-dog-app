import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walk_dog_app/app/feature/home/home_interactor.dart';
import 'package:walk_dog_app/locale/locale.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key, required this.interactor});
  final HomeInteractor interactor;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const HomeTitleWidget(),
            const HomeSearchLocationWidget(),
            HomeSubTitle(
              text: locale.nearYou!,
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const HomeOptionsWidget();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            HomeSubTitle(
              text: locale.homeSuggested!,
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const HomeOptionsWidget();
                },
              ),
            ),
          ]),
        ),
      )),
    );
  }
}

class HomeOptionsWidget extends StatelessWidget {
  const HomeOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        top: 20,
      ),
      width: 180,
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 179,
              height: 125,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.network(
                        'https://picsum.photos/id/237/200/300',
                        fit: BoxFit.cover,
                        //add border radius
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 49,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7), color: Color.fromRGBO(229, 229, 234, 0.2)),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 203, 85, 1),
                          size: 10,
                        ),
                        //color #FFCB55
                        Text(
                          '4.1',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 203, 85, 1), fontWeight: FontWeight.w600, fontSize: 10)),
                        )
                      ]),
                    ),
                  )
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mason York',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 15,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      Text(
                        '7k from you',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        )),
                      )
                    ],
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: 48,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black,
                ),
                child: Text(
                  " \$5/hr",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//testing

//testing

class HomeSubTitle extends StatelessWidget {
  const HomeSubTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 34,
          )),
        ),
        Text(locale.viewAll!,
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 15, decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}

class HomeSearchLocationWidget extends StatelessWidget {
  const HomeSearchLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 43,
        child: TextField(
          decoration: InputDecoration(
            //icon
            prefixIcon: const Icon(
              Icons.location_on_outlined,
            ),
            //leading icon
            suffixIcon: const Icon(
              Icons.settings,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color.fromRGBO(240, 240, 240, 1), width: 1.0),
              borderRadius: BorderRadius.circular(14),
            ),
            labelText: "My location",
            labelStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromRGBO(174, 174, 178, 1))),
            fillColor: const Color.fromRGBO(240, 240, 240, 1),
            filled: true,
          ),
        ));
  }
}

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.homeTitle!,
                style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
              ),
              Text(
                locale.homeSubtitle!,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.grey)),
              ),
            ],
          ),
          Container(
            width: 104,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFE904B), Color(0xFFFB724C)],
                )),
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'Book a walk',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 10)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
