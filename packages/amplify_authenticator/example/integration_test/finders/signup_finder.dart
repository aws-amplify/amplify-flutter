import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

final usernameSignUpFormField =
    find.byKey(const Key(keyUsernameSignUpFormfield));
final emailSignUpFormField = find.byKey(const Key(keyEmailSignUpFormField));
final phoneNumberSignUpFormField =
    find.byKey(const Key(keyPhoneNumberSignUpFormField));
final passwordSignUpFormField =
    find.byKey(const Key(keyPasswordSignUpFormfield));
final signUpButton = find.byKey(const Key(keySignUpButton));
final gotToSignUpButton = find.byKey(const Key(keyGoToSignUpButton));
