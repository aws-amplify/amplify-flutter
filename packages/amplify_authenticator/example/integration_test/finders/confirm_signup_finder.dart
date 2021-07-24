import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

final usernameConfirmSignUpFormFieldFinder =
    find.byKey(const Key(keyUsernameConfirmSignUpFormfield));
final codeConfirmSignUpFormFieldFinder =
    find.byKey(const Key(keyCodeConfirmSignUpFormfield));
final backToSignInButtonFinder = find.byKey(const Key(keyBackToSignInButton));
