import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocale.dart';
import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizedValues.dart';

class AuthenticatorLocales {
  final List<AuthenticatorLocale> _locales;
  
  const AuthenticatorLocales(this._locales);

  List<AuthenticatorLocale> get locales {
    return _locales;
  }

}
