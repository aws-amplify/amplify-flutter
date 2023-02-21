// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('windows || mac-os || linux')

import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_client.dart';
import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_common.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:checks/checks.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:io/io.dart';
import 'package:test/test.dart';
import 'package:webdriver/async_io.dart' hide LogLevel;

void main() {
  final logger = AWSLogger().createChild('Hosted UI');
  final processManager = ProcessManager();
  AWSLogger().logLevel = LogLevel.verbose;

  group('Hosted UI', () {
    late FlutterDriver driver;
    late WebDriver webDriver;
    late HostedUiClient application;
    late String username;
    late String password;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      addTearDown(driver.close);
    });

    setUp(() async {
      await processManager.spawnBackgroundInTest('chromedriver', [
        '--port=$chromedriverPort',
      ]);

      final config = amplifyEnvironments['hosted-ui']!;
      application = await HostedUiClient.connect(config);
      addTearDown(application.close);

      await Amplify.configure(config);
      addTearDown(Amplify.reset);

      username = generateUsername();
      password = generatePassword();

      logger.debug('Creating user $username...');
      await adminCreateUser(username, password, autoConfirm: true);
      addTearDown(() => deleteUser(username));

      webDriver = await createWebDriver();
      addTearDown(webDriver.quit);
    });

    test('sign in / sign out', () async {
      // Launch Hosted UI
      final signInUrl = await application.signInWithWebUI();
      logger.info('Launching URL: $signInUrl');
      await webDriver.get(signInUrl);

      await webDriver.signInCognito(username: username, password: password);
      {
        final credentials = await application.getCredentials();
        check(
          because: 'User should be logged in after redirect',
          credentials.userPoolTokens,
        ).isNotNull();
      }

      final signOutUrl = await application.signOutWithWebUI();
      logger.info('Launching URL: $signOutUrl');
      await webDriver.get(signOutUrl);
      {
        final credentials = await application.getCredentials();
        check(
          because: 'User should be signed out without redirecting',
          credentials,
        )
          ..has((creds) => creds.awsCredentials, 'awsCredentials').isNull()
          ..has((creds) => creds.identityId, 'identityId').isNull()
          ..has((creds) => creds.userPoolTokens, 'userPoolTokens').isNull();
      }
    });
  });
}
