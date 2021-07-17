import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocale.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocales.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizedValues.dart';
import 'package:flutter/widgets.dart';

class AuthenticatorLocalizations {

  Locale locale;
  List<AuthenticatorLocale> localeList;

  // AuthenticatorLocalizations(locale, localeList) : this.locale = locale, this.localeList = localeList;
    AuthenticatorLocalizations(this.locale, this.localeList);


  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(context, AuthenticatorLocalizations)!;
  }

  String get title {
    var title = localeList.firstWhere((element) => element.languageCode == locale.languageCode).localizationValues.signIn_title;
    return title != null ? title : 'default title';
  }
}