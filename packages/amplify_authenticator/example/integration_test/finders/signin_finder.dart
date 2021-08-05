import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

/// Find specific widgets in the widget tree based on their keys
final usernameSignInFormFieldFinder =
    find.byKey(const Key(keyUsernameSignInFormField));
final emailSignInFormFieldFinder =
    find.byKey(const Key(keyEmailSignInFormField));
final phoneNumberSignInFormFieldFinder =
    find.byKey(const Key(keyPhoneNumberSignInFormField));
final passwordSignInFormFieldFinder =
    find.byKey(const Key(keyPasswordSignInFormField));
final signInButtonFinder = find.byKey(const Key(keySignInButton));
final signOutButtonFinder = find.byKey(const Key(keySignOutButton));
