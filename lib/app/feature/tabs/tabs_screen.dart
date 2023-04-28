import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:walk_dog_app/app/feature/chats/presentation/chats_screen.dart';

import 'package:walk_dog_app/app/feature/profile/profile_screen.dart';
import 'package:walk_dog_app/app/feature/moments/moments_screen.dart';
import 'package:walk_dog_app/app/feature/home/presentation/home_screen.dart';

import 'package:walk_dog_app/locale/locale.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key, required this.children});
  static const name = 'TabsScreen';
  final Widget children;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    void onItemTapped(BuildContext context, int index) {
      switch (index) {
        case 0:
          context.goNamed(HomeScreen.name);
          break;
        case 1:
          context.goNamed(MomentsScreen.name);
          break;
        case 2:
          context.goNamed(ChatsScreen.name);
          break;
        case 3:
          context.goNamed(ProfileScreen.name);
          break;
      }
    }

    //function to get current index
    int getCurrentIndex() {
      var currentPath = GoRouterState.of(context).location;
      switch (currentPath) {
        case '/home':
          return 0;
        case '/moments':
          return 1;
        case '/chats':
          return 2;
        case '/profile':
          return 3;
        default:
          return 0;
      }
    }

    //function to get only if current path is first directory of path
    bool isCurrentPath() {
      var currentPath = GoRouterState.of(context).location;
      switch (currentPath) {
        case '/home':
          return true;
        case '/moments':
          return true;
        case '/chats':
          return true;
        case '/profile':
          return true;
        default:
          return false;
      }
    }

    return Scaffold(
        body: children,
        bottomNavigationBar: isCurrentPath()
            ? BottomNavigationBar(
                currentIndex: getCurrentIndex(),
                onTap: (index) => onItemTapped(context, index),
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
              )
            : SizedBox());
  }
}
