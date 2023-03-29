// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:walk_dog_app/app/feature/onboarding/onboarding_screen.dart'
    as _i2;
import 'package:walk_dog_app/app/feature/signIn/sign_in_screen.dart' as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SignInScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SignInScreen(),
      );
    },
    OnBoardingScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.SignInScreen]
class SignInScreen extends _i3.PageRouteInfo<void> {
  const SignInScreen({List<_i3.PageRouteInfo>? children})
      : super(
          SignInScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignInScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnBoardingScreen extends _i3.PageRouteInfo<void> {
  const OnBoardingScreen({List<_i3.PageRouteInfo>? children})
      : super(
          OnBoardingScreen.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
