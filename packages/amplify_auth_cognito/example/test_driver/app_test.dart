// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import './finders.dart';

void main() {


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
      await driver.waitFor(signInButtonFinder);
      await Future.delayed(Duration(seconds: 1));
      var authState = await driver.getText(authStateFinder);
      expect(authState, "User not signed in");
    });

    test('signs up an existing user and displays username exists exception', () async {

      // navigate to sign up widget
      await driver.tap(gotoSignUpButtonFinder);
      await driver.waitFor(signUpButtonFinder);

      // fill out signup form
      await driver.tap(signupUsernameFinder);
      await driver.enterText('testuser');
      await driver.tap(signupPasswordFinder);
      await driver.enterText('testpassword');
      await driver.tap(signupEmailFinder);
      await driver.enterText('test@test.com');
      await driver.tap(signupPhoneFinder);
      await driver.enterText('+15555555555');

      // attempt signup
      await driver.tap(signUpButtonFinder);

      // find authstate and error texts
      var authState = await driver.getText(authStateFinder);
      var error = await driver.getText(errorFinder);
      var exception1 = await driver.getText(exception1Finder);
      var exception2 = await driver.getText(exception2Finder);

      // test
      expect(authState, "User not signed in");
      expect(error, "AMPLIFY_SIGNUP_FAILED");
      expect(["USERNAME_EXISTS", "PLATFORM_EXCEPTIONS"].contains(exception1), true);
      expect(["USERNAME_EXISTS", "PLATFORM_EXCEPTIONS"].contains(exception2), true);

      // navigate to signin widget
      await driver.tap(gotoSignInButtonFinder);
    });

    test('signs up an existing user and displays username exists exception', () async {

      // navigate to sign up widget
      await driver.tap(gotoSignUpButtonFinder);
      await driver.waitFor(signUpButtonFinder);

      // fill out signup form
      await driver.tap(signupUsernameFinder);
      await driver.enterText('testuser');
      await driver.tap(signupPasswordFinder);
      await driver.enterText('testpassword');
      await driver.tap(signupEmailFinder);
      await driver.enterText('test@test.com');
      await driver.tap(signupPhoneFinder);
      await driver.enterText('+15555555555');

      // attempt signup
      await driver.tap(signUpButtonFinder);

      // find authstate and error texts
      var authState = await driver.getText(authStateFinder);
      var error = await driver.getText(errorFinder);
      var exception1 = await driver.getText(exception1Finder);
      var exception2 = await driver.getText(exception2Finder);

      // test
      expect(authState, "User not signed in");
      expect(error, "AMPLIFY_SIGNUP_FAILED");
      expect(["USERNAME_EXISTS", "PLATFORM_EXCEPTIONS"].contains(exception1), true);
      expect(["USERNAME_EXISTS", "PLATFORM_EXCEPTIONS"].contains(exception2), true);

      // navigate to signin widget
      await driver.tap(gotoSignInButtonFinder);
    });

  });


}
