import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Our custom button string resolver which calls into our localizations class.
class LocalizedCountryResolver extends CountryResolver {
  const LocalizedCountryResolver();

  @override
  String unitedStates(BuildContext context) {
    return AppLocalizations.of(context).unitedStates;
  }

  @override
  String selectDialCode(BuildContext context) {
    return AppLocalizations.of(context).selectDialCode;
  }
}
