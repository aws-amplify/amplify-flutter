import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';

/// Find specific widgets in the widget tree based on their keys
final usernameConfirmSignUpFormFieldFinder =
    find.byKey(keyUsernameConfirmSignUpFormField);
final codeConfirmSignUpFormFieldFinder =
    find.byKey(keyCodeConfirmSignUpFormField);
final backToSignInButtonFinder = find.byKey(keyBackToSignInButton);
