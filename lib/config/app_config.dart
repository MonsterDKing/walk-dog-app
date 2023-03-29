import 'package:walk_dog_app/locale/language/english.dart';
import 'package:walk_dog_app/locale/language/spanish.dart';

class AppConfig {
  static const String appName = "Dog Walking App";
  static const bool isDemoMode = true;
  static const String languageDefault = "es";
  static final Map<String, AppLanguage> languagesSupported = {
    "en": AppLanguage("English", english()),
    "es": AppLanguage("Español", spanish()),
  };
}

class AppLanguage {
  final String name;
  final Map<String, String> values;
  AppLanguage(this.name, this.values);
}
