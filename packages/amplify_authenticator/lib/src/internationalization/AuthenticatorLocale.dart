import 'package:amplify_authenticator/src/internationalization/AuthenticatorLocalizedValues.dart';

class AuthenticatorLocale {
    final String languageCode;
    final AuthenticatorLocalizedValues localizationValues;

    const AuthenticatorLocale(this.languageCode, this.localizationValues, {String countryCode = ''});
}
