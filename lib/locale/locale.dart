import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/config/app_config.dart';
import 'package:walk_dog_app/locale/language/english.dart';
import 'package:walk_dog_app/locale/language/spanish.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': english(),
    'es': spanish(),
  };

  String? get signInNow {
    return _localizedValues[locale.languageCode]!['signInNow'];
  }

  String? get onboardingTitle {
    return _localizedValues[locale.languageCode]!['onboardingTitle'];
  }

  String? get onboardingSubtitle {
    return _localizedValues[locale.languageCode]!['onboardingSubtitle'];
  }

  String? get onboardingButton {
    return _localizedValues[locale.languageCode]!['onboardingButton'];
  }

  String? get joinOurCommunity {
    return _localizedValues[locale.languageCode]!['joinOurCommunity'];
  }

  String? get alreadyAMember {
    return _localizedValues[locale.languageCode]!['alreadyAMember'];
  }

  //signup

  String? get titleSignUp {
    return _localizedValues[locale.languageCode]!['titleSignUp'];
  }

  String? get subtitleSignUp {
    return _localizedValues[locale.languageCode]!['subtitleSignUp'];
  }

  String? get signUpButton {
    return _localizedValues[locale.languageCode]!['signUpButton'];
  }

  String? get connectWithFacebook {
    return _localizedValues[locale.languageCode]!['connectWithFacebook'];
  }

  String? get connectWithGoogle {
    return _localizedValues[locale.languageCode]!['connectWithGoogle'];
  }

  String? get fullName {
    return _localizedValues[locale.languageCode]!['fullName'];
  }

  String? get phone {
    return _localizedValues[locale.languageCode]!['phone'];
  }

  String? get passsword {
    return _localizedValues[locale.languageCode]!['passsword'];
  }

  static List<Locale> getSupportedLocales() {
    List<Locale> toReturn = [];
    for (String langCode in AppConfig.languagesSupported.keys) {
      toReturn.add(Locale(langCode));
    }
    return toReturn;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'es',
      ].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AppLocalizations.
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
