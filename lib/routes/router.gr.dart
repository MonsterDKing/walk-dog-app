// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:walk_dog_app/app/feature/chat/chat_screen.dart' as _i7;
import 'package:walk_dog_app/app/feature/home/home_screen.dart' as _i2;
import 'package:walk_dog_app/app/feature/moments/moments_screen.dart' as _i3;
import 'package:walk_dog_app/app/feature/moments/widgets/moments_story_view.dart'
    as _i4;
import 'package:walk_dog_app/app/feature/onboarding/onboarding_screen.dart'
    as _i6;
import 'package:walk_dog_app/app/feature/profile/profile_screen.dart' as _i8;
import 'package:walk_dog_app/app/feature/signIn/sign_in_screen.dart' as _i5;
import 'package:walk_dog_app/app/feature/tabs/tabs_screen.dart' as _i1;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    TabsScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.TabsScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    MomentsScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MomentsScreen(),
      );
    },
    MomentsStoryView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MomentsStoryView(),
      );
    },
    SignInScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignInScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingScreen(),
      );
    },
    ChatScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ChatScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.TabsScreen]
class TabsScreen extends _i9.PageRouteInfo<void> {
  const TabsScreen({List<_i9.PageRouteInfo>? children})
      : super(
          TabsScreen.name,
          initialChildren: children,
        );

  static const String name = 'TabsScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i9.PageRouteInfo<void> {
  const HomeScreen({List<_i9.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MomentsScreen]
class MomentsScreen extends _i9.PageRouteInfo<void> {
  const MomentsScreen({List<_i9.PageRouteInfo>? children})
      : super(
          MomentsScreen.name,
          initialChildren: children,
        );

  static const String name = 'MomentsScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MomentsStoryView]
class MomentsStoryView extends _i9.PageRouteInfo<void> {
  const MomentsStoryView({List<_i9.PageRouteInfo>? children})
      : super(
          MomentsStoryView.name,
          initialChildren: children,
        );

  static const String name = 'MomentsStoryView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignInScreen]
class SignInScreen extends _i9.PageRouteInfo<void> {
  const SignInScreen({List<_i9.PageRouteInfo>? children})
      : super(
          SignInScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignInScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingScreen extends _i9.PageRouteInfo<void> {
  const OnboardingScreen({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingScreen.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChatScreen]
class ChatScreen extends _i9.PageRouteInfo<void> {
  const ChatScreen({List<_i9.PageRouteInfo>? children})
      : super(
          ChatScreen.name,
          initialChildren: children,
        );

  static const String name = 'ChatScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileScreen extends _i9.PageRouteInfo<void> {
  const ProfileScreen({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileScreen.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreen';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
