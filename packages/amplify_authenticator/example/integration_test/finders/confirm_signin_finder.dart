import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

final codeConfirmSignInFormFieldFinder =
    find.byKey(const Key(keyCodeConfirmSignInFormfield));

final backToSignInButtonFinder = find.byKey(const Key(keyBackToSignInButton));

final confirmSignInButtonFinder = find.byKey(const Key(keyConfirmSignInButton));
