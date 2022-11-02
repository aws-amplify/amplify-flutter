// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:aft/aft.dart';
import 'package:aft/src/active_device.dart';
import 'package:aft/src/commands/test/integration_test_command.dart';
import 'package:aft/src/commands/test/unit_test_command.dart';
import 'package:aft/src/test_reports/print_results.dart';
import 'package:aft/src/test_reports/test_report.dart';
import 'package:aft/src/test_reports/test_result.dart';
import 'package:path/path.dart' as p;
import 'package:very_good_test_runner/very_good_test_runner.dart'
    hide TestResult;
import 'package:very_good_test_runner/very_good_test_runner.dart' as vgv
    show TestResult;

/// Top-level command for running Flutter, Dart and integration tests.
class TestCommand extends AmplifyCommand {
  TestCommand() {
    addSubcommand(UnitTestCommand());
    addSubcommand(IntegrationTestCommand());
  }

  @override
  String get description =>
      'Top-level command for running Flutter, Dart and integration tests.';

  @override
  String get name => 'test';
}

abstract class BaseTestCommand extends AmplifyCommand {
  /// Returns the package to test, i.e. the package of the current directory.
  Future<PackageInfo> get packageToTest async {
    if (workingDirectory.pubspec == null) {
      exitError('Current directory has no pubspec.yaml');
    }
    final packages = await allPackages;
    return packages.values.singleWhere(
      (el) => el.path == workingDirectory.path,
    );
  }

  /// Gets the active devices as provided by `flutter devices`.
  Future<List<ActiveDevice>> getActiveDevices() async {
    final result = await executeProcess(
      PackageFlavor.flutter,
      const ['devices', '--machine'],
      printStream: false,
    );

    return (json.decode(result) as List)
        .map((i) => ActiveDevice.fromJson((i as Map).cast()))
        .toList();
  }

  /// Executes tests for [package] and returns the list of reports.
  Future<List<TestReport>> executeTests(
    PackageInfo package, {
    required List<String> arguments,
  }) async {
    Stream<TestEvent> testStream;
    switch (package.flavor) {
      case PackageFlavor.flutter:
        testStream = flutterTest(
          arguments: arguments,
          workingDirectory: package.path,
          // runInShell required for Windows
          runInShell: true,
        );
        break;
      case PackageFlavor.dart:
        testStream = dartTest(
          arguments: arguments,
          workingDirectory: package.path,
        );
        break;
    }
    final reportBuilders = <int, TestReportBuilder>{};
    final suitePaths = <int, String?>{};
    final reports = <TestReport>[];
    testStream = testStream.handleError((Object error) {
      // These can be non-harmful errors such as
      // `Warning: pubspec.yaml has overrides from pubspec_overrides.yaml`
      // Log and evaluate if further action is needed.
      logger.stderr(error.toString());
    });
    final completer = Completer<void>.sync();
    testStream.listen(
      (testEvent) {
        logger.trace('Got ${testEvent.type} event');
        switch (testEvent.type) {
          case 'suite':
            testEvent as SuiteTestEvent;
            logger.trace('  ID: ${testEvent.suite.id}');
            suitePaths[testEvent.suite.id] = testEvent.suite.path;
            break;
          case 'allSuites':
            testEvent as AllSuitesTestEvent;
            logger.trace('  # of Suites: ${testEvent.count}');
            break;
          case 'testStart':
            testEvent as TestStartEvent;
            var url = testEvent.test.url;
            if (url == null ||
                // Happens with integ tests for some reason.
                url.startsWith('package:flutter_test')) {
              url = suitePaths[testEvent.test.suiteID];
            }
            logger
              ..trace('  ID: ${testEvent.test.id}')
              ..trace('  URL: $url')
              ..trace('  Name: ${testEvent.test.name}');
            if (url == null) {
              return;
            }
            final reportBuilder = TestReportBuilder()
              ..testName = testEvent.test.name
              ..testId = testEvent.test.id
              ..fileName = p.basename(url);
            reportBuilders[testEvent.test.id] = reportBuilder;
            break;
          case 'error':
            testEvent as ErrorTestEvent;
            logger
              ..trace('  ID: ${testEvent.testID}')
              ..trace('  Is TestFailure: ${testEvent.isFailure}')
              ..trace('  Error: ${testEvent.error}')
              ..trace('  StackTrace: ${testEvent.stackTrace}');
            final reportBuilder = reportBuilders[testEvent.testID];
            if (reportBuilder == null) {
              return;
            }
            if (testEvent.isFailure) {
              reportBuilder.failures.add(
                '${testEvent.error}\n${testEvent.stackTrace}',
              );
              reportBuilder.result = TestResult.fail;
            } else {
              logger.stderr('${testEvent.error}\n${testEvent.stackTrace}');
            }
            break;
          case 'testDone':
            testEvent as TestDoneEvent;
            logger
              ..trace('  ID: ${testEvent.testID}')
              ..trace('  Hidden: ${testEvent.hidden}')
              ..trace('  Skipped: ${testEvent.skipped}')
              ..trace('  Result: ${testEvent.result.name}');
            final reportBuilder = reportBuilders[testEvent.testID];
            if (reportBuilder == null) {
              return;
            }
            if (testEvent.hidden) {
              return;
            }
            _scoreTest(testEvent, reportBuilder);
            final report = reportBuilder.build();
            printResult(report);
            reports.add(report);
            break;
          case 'exit':
            if (!completer.isCompleted) completer.complete();
        }
      },
      onDone: () {
        if (!completer.isCompleted) completer.complete();
      },
    );
    await completer.future;
    return reports;
  }

  void _scoreTest(TestDoneEvent event, TestReportBuilder testReport) {
    switch (event.result) {
      case vgv.TestResult.success:
        testReport.result = TestResult.pass;
        break;
      case vgv.TestResult.failure:
      case vgv.TestResult.error:
        testReport.result = TestResult.fail;
        break;
    }
    if (event.skipped) {
      testReport.result = TestResult.skip;
    }
  }
}
