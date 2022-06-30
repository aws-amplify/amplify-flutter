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
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/test_report.dart';
import 'package:aft/src/test_report_folio.dart';
import 'package:aft/src/utils/emphasize_text.dart';
import 'package:aft/src/utils/select_packages.dart';
import 'package:path/path.dart' as p;
import 'package:very_good_test_runner/very_good_test_runner.dart';

/// Command to run Flutter and Dart unit tests.
class UnitTestCommand extends AmplifyCommand {
  @override
  String get description => 'Runs Flutter and Dart unit tests';

  @override
  String get name => 'unit';

  final _testReports = <TestReport>[];

  @override
  Future<TestReportFolio> run() async {
    final packages = await allPackages;

    final testablePackages = packages
        .where(
          (package) => package.unitTestDirectory != null,
        )
        .toList();

    final selectedPackages = await selectPackages(testablePackages);

    if (selectedPackages.isEmpty) {
      stderr.writeln(formatException('You did not select any packages.'));
      exit(1);
    }

    final folio = TestReportFolio(TestType.unit);

    for (final package in selectedPackages) {
      final files = await Directory(p.join(package.path, 'test'))
          .list(
            recursive: true,
          )
          .where((f) => f.path.endsWith('_test.dart'))
          .toList();

      for (final file in files) {
        if (file.path.endsWith('_test.dart')) {
          folio.testReports.add(
            TestReport(package, p.basename(file.path)),
          );
        }
      }

      await _executeTest(package, folio);
    }
    return folio;
  }

  Future<void> _executeTest(
    PackageInfo package,
    TestReportFolio folio,
  ) async {
    final completer = Completer<void>();
    // final relativePath = p.relative(file.path, from: package.path);
    // final fileName = p.basename(file.path);

    switch (package.flavor) {
      case PackageFlavor.flutter:
        flutterTest(
          // arguments: [relativePath],
          workingDirectory: package.path,
        ).listen(
          _onData(
            package,
            folio,
            completer,
          ),
        );
        break;
      case PackageFlavor.dart:
        dartTest(
          // arguments: [relativePath],
          workingDirectory: package.path,
        ).listen(
          _onData(
            package,
            folio,
            completer,
          ),
        );
        break;
    }
    await completer.future;
    // _testReports.add(testReport);
  }

  void Function(TestEvent) _onData(
    PackageInfo package,
    TestReportFolio folio,
    Completer<void> completer,
  ) {
    return (TestEvent event) {
      switch (event.runtimeType) {
        case TestStartEvent:
          final testStartEvent = event as TestStartEvent;
          final url = testStartEvent.test.url ?? testStartEvent.test.rootUrl;
          if (url is String) {
            stdout.writeln(
              'testing ${package.name}: ${testStartEvent.test.name}...',
            );
            final fileName = p.basename(url);
            folio.reportByFile(package, fileName).testId =
                testStartEvent.test.id;
          }
          break;
        case ErrorTestEvent:
          final errorTestEvent = event as ErrorTestEvent;
          if (errorTestEvent.isFailure) {
            folio.reportByTestId(package, errorTestEvent.testID)?.failures.add(
                  '${formatException('Package')}: ${package.name}\nStackTrace: ${errorTestEvent.stackTrace}\n',
                );
          } else {
            folio
                .reportByTestId(package, errorTestEvent.testID)
                ?.exceptions
                .add(
                  '* An Exception occurred in ${package.name} test and was not a test failure.\n  ${errorTestEvent.error}\n',
                );
          }
          break;

        case TestDoneEvent:
          final testDoneEvent = event as TestDoneEvent;
          final report = folio.reportByTestId(package, testDoneEvent.testID);
          if (report != null) {
            _scoreTest(
              testDoneEvent,
              report,
            );
          }
          break;
        case ExitTestEvent:
          final exitTestEvent = event as ExitTestEvent;
          if (exitTestEvent.exitCode != 0) {
            folio.packegesWithExitExceptions.add(package);
          }
          completer.complete();
          break;
      }
    };
  }

  void _scoreTest(TestDoneEvent event, TestReport testReport) {
    if (!event.hidden) {
      switch (event.result) {
        case TestResult.success:
          testReport.testScore.passed++;
          break;
        case TestResult.failure:
          testReport.testScore.failed++;
          break;
        case TestResult.error:
          // This case should be handled by ErrorTestEvent case in _onData
          break;
      }
    }
    if (event.skipped) {
      testReport.testScore.skipped++;
    }
  }
}
