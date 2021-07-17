import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class AuthenticatorLocalizationsDelegate extends LocalizationsDelegate<AuthenticatorLocalizations> {

  final AuthenticatorLocales localeList;
  final AuthenticatorLocale defaultAuthenticatorLocale;

  const AuthenticatorLocalizationsDelegate(this.localeList, this.defaultAuthenticatorLocale);

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<AuthenticatorLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of AuthenticatorLocalizations.

    return SynchronousFuture<AuthenticatorLocalizations>(AuthenticatorLocalizations(locale, localeList.locales));

  }

  @override
  bool shouldReload(AuthenticatorLocalizationsDelegate old) => false;

  
}