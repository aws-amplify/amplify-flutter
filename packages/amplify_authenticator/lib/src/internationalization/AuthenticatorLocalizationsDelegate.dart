import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class AuthenticatorLocalizationsDelegate extends LocalizationsDelegate<AuthenticatorLocalizations> {
  const AuthenticatorLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<AuthenticatorLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<AuthenticatorLocalizations>(AuthenticatorLocalizations(locale));
  }

  @override
  bool shouldReload(AuthenticatorLocalizationsDelegate old) => false;
}