import 'package:go_router/go_router.dart';
import 'package:walk_dog_app/app/feature/book_walk/presentation/book_walk_screen.dart';
import 'package:walk_dog_app/app/feature/chat/presentation/chat_screen.dart';

import 'package:walk_dog_app/app/feature/chats/presentation/chats_screen.dart';

import 'package:walk_dog_app/app/feature/details/details_screen.dart';
import 'package:walk_dog_app/app/feature/home/presentation/home_screen.dart';
import 'package:walk_dog_app/app/feature/moments/moments_screen.dart';
import 'package:walk_dog_app/app/feature/moments/widgets/moments_story_view.dart';
import 'package:walk_dog_app/app/feature/onboarding/onboarding_screen.dart';
import 'package:walk_dog_app/app/feature/profile/profile_screen.dart';
import 'package:walk_dog_app/app/feature/signUp/presentation/sign_up_screen.dart';

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
            routes: [
              GoRoute(
                  path: 'book-walk',
                  name: BookWalkScreen.name,
                  builder: (context, state) {
                    return const BookWalkScreen();
                  }),
            ],
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
        name: SignUpScreen.name,
        builder: (context, state) {
          return const SignUpScreen();
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
  ],
);
