import 'package:auto_route/auto_route.dart';
import 'package:walk_dog_app/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: OnBoardingScreen.page,
    ),
    AutoRoute(page: SignInScreen.page)
  ];
}
