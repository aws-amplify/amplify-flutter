import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Our custom button string resolver which calls into our localizations class.
class LocalizedButtonResolver extends ButtonResolver {
  const LocalizedButtonResolver();

  @override
  String changePassword(BuildContext context) {
    return AppLocalizations.of(context)!.changePassword;
  }

  @override
  String confirm(BuildContext context) {
    return AppLocalizations.of(context)!.confirm;
  }

  @override
  String confirmVerifyUser(BuildContext context) {
    return AppLocalizations.of(context)!.confirmVerifyUser;
  }

  @override
  String lostCodeQuestion(BuildContext context) {
    return AppLocalizations.of(context)!.lostCodeQuestion;
  }

  @override
  String sendCode(BuildContext context) {
    return AppLocalizations.of(context)!.sendCode;
  }

  @override
  String signin(BuildContext context) {
    return AppLocalizations.of(context)!.signin;
  }

  @override
  String signout(BuildContext context) {
    return AppLocalizations.of(context)!.signout;
  }

  @override
  String signup(BuildContext context) {
    return AppLocalizations.of(context)!.signup;
  }

  @override
  String submit(BuildContext context) {
    return AppLocalizations.of(context)!.submit;
  }

  @override
  String verifyUser(BuildContext context) {
    return AppLocalizations.of(context)!.verifyUser;
  }
}
