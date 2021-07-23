import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

final usernameSignInFormFieldFinder =
    find.byKey(const Key(keyUsernameSignInFormfield));
final emailSignInFormFieldFinder =
    find.byKey(const Key(keyEmailSignInFormfield));
final phoneNumberSignInFormFieldFinder =
    find.byKey(const Key(keyPhoneNumberSignInFormfield));
final passwordSignInFormFieldFinder =
    find.byKey(const Key(keyPasswordSignInFormfield));
final signInButtonFinder = find.byKey(const Key(keySignInButton));
final signOutButtonFinder = find.byKey(const Key(keySignOutButton));
