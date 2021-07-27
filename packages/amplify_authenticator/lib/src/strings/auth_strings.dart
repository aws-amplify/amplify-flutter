import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/strings/auth_strings_interface.dart';
import 'package:amplify_authenticator/src/strings/input_strings.dart';
import 'package:amplify_authenticator/src/strings/signin_screen_strings.dart';
import 'package:flutter/material.dart';
 
class AuthStrings extends AuthStringsInterface {
  late SignInStrings signIn;
  late InputStrings inputs;
  
  AuthStrings({AuthStringsResolver? resolver}) {
    this.resolver = resolver;
    this.signIn = SignInStrings(resolver: resolver);
    this.inputs = InputStrings(resolver: resolver);
  }
}