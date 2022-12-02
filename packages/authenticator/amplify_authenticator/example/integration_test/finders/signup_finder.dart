import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';

/// Find specific widgets in the widget tree based on their keys
final usernameSignUpFormFieldFinder = find.byKey(keyUsernameSignUpFormField);
final emailSignUpFormFieldFinder = find.byKey(keyEmailSignUpFormField);
final phoneNumberSignUpFormFieldFinder =
    find.byKey(keyPhoneNumberSignUpFormField);
final passwordSignUpFormFieldFinder = find.byKey(keyPasswordSignUpFormField);
final signUpButtonFinder = find.byKey(keySignUpButton);
final gotToSignUpButtonFinder = find.byKey(keyGoToSignUpButton);
