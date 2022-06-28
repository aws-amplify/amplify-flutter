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
import 'package:aft/src/utils/emphasize_text.dart';
import 'package:aft/src/utils/select_packages.dart';
import 'package:very_good_test_runner/very_good_test_runner.dart';

/// Command to run Flutter and Dart unit tests.
class TestCommand extends AmplifyCommand {
  @override
  String get description => 'Runs Flutter and Dart unit tests';

  @override
  String get name => 'unit';

  final _testReport = <String>[
    'Test Results:',
  ];
  final _testResultsController = StreamController<TestDoneEvent>();

  final _testErrors = <String>[
    '${formatException('Problems during testing:')}\n',
  ];
  final _testErrorsController = StreamController<String>();

  final _testFailures = <String>[
    '\n${formatException('Failed tests:')}\n',
  ];
  final _testFailuresController = StreamController<String>();

  @override
  Future<void> run() async {
    final packages = await allPackages;

    final testablePackages = packages
        .where(
          (package) => package.unitTestDirectory != null,
        )
        .toList();

    final selectedPackages = await selectPackages(testablePackages);

    if (selectedPackages.isEmpty) {
      stderr.writeln(formatException('You did not select any tests.'));
      exit(1);
    }

    await _executeTests(selectedPackages);

    stdout.writeln('\n${_testReport.join('')}');

    if (_testFailures.length > 1) {
      stdout.writeln(_testFailures.join('\n'));
    }
    if (_testErrors.length > 1) {
      stdout.writeln(_testErrors.join('\n'));
    }
  }

  Future<String> _executeTests(
    List<PackageInfo> selectedPackages,
  ) async {
    final testResults = <TestDoneEvent>[];
    _testErrorsController.stream.listen(_testErrors.add);
    _testFailuresController.stream.listen(_testFailures.add);
    _testResultsController.stream.listen(testResults.add);

    print('packages.length: ${selectedPackages.length}');

    for (final package in selectedPackages) {
      testResults.clear();
      _testReport.add('\n${package.name}:');
      final completer = Completer<void>();

      switch (package.flavor) {
        case PackageFlavor.flutter:
          flutterTest(
            workingDirectory: package.path,
          ).listen(
            _onData(
              package,
              completer,
            ),
          );
          break;
        case PackageFlavor.dart:
          dartTest(
            workingDirectory: package.path,
          ).listen(
            _onData(
              package,
              completer,
            ),
          );
          break;
      }
      await completer.future;
      _testReport.add(_testScore(testResults));
    }

    // Some exceptions can be emitted after tests are completed, so we pause execution
    await Future<void>.delayed(const Duration(seconds: 2));

    await _testResultsController.sink.close();
    await _testErrorsController.sink.close();
    await _testFailuresController.sink.close();

    return _testReport.join('');
  }

  void Function(TestEvent) _onData(
    PackageInfo package,
    Completer<void> completer,
  ) {
    return (TestEvent event) {
      switch (event.runtimeType) {
        case TestStartEvent:
          final testStartEvent = event as TestStartEvent;
          if (!testStartEvent.test.name.startsWith('loading')) {
            stdout.writeln(
              'testing ${package.name}: ${testStartEvent.test.name}...',
            );
          }
          break;
        case ErrorTestEvent:
          final errorTestEvent = event as ErrorTestEvent;
          if (errorTestEvent.isFailure) {
            _testFailuresController.add(
              '${formatException('Package')}: ${package.name}\nStackTrace: ${errorTestEvent.stackTrace}\n',
            );
          } else {
            _testErrorsController.add(
              '* An Exception occurred in ${package.name} test and was not a test failure.\n  ${errorTestEvent.error}\n',
            );
          }
          break;
        case TestDoneEvent:
          _testResultsController.add(event as TestDoneEvent);
          break;
        case ExitTestEvent:
          final exitTestEvent = event as ExitTestEvent;
          if (exitTestEvent.exitCode != 0) {
            _testErrorsController.add(
              '* Tests for ${package.name} exited with exit code ${exitTestEvent.exitCode}\n',
            );
          }
          completer.complete();
          break;
      }
    };
  }

  String _testScore(List<TestDoneEvent> events) {
    var passed = 0;
    var skipped = 0;
    var failed = 0;

    for (final event in events) {
      if (!event.hidden) {
        switch (event.result) {
          case TestResult.success:
            passed++;
            break;
          case TestResult.failure:
            failed++;
            break;
          case TestResult.error:
            // This case should be handled by ErrorTestEvent case in _onData
            break;
        }
      }
      if (event.skipped) {
        skipped++;
      }
    }
    return ' ${formatSuccess('+${passed.toString()}')}, ${formatWarning('~${skipped.toString()}')}, ${formatException('-${failed.toString()}')}';
  }
}
