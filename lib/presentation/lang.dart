import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Lang {
  static const en = Locale('en');
  static const ru = Locale('ru');
  static const supportedLocales = [ru, en];

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizations.delegate;

  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;

  static bool isEn(Locale locale) => locale == en;

  const Lang._(); // no instance
}
