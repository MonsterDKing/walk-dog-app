import 'package:auto_route/auto_route.dart';

import 'package:walk_dog_app/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: OnboardingScreen.page,
    ),
    AutoRoute(page: SignInScreen.page),
    AutoRoute(page: TabsScreen.page, children: [
      AutoRoute(page: HomeScreen.page),
      AutoRoute(page: MomentsScreen.page),
      AutoRoute(page: ProfileScreen.page),
      AutoRoute(
        page: ChatsScreen.page,
        children: [
          AutoRoute(page: ChatScreen.page),
        ],
      ),
    ]),
    AutoRoute(page: MomentsStoryView.page),
    AutoRoute(page: DetailsScreen.page),
    AutoRoute(page: BookWalkScreen.page)
  ];
}
