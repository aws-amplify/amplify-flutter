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
import 'package:aft/src/test_report_folio.dart';
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

  @override
  Future<void> run() async {
    final testArgs = args.sublist(args.indexOf('test') + 1);
    TestReportFolio? unitTestOutput;
    String? integTestOutput;
    var verbose = false;

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
      verbose = true;
    }

    if (unitTestOutput != null || integTestOutput != null) {
      stdout.writeln(formatSuccess('\n\nTest Results:'));
      if (unitTestOutput != null) {
        stdout.writeln(
          '\nUnit Tests: : ${unitTestOutput.aggregateScore().prettyTotal}\n',
        );
        for (final package in unitTestOutput.availablePackages()) {
          stdout.writeln(
            '${package.name}: ${unitTestOutput.aggregateScoreByPackage(package).prettyTotal}',
          );

          if (verbose) {
            for (final report in unitTestOutput.reportsByPackage(package)) {
              stdout.writeln(
                '  ${report.fileName}: ${report.testScore.prettyTotal}',
              );
            }
            if (unitTestOutput.packageHasFailures(package)) {
              stdout.writeln('\nTest Failures:\n');
              for (final report in unitTestOutput.reportsByPackage(package)) {
                if (report.failures.isNotEmpty) {
                  stdout.writeln(
                    '${report.fileName}:\n${report.prettyFailures}',
                  );
                }
              }
            }
            if (unitTestOutput.packageHasExceptions(package)) {
              stdout.writeln('\nTest Exceptions:');
              for (final report in unitTestOutput.reportsByPackage(package)) {
                if (report.exceptions.isNotEmpty) {
                  stdout.writeln(
                    '\n  ${report.fileName}: ${report.prettyExceptions}',
                  );
                }
              }
            }
            if (unitTestOutput.packegesWithExitExceptions.contains(package)) {
              stdout.writeln(
                formatException(
                  '${package.name} exited with non-zero exit code.',
                ),
              );
            }
          }
        }
      }

      if (integTestOutput != null) {
        stdout
          ..writeln(formatSuccess('\nInteg Tests:'))
          ..writeln(integTestOutput);
      }
    } else {
      // This should not happen.
      stderr.writeln('Test results were not returned.');
    }
  }
}
