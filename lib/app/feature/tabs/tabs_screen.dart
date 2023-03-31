import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/locale/locale.dart';
import 'package:walk_dog_app/routes/router.gr.dart';

@RoutePage(name: 'TabsScreen')
class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return AutoTabsScaffold(
      routes: const [
        HomeScreen(),
        MomentsScreen(),
        ChatScreen(),
        HomeScreen(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              label: locale.homeMenu!,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person_3,
              ),
              label: locale.homeMoments,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.favorite,
              ),
              label: locale.homeChat,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person,
              ),
              label: locale.homeProfile,
            ),
          ],
        );
      },
    );
  }
}
