// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:walk_dog_app/app/feature/home/home_screen.dart' as _i3;
import 'package:walk_dog_app/app/feature/moments/moments_screen.dart' as _i5;
import 'package:walk_dog_app/app/feature/onboarding/onboarding_screen.dart'
    as _i2;
import 'package:walk_dog_app/app/feature/signIn/sign_in_screen.dart' as _i1;
import 'package:walk_dog_app/app/feature/tabs/tabs_screen.dart' as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SignInScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SignInScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    TabsScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TabsScreen(),
      );
    },
    MomentsScreen.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MomentsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.SignInScreen]
class SignInScreen extends _i6.PageRouteInfo<void> {
  const SignInScreen({List<_i6.PageRouteInfo>? children})
      : super(
          SignInScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignInScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreen extends _i6.PageRouteInfo<void> {
  const OnboardingScreen({List<_i6.PageRouteInfo>? children})
      : super(
          OnboardingScreen.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i6.PageRouteInfo<void> {
  const HomeScreen({List<_i6.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.TabsScreen]
class TabsScreen extends _i6.PageRouteInfo<void> {
  const TabsScreen({List<_i6.PageRouteInfo>? children})
      : super(
          TabsScreen.name,
          initialChildren: children,
        );

  static const String name = 'TabsScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MomentsScreen]
class MomentsScreen extends _i6.PageRouteInfo<void> {
  const MomentsScreen({List<_i6.PageRouteInfo>? children})
      : super(
          MomentsScreen.name,
          initialChildren: children,
        );

  static const String name = 'MomentsScreen';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
