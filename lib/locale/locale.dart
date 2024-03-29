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

  String? get name {
    return _localizedValues[locale.languageCode]!['name'];
  }

  String? get lastName {
    return _localizedValues[locale.languageCode]!['lastName'];
  }

  String? get phone {
    return _localizedValues[locale.languageCode]!['phone'];
  }

  String? get passsword {
    return _localizedValues[locale.languageCode]!['passsword'];
  }

  String? get homeTitle {
    return _localizedValues[locale.languageCode]!['homeTitle'];
  }

  String? get homeSubtitle {
    return _localizedValues[locale.languageCode]!['homeSubtitle'];
  }

  String? get nearYou {
    return _localizedValues[locale.languageCode]!['nearYou'];
  }

  String? get viewAll {
    return _localizedValues[locale.languageCode]!['viewAll'];
  }

  String? get homeMenu {
    return _localizedValues[locale.languageCode]!['homeMenu'];
  }

  String? get homeMoments {
    return _localizedValues[locale.languageCode]!['homeMoments'];
  }

  String? get homeChat {
    return _localizedValues[locale.languageCode]!['homeChat'];
  }

  String? get homeProfile {
    return _localizedValues[locale.languageCode]!['homeProfile'];
  }

  String? get homeNearYou {
    return _localizedValues[locale.languageCode]!['homeNearYou'];
  }

  String? get homeSuggested {
    return _localizedValues[locale.languageCode]!['homeSuggested'];
  }

  String? get topWalkers {
    return _localizedValues[locale.languageCode]!['topWalkers'];
  }

  //book-walk
  String? get bookWalkTitle {
    return _localizedValues[locale.languageCode]!['bookWalkTitle'];
  }

  String? get bookWalkSubtitle {
    return _localizedValues[locale.languageCode]!['bookWalkSubtitle'];
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
