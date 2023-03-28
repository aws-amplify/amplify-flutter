// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:io/io.dart';
import 'package:test/test.dart';
import 'package:webdriver/async_io.dart';

/// The name of the database to use in Web.
const String webDatabaseName = 'dart-auth-test';

/// The URI for the RPC server, used to drive VM tests.
final Uri rpcUri = Uri.parse('ws://localhost:4321');

/// The port to launch chromedriver on.
const int chromedriverPort = 4444;

/// The URI of chromedriver.
final Uri driverUri = Uri.parse('http://localhost:$chromedriverPort/');

/// Logger for Chrome console logs.
final AWSLogger _chromeLogger = AWSLogger().createChild('Chrome');

/// Creates a [WebDriver] at the default [driverUri].
Future<WebDriver> createWebDriver({bool headless = false}) async {
  final driver = await createDriver(
    uri: driverUri,
    // From: https://github.com/flutter/flutter/blob/9944297138845a94256f1cf37beb88ff9a8e811a/packages/flutter_tools/lib/src/drive/web_driver_service.dart#L252
    desired: {
      'acceptInsecureCerts': true,
      'browserName': 'chrome',
      'goog:loggingPrefs': <String, String>{
        LogType.browser: 'INFO',
        LogType.performance: 'ALL',
      },
      'goog:chromeOptions': <String, dynamic>{
        'w3c': false,
        'args': <String>[
          '--bwsi',
          '--disable-background-timer-throttling',
          '--disable-default-apps',
          '--disable-extensions',
          '--disable-popup-blocking',
          '--disable-translate',
          '--no-default-browser-check',
          '--no-sandbox',
          '--no-first-run',
          if (headless) '--headless',
        ],
        'perfLoggingPrefs': <String, String>{
          'traceCategories': 'devtools.timeline,'
              'v8,blink.console,benchmark,blink,'
              'blink.user_timing',
        },
      },
    },
  );

  // Listen to the browser's console logs and forward them to our logger.
  driver.logs.get(LogType.browser).listen(
        (log) => _chromeLogger.info('$log'),
      );
  return driver;
}

/// Helpers for using a [WebDriver] in Hosted UI tests.
extension HostedUiWebDriver on WebDriver {
  /// Changes to the browser's current URI.
  Stream<Uri> get locationChanges async* {
    while (true) {
      try {
        yield Uri.parse(await currentUrl);
        await Future<void>.delayed(const Duration(milliseconds: 50));
      } on Object {
        return;
      }
    }
  }

  /// Waits for a web element, identified by [by], to appear in the document.
  Future<WebElement> waitFor(
    By by, {
    Duration timeout = const Duration(seconds: 30),
  }) async {
    final stopwatch = Stopwatch()..start();
    while (stopwatch.elapsed < timeout) {
      try {
        return await findElement(by);
      } on NoSuchElementException {
        await Future<void>.delayed(const Duration(milliseconds: 100));
        continue;
      }
    }
    throw NoSuchElementException(null, 'Could not locate element for: $by');
  }

  /// Signs into the Cognito Hosted UI portal.
  ///
  /// Must be presently at the Cognito Hosted UI login page.
  Future<void> signInCognito({
    required String username,
    required String password,
  }) async {
    await execute(
      '''
const usernameInput = document.getElementById('signInFormUsername');
usernameInput.scrollIntoView();
usernameInput.value = '$username';

const passwordInput = document.getElementById('signInFormPassword');
passwordInput.scrollIntoView();
passwordInput.value = '$password';

const loginButton = document.getElementsByName('signInSubmitButton')[0];
loginButton.scrollIntoView();
loginButton.click();
''',
      [],
    );

    await locationChanges.firstWhere((uri) => uri.host == 'localhost');
  }
}

/// Helpers for managing child processes in tests.
extension ProcessManagerExtension on ProcessManager {
  /// Spawns a background process and monitors it to ensure any errors bubble
  /// up into the test and that cleanup is performed at the end of the test.
  Future<Process> spawnBackgroundInTest(
    String executable, [
    List<String> args = const [],
  ]) async {
    final proc = await spawnBackground(executable, args);
    var inTest = true;
    unawaited(
      proc.exitCode.then((exitCode) {
        if (exitCode != 0 && inTest) {
          fail('`$executable` process exited with code: $exitCode');
        }
      }),
    );
    addTearDown(() async {
      inTest = false;
      proc.kill();
      await proc.exitCode;
    });
    return proc;
  }
}
