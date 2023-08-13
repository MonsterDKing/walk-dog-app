import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:walk_dog_app/config/app_config.dart';

@Injectable()
class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale('es'));

  void localeSelected(String value) {
    emit(Locale(value));
  }

  getCurrentLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String currLang = sharedPreferences.containsKey("currentLanguageKey")
        ? sharedPreferences.getString("currentLanguageKey")!
        : AppConfig.languageDefault;
    localeSelected(currLang);
  }

  setCurrentLanguage(String langCode, bool save) async {
    if (save) {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setString("currentLanguageKey", langCode);
    }
    localeSelected(langCode);
  }
}
