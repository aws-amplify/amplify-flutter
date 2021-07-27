import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

final usernameSignUpFormFieldFinder =
    find.byKey(const Key(keyUsernameSignUpFormField));
final emailSignUpFormFieldFinder =
    find.byKey(const Key(keyEmailSignUpFormField));
final phoneNumberSignUpFormFieldFinder =
    find.byKey(const Key(keyPhoneNumberSignUpFormField));
final passwordSignUpFormFieldFinder =
    find.byKey(const Key(keyPasswordSignUpFormField));
final signUpButtonFinder = find.byKey(const Key(keySignUpButton));
final gotToSignUpButtonFinder = find.byKey(const Key(keyGoToSignUpButton));
