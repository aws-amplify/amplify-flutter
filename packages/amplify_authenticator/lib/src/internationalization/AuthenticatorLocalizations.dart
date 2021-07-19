import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocale.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocales.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizedValues.dart';
import 'package:flutter/widgets.dart';

class AuthenticatorLocalizations {

  AuthenticatorLocale locale;
  // List<AuthenticatorLocale> localeList;

    AuthenticatorLocalizations(this.locale);


  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(context, AuthenticatorLocalizations)!;
  }

  String get title {
    return locale.localizationValues.signIn_title;
  }
}