import 'package:flutter/widgets.dart';

class AuthenticatorLocalizations {
  AuthenticatorLocalizations(this.locale);

  final Locale locale;

  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(context, AuthenticatorLocalizations)!;
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Hello World',
    },
    'es': {
      'title': 'Hola Mundo',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }
}