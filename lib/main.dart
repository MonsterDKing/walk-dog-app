import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:walk_dog_app/locale/locale.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:walk_dog_app/theme/style.dart';
import 'package:walk_dog_app/routes/router.dart';

import 'package:walk_dog_app/app/blocs/language_cubit.dart';

void main() async {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => LanguageCubit()..getCurrentLanguage()),
    ],
    child: const DogWalkingApp(),
  ));
}

class DogWalkingApp extends StatefulWidget {
  const DogWalkingApp({super.key});

  @override
  State<DogWalkingApp> createState() => _DogWalkingAppState();
}

class _DogWalkingAppState extends State<DogWalkingApp> {
  final _rootRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: _rootRouter.config(),
      theme: appTheme,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
    );
  }
}
