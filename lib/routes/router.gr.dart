// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:walk_dog_app/app/onboarding/onboarding_screen.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    Onboardingscreen.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.OnboardingScreen]
class Onboardingscreen extends _i2.PageRouteInfo<void> {
  const Onboardingscreen({List<_i2.PageRouteInfo>? children})
      : super(
          Onboardingscreen.name,
          initialChildren: children,
        );

  static const String name = 'Onboardingscreen';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
