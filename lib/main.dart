import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//config
import 'package:walk_dog_app/theme/style.dart';
import 'package:walk_dog_app/locale/locale.dart';
import 'package:walk_dog_app/routes/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//inyections
import 'package:walk_dog_app/app/di.dart';
import 'package:walk_dog_app/app/blocs/language_cubit.dart';
import 'package:walk_dog_app/app/feature/home/provider.dart';
import 'package:walk_dog_app/app/feature/signUp/providers.dart';

void main() async {
  getItSetup();

  runApp(MultiBlocProvider(
    providers: [BlocProvider(create: (context) => LanguageCubit()..getCurrentLanguage()), ...signUpBlocs, ...homeBlocs],
    child: const DogWalkingApp(),
  ));
}

class DogWalkingApp extends StatefulWidget {
  const DogWalkingApp({super.key});

  @override
  State<DogWalkingApp> createState() => _DogWalkingAppState();
}

class _DogWalkingAppState extends State<DogWalkingApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp.router(
      routerConfig: appRouter,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: appTheme,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
    );
  }
}
