import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:walk_dog_app/app/blocs/language_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//config
import 'package:walk_dog_app/theme/style.dart';
import 'package:walk_dog_app/locale/locale.dart';
import 'package:walk_dog_app/routes/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//inyections

import 'app/di_injectable.dart';

void main() async {
  // getItSetup();
  configureDependencies();

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetIt.instance.get<LanguageCubit>()..getCurrentLanguage()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        builder: ((context, child) {
          return const DogWalkingApp();
        }),
      )));
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
