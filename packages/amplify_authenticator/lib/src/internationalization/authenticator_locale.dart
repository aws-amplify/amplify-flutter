import 'package:amplify_authenticator/src/internationalization/authenticator_localized_values.dart';
import 'package:flutter/widgets.dart';

class AuthenticatorLocale extends Locale {
    final String languageCode;
    final AuthenticatorLocalizedValues localizationValues;

    const AuthenticatorLocale(this.languageCode, this.localizationValues, {String? countryCode}) : super(languageCode, countryCode);
    const AuthenticatorLocale.fromSubtags(this.languageCode, this.localizationValues, {String? countryCode, String? scriptCode}) : super.fromSubtags(languageCode: languageCode, countryCode: countryCode, scriptCode: scriptCode);

}
