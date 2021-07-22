import 'package:amplify_authenticator/src/internationalization/authenticator_locale.dart';
import 'package:amplify_authenticator/src/internationalization/authenticator_localized_values.dart';
import 'package:flutter/widgets.dart';

class AuthenticatorLocalizations {

  AuthenticatorLocale locale;

  AuthenticatorLocalizations(this.locale);

  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(context, AuthenticatorLocalizations)!;
  }

  String get signIn_title {
    return locale.localizationValues.signIn_title;
  }

  String get username_title {
    return locale.localizationValues.signIn_title;
  }

  String get username_hint {
    return locale.localizationValues.signIn_title;
  }
}