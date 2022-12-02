import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';

/// Find specific widgets in the widget tree based on their keys
final usernameSignInFormFieldFinder = find.byKey(keyUsernameSignInFormField);
final passwordSignInFormFieldFinder = find.byKey(keyPasswordSignInFormField);
final signInButtonFinder = find.byKey(keySignInButton);
final signOutButtonFinder = find.byKey(keySignOutButton);
