// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:puppeteer/puppeteer.dart';

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
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final configureButtonFinder = find.byValueKey('configure-button');
    final signInButtonFinder = find.byValueKey('sign-in-button');
    final socialSignInButtonFinder = find.byValueKey('social-sign-in-button');

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
      // First, tap the button.
      await driver.tap(configureButtonFinder);
      final isSignInDisplayed = await isPresent(signInButtonFinder, driver);
      // Then, verify the counter text is incremented by 1.
      expect(isSignInDisplayed, true);
    });

    test('test hosted ui', () async {
      // First, tap the button.
      await driver.tap(socialSignInButtonFinder);

      var browser = await puppeteer.connect();
      print("browser: " + browser.connection.toString());
    });
  });
}
