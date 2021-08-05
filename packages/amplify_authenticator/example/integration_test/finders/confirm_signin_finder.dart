import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_authenticator/src/keys.dart';

/// Find specific widgets in the widget tree based on their keys
final codeConfirmSignInFormFieldFinder =
    find.byKey(const Key(keyCodeConfirmSignInFormfield));

final backToSignInButtonFinder = find.byKey(const Key(keyBackToSignInButton));

final confirmSignInButtonFinder = find.byKey(const Key(keyConfirmSignInButton));
