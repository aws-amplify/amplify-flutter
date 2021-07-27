import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/strings/input_strings.dart';
import 'package:amplify_authenticator/src/strings/signin_screen_strings.dart';
import 'package:flutter/material.dart';
 
abstract class AuthStringsInterface {
  AuthStringsResolver? resolver;
  
  AuthStrings({AuthStringsResolver? resolver}) {
    this.resolver = resolver;
  }
}