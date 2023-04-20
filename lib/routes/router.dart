// import 'package:auto_route/auto_route.dart';

// import 'package:walk_dog_app/routes/router.gr.dart';

// @AutoRouterConfig(replaceInRouteName: 'Screen,Route')
// class AppRouter extends $AppRouter {
//   @override
//   final List<AutoRoute> routes = [
//     AutoRoute(
//       path: '/',
//       page: OnboardingScreen.page,
//     ),
//     AutoRoute(page: SignInScreen.page),
//     AutoRoute(page: TabsScreen.page, children: [
//       AutoRoute(page: HomeScreen.page),
//       AutoRoute(page: MomentsScreen.page),
//       AutoRoute(page: ProfileScreen.page),
//       AutoRoute(
//         page: ChatsScreen.page,
//         children: [
//           AutoRoute(page: ChatScreen.page),
//         ],
//       ),
//     ]),
//     AutoRoute(page: MomentsStoryView.page),
//     AutoRoute(page: DetailsScreen.page),
//     AutoRoute(page: BookWalkScreen.page)
//   ];
// }

import 'package:go_router/go_router.dart';
import 'package:walk_dog_app/app/feature/book_walk/book_walk_screen.dart';
import 'package:walk_dog_app/app/feature/chats/chat/chat_screen.dart';
import 'package:walk_dog_app/app/feature/chats/chats_screen.dart';
import 'package:walk_dog_app/app/feature/details/details_screen.dart';
import 'package:walk_dog_app/app/feature/home/home_screen.dart';
import 'package:walk_dog_app/app/feature/moments/moments_screen.dart';
import 'package:walk_dog_app/app/feature/moments/widgets/moments_story_view.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_screen.dart';
import 'package:walk_dog_app/app/feature/profile/profile_screen.dart';
import 'package:walk_dog_app/app/feature/signIn/presentation/sign_in_screen.dart';
import 'package:walk_dog_app/app/feature/tabs/tabs_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    //sshell router
    ShellRoute(
      builder: (context, state, child) {
        return TabsScreen(children: child);
      },
      routes: [
        GoRoute(
            path: '/home',
            name: HomeScreen.name,
            builder: (context, state) {
              return const HomeScreen();
            }),
        GoRoute(
          path: '/moments',
          name: MomentsScreen.name,
          builder: (context, state) {
            return const MomentsScreen();
          },
        ),
        GoRoute(
            path: '/profile',
            name: ProfileScreen.name,
            builder: (context, state) {
              return const ProfileScreen();
            }),
        GoRoute(
            path: '/chats',
            name: ChatsScreen.name,
            builder: (context, state) {
              return const ChatsScreen();
            },
            routes: [
              GoRoute(
                path: 'chat',
                name: ChatScreen.name,
                builder: (context, state) {
                  return const ChatScreen();
                },
              ),
            ]),
      ],
    ),

    //another routes

    GoRoute(
        path: '/',
        name: OnboardingScreen.name,
        builder: (context, state) {
          return const OnboardingScreen();
        }),
    GoRoute(
        path: '/sign-in',
        name: SignInScreen.name,
        builder: (context, state) {
          return const SignInScreen();
        }),

    GoRoute(
      path: '/moment-story',
      name: MomentsStoryView.name,
      builder: (context, state) {
        return const MomentsStoryView();
      },
    ),
    GoRoute(
      path: '/detail',
      name: DetailsScreen.name,
      builder: (context, state) {
        return const DetailsScreen();
      },
    ),
    GoRoute(
        path: '/book-walk',
        name: BookWalkScreen.name,
        builder: (context, state) {
          return const BookWalkScreen();
        }),
  ],
);
