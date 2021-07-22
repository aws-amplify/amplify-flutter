import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/internationalization/authenticator_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';


class AuthenticatorLocalizationsDelegate extends LocalizationsDelegate<AuthenticatorLocalizations> {

  final List<AuthenticatorLocale> localeList;

  const AuthenticatorLocalizationsDelegate(this.localeList);

  @override
  bool isSupported(Locale locale) => localeList.contains(locale);

  @override
  Future<AuthenticatorLocalizations> load(Locale locale) {

    //TODO: instead of exact match, implement fallback strategy
    try {
      var currentLocalization = localeList.firstWhere((element) => 
        element.languageCode == locale.languageCode && 
        element.countryCode == locale.countryCode &&
        element.scriptCode == locale.scriptCode
      );

      // Returning a SynchronousFuture here because an async "load" operation
      // isn't needed to produce an instance of AuthenticatorLocalizations.
      return SynchronousFuture<AuthenticatorLocalizations>(AuthenticatorLocalizations(currentLocalization));
    } catch (e) {
        throw e;
    }
  }

  @override
  bool shouldReload(AuthenticatorLocalizationsDelegate old) => false;
  
}