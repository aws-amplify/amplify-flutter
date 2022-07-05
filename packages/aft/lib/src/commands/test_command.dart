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

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/test_reports/test_report_folio.dart';
import 'package:aft/src/test_reports/test_report_pass_fail.dart';
import 'package:aft/src/test_reports/test_report_scored.dart';
import 'package:aft/src/utils/emphasize_text.dart';

/// Top-level command for running Flutter, Dart and integration tests.
class TestCommand extends AmplifyCommand {
  TestCommand(this.args);
  List<String> args;

  @override
  String get description =>
      'Top-level command for running Flutter, Dart and integration tests.';

  @override
  String get name => 'test';

  bool _verbose = false;

  @override
  Future<void> run() async {
    final testArgs = args.sublist(args.indexOf('test') + 1);
    TestReportFolio? unitTestOutput;
    TestReportFolio? integTestOutput;

    if (testArgs.isEmpty) {
      unitTestOutput = await UnitTestCommand().run();
      integTestOutput = await IntegrationTestCommand().run();
    }

    if (testArgs.contains('unit')) {
      unitTestOutput = await UnitTestCommand().run();
    }

    if (testArgs.contains('integ')) {
      integTestOutput = await IntegrationTestCommand().run();
    }

    if (testArgs.contains('v')) {
      _verbose = true;
    }

    if (unitTestOutput != null || integTestOutput != null) {
      if (unitTestOutput != null) {
        stdout.writeln(
          '\nUnit Tests: ${unitTestOutput.aggregateResult()}\n',
        );
        printResults(unitTestOutput);
      }

      if (integTestOutput != null) {
        stdout.writeln(
          '\nInteg Tests: ${integTestOutput.aggregateResult()}\n',
        );
        printResults(integTestOutput);
      }
    } else {
      // This should not happen.
      stderr.writeln('Test results were not returned.');
    }
  }

  void printResults(TestReportFolio folio) {
    stdout.writeln(formatSuccess('\nTest Results:'));

    for (final package in folio.availablePackages()) {
      stdout.writeln(
        '${package.name}: ${folio.aggregateResultByPackage(package)}',
      );

      if (_verbose) {
        for (final report in folio.reportsByPackage(package)) {
          String? message;
          switch (report.runtimeType) {
            case TestReportScored:
              message = (report as TestReportScored).testScore.prettyTotal;
              break;
            case TestReportPassFail:
              message = (report as TestReportPassFail).testResultMessage;
          }
          stdout.writeln(
            '  ${report.fileName}: $message',
          );
        }
        if (folio.packageHasFailures(package)) {
          stdout.writeln('\nTest Failures:\n');
          for (final report in folio.reportsByPackage(package)) {
            if (report.failures.isNotEmpty) {
              stdout.writeln(
                '${report.fileName}:\n${report.prettyFailures}',
              );
            }
          }
        }
        if (folio.packageHasExceptions(package)) {
          stdout.writeln('\nTest Exceptions:');
          for (final report in folio.reportsByPackage(package)) {
            if (report.exceptions.isNotEmpty) {
              stdout.writeln(
                '\n  ${report.fileName}: ${report.prettyExceptions}',
              );
            }
          }
        }
        if (folio.packegesWithExitExceptions.contains(package)) {
          stdout.writeln(
            formatException(
              '${package.name} exited with non-zero exit code.',
            ),
          );
        }
      }
    }
  }
}
