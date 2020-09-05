// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'dart:math';
import './finders.dart';

void main() {

  var random = new Random().nextInt(9999).toString();
  var dynamicUsername = "user" + random;
  var dynamicPassword = "password" + random;

  isPresent(SerializableFinder byValueKey, FlutterDriver driver, {Duration timeout = const Duration(seconds: 1)}) async {
    try {
      await driver.waitFor(byValueKey,timeout: timeout);
      return true;
    } catch(exception) {
      return false;
    }
  }
  group('Cognito Example App', () {

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('configures the application', () async {
      await driver.tap(configureButtonFinder);
      await driver.waitFor(signInFinder);
      var authState = await driver.getText(authStateFinder);
      expect(authState, "User not signed in");
    });

    test('attempts user signup and displays invalid parameter exception w/ malformed email', () async {

      // navigate to sign up widget
      await driver.tap(gotoSignUpButtonFinder);

      // fill out signup form
      await driver.tap(signupUsernameFinder);
      await driver.enterText(dynamicUsername);
      await driver.tap(signupPasswordFinder);
      await driver.enterText(dynamicPassword);
      await driver.tap(signupEmailFinder);
      await driver.enterText('test@');
      await driver.tap(signupPhoneFinder);
      await driver.enterText('+15555555555');

      // attempt signup
      await driver.tap(signUpButtonFinder);

      // wait for error card
      await driver.waitFor(errorCardFinder);

      // find authstate and error texts
      var authState = await driver.getText(authStateFinder);
      var error = await driver.getText(errorFinder);
      var exception1 = await driver.getText(exception1Finder);
      var exception2 = await driver.getText(exception2Finder);

      // test
      expect(authState, "User not signed in");
      expect(error, "AMPLIFY_SIGNUP_FAILED");
      expect(["INVALID_PARAMETER", "PLATFORM_EXCEPTIONS"].contains(exception1), true);
      expect(["INVALID_PARAMETER", "PLATFORM_EXCEPTIONS"].contains(exception2), true);
    });

    test('signs up a new user and display confirmation component', () async {

      // fill out signup form
      await driver.tap(signupUsernameFinder);
      await driver.enterText(dynamicUsername);
      await driver.tap(signupPasswordFinder);
      await driver.enterText(dynamicPassword);
      await driver.tap(signupEmailFinder);
      await driver.enterText('test@test.com');
      await driver.tap(signupPhoneFinder);
      await driver.enterText('+15555555555');

      // attempt signup
      await driver.tap(signUpButtonFinder);

      // wait for error card
      await driver.waitFor(confirmSignUpFinder);

      // find authstate and error texts
      var authState = await driver.getText(authStateFinder);

      // test
      expect(authState, "Sign Up Status = CONFIRM_SIGN_UP_STEP");
    });

    test('attempts confirmation and displays error', () async {

      // fill out confirmation form
      await driver.tap(confirmSignUpUsernameFinder);
      await driver.enterText(dynamicUsername);
      await driver.tap(confirmSignUpCodeFinder);
      await driver.enterText('123456');

      // attempt signup
      await driver.tap(confirmSignUpButtonFinder);

      // find authstate and error texts
      var error = await driver.getText(errorFinder);
      var exception1 = await driver.getText(exception1Finder);
      var exception2 = await driver.getText(exception2Finder);

      // test
      expect(error, "AMPLIFY_CONFIRM_SIGNUP_FAILED");
      expect(["CODE_MISMATCH", "PLATFORM_EXCEPTIONS"].contains(exception1), true);
      expect(["CODE_MISMATCH", "PLATFORM_EXCEPTIONS"].contains(exception2), true);
    });

    test('attempts getCurrentUser and displays error', () async {

      // navigate to signin widget
      await driver.tap(gotoSignInButtonFinder);

      // wait for signin widget to display
      await driver.waitFor(signInFinder);

      // clicks getCurrentUser
      await driver.tap(curretUserButtonFinder);

      // find authstate and error texts
      var error = await driver.getText(errorFinder);
      var exception1 = await driver.getText(exception1Finder);
      var exception2 = await driver.getText(exception2Finder);

      // test
      expect(error, "AMPLIFY_GET_CURRENT_USER_FAILED");
      expect(["SIGNED_OUT", "PLATFORM_EXCEPTIONS"].contains(exception1), true);
      expect(["SIGNED_OUT", "PLATFORM_EXCEPTIONS"].contains(exception2), true);
    });

    test('attempts fetchSession and displays error', () async {

      // clicks fetchSession
      await driver.tap(sessionButtonFinder);

      // find authstate and error texts
      var error = await driver.getText(errorFinder);
      var exception1 = await driver.getText(exception1Finder);
      var exception2 = await driver.getText(exception2Finder);

      // test
      expect(error, "AMPLIFY_FETCH_SESSION_FAILED");
      expect(["SIGNED_OUT", "PLATFORM_EXCEPTIONS"].contains(exception1), true);
      expect(["SIGNED_OUT", "PLATFORM_EXCEPTIONS"].contains(exception2), true);
    });
  });
}
