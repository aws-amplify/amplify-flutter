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

import 'package:aft/aft.dart';
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
  Future<PackageInfo> get packageToTest async {
    if (workingDirectory.pubspec == null) {
      exitError('Current directory has no pubspec.yaml');
    }
    final packages = await allPackages;
    return packages.values.singleWhere(
      (el) => el.path == workingDirectory.path,
    );
  }

  Future<List<TestReport>> executeTest(
    PackageInfo package, {
    List<String>? arguments,
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
          // runInShell: true,
        );
        break;
    }
    final reportBuilders = <int, TestReportBuilder>{};
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
        switch (testEvent.type) {
          case 'testStart':
            testEvent as TestStartEvent;
            final url = testEvent.test.url ?? testEvent.test.rootUrl;
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
            final reportBuilder = reportBuilders[testEvent.testID];
            if (reportBuilder == null) {
              return;
            }
            _scoreTest(testEvent, reportBuilder);
            final report = reportBuilder.build();
            printResult(report, verbose: verbose);
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
    if (!event.hidden) {
      switch (event.result) {
        case vgv.TestResult.success:
          testReport.result = TestResult.pass;
          break;
        case vgv.TestResult.failure:
        case vgv.TestResult.error:
          testReport.result = TestResult.fail;
          break;
      }
    }
    if (event.skipped) {
      testReport.result = TestResult.skip;
    }
  }
}
