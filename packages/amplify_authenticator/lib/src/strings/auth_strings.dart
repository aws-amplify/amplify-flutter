import 'package:amplify_authenticator/src/internationalization/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/strings/input_strings.dart';
import 'package:amplify_authenticator/src/strings/signin_screen_strings.dart';
import 'package:flutter/material.dart';
 
class AuthStrings {
  AuthenticatorLocalizations? localizations;
  
  AuthStrings({this.localizations});

  String get title {
    return localizations != null ? localizations!.signIn_title : SignInStrings.title;
  }

  String get username_title {
    return localizations != null ? localizations!.username_title : InputStrings.username_title;
  }

  String get username_hint {
    return localizations != null ? localizations!.username_hint : InputStrings.username_hint;
  }

}