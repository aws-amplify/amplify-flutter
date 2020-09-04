import 'package:flutter_driver/flutter_driver.dart';

// Text Widgets
final authStateFinder = find.byValueKey('auth-state-text');
final errorFinder = find.byValueKey('current-error');
final exception1Finder = find.byValueKey('exception-1');
final exception2Finder = find.byValueKey('exception-2');

// Text Input Widgets
final signupUsernameFinder = find.byValueKey('signup-username-input');
final signupPasswordFinder = find.byValueKey('signup-password-input');
final signupEmailFinder = find.byValueKey('signup-email-input');
final signupPhoneFinder = find.byValueKey('signup-phone-input');

// Button Widgets
final configureButtonFinder = find.byValueKey('configure-button');
final signInButtonFinder = find.byValueKey('signin-button');
final gotoSignUpButtonFinder = find.byValueKey('goto-signup-button');
final gotoSignInButtonFinder = find.byValueKey('goto-signin-button');
final signUpButtonFinder = find.byValueKey('signup-button');
final resetButtonFinder = find.byValueKey('reset-button');
final signoutButtonFinder = find.byValueKey('signout-button');
final sessionButtonFinder = find.byValueKey('session-button');
final curretUserButtonFinder = find.byValueKey('current-user-button');