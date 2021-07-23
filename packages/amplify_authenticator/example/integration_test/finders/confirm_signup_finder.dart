import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

final usernameConfirmSignUpFormField =
    find.byKey(const Key(keyUsernameConfirmSignUpFormfield));
final codeConfirmSignUpFormField =
    find.byKey(const Key(keyCodeConfirmSignUpFormfield));
final gotToSignInButton = find.byKey(const Key(keyGoToSignInButton));
