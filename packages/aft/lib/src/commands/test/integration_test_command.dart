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
import 'package:aft/src/active_device.dart';
import 'package:aft/src/flutter_platform.dart';
import 'package:aft/src/test_reports/print_results.dart';
import 'package:aft/src/test_reports/test_report_folio.dart';
import 'package:aft/src/test_reports/test_report_pass_fail.dart';
import 'package:aft/src/test_reports/test_report_scored.dart';
import 'package:aft/src/test_reports/test_score.dart';
import 'package:aft/src/utils/constants.dart';
import 'package:aft/src/utils/emphasize_text.dart';
import 'package:aft/src/utils/execute_process.dart';
import 'package:aft/src/utils/get_active_devices.dart';
import 'package:aft/src/utils/get_process_args.dart';
import 'package:aft/src/utils/select_packages.dart';
import 'package:interact/interact.dart';
import 'package:path/path.dart' as p;

typedef ResultIterator = void Function(
  String result,
  PackageInfo package,
  String fileName,
);
const integrationTestPath = 'integration_test';

/// Command to run integration tests.
class IntegrationTestCommand extends AmplifyCommand {
  @override
  String get description =>
      'Runs the appropriate integration test command for the given platform';

  @override
  String get name => 'integ';

  final folio = TestReportFolio();

  @override
  Future<void> run() async {
    final selectedDevice = await _selectDevice();
    if (selectedDevice == null) {
      stderr
        ..writeln(
          formatException('Valid device not selected.'),
        )
        ..writeln(
          'Try running "flutter doctor" or "flutter devices" to ensure you have active devices.',
        );
      exit(1);
    }

    final packages = await allPackages;
    final testablePackages = packages
        .where(
          (package) =>
              package.platforms != null &&
              package.platforms!.contains(selectedDevice.platform) &&
              package.integTestDirectory != null,
        )
        .toList();

    var selectedPackages = <PackageInfo>[];
    while (selectedPackages.isEmpty) {
      selectedPackages = await selectPackages(testablePackages);
      if (selectedPackages.isEmpty) {
        stderr.writeln(formatException('Select at least one set of tests.'));
      }
    }

    switch (selectedDevice.platform) {
      case FlutterPlatform.android:
      case FlutterPlatform.ios:
      case FlutterPlatform.linux:
      case FlutterPlatform.macos:
      case FlutterPlatform.windows:
        await _handleVM(
          selectedPackages,
          selectedDevice,
        );
        break;
      case FlutterPlatform.web:
        await _handleWeb(
          selectedPackages,
        );
        break;
      case null:
        stderr.writeln(
          formatException(
            'Suitable device not active for selected package.',
          ),
        );
        exit(1);
    }
    printResults(folio, verbose);
  }

  Future<ActiveDevice?> _selectDevice() async {
    final deviceSelections = <String>[];
    final devicePrompt = Select(
      prompt: 'Select a device:',
      options: deviceSelections,
    );
    final devicesOnMachine = await getActiveDevices();

    if (devicesOnMachine != null) {
      for (final device in devicesOnMachine) {
        deviceSelections.add('${device.name} (id: ${device.id})');
      }
    }

    final devicePromptSelection =
        deviceSelections[devicePrompt.interact()].split(' (id: ')[0].trimLeft();
    final selection = devicesOnMachine
        ?.firstWhere((device) => device.name == devicePromptSelection);

    if (selection?.platform == null) {
      stderr.writeln(
        formatException(
          'The device you selected is not associated with a known platform',
        ),
      );
      exit(1);
    }

    return selection;
  }

  Future<void> _handleVM(
    List<PackageInfo> selectedPackages,
    ActiveDevice device,
  ) async {
    folio.testType = TestType.integVM;
    final passRegex = RegExp(r'([\+][0-9]+)');
    final skipRegex = RegExp(r'([~][0-9]+)');
    final failRegex = RegExp(r'([-][0-9]+)');

    final exceptionRegex = RegExp(
      r'(?<=══╡ EXCEPTION CAUGHT BY FLUTTER TEST FRAMEWORK ╞════════════════════════════════════════════════════)'
      '(.*)'
      '(?=════════════════════════════════════════════════════════════════════════════════════════════════════)',
      multiLine: false,
      dotAll: true,
      caseSensitive: false,
    );
    await _executeTests(
      selectedPackages,
      (result, package, fileName) {
        final testReport = TestReportScored(package, p.basename(fileName));
        folio.testReports.add(testReport);

        final lastResult = result.substring(result.lastIndexOf('+'));
        final passed = int.parse(passRegex.stringMatch(lastResult) ?? '0');
        final skipped = int.parse(skipRegex.stringMatch(lastResult) ?? '0');
        final failed = int.parse(
          failRegex.stringMatch(lastResult)?.replaceFirst('-', '') ?? '0',
        );
        testReport.testScore = TestScore(
          passed: passed,
          skipped: skipped,
          failed: failed,
        );

        final matches = exceptionRegex.allMatches(result);

        for (final m in matches) {
          final match = m[0]!;
          testReport.failures.add(match);
        }
      },
      device: device,
    );
  }

  Future<void> _handleWeb(
    List<PackageInfo> selectedPackages,
  ) async {
    folio.testType = TestType.integWeb;
    Process? process;
    try {
      process = await Process.start('chromedriver', ['--port=4444']);
    } on Exception catch (e) {
      stderr.writeln('chromedriver failed to start: ${e.toString()}');
    }

    final exceptionRegex = RegExp(
      r'(?<=══╡ EXCEPTION CAUGHT BY FLUTTER TEST FRAMEWORK ╞═════════════════)'
      '(.*)'
      '(?=═════════════════════════════════════════════════════════════════)',
      multiLine: false,
      dotAll: true,
      caseSensitive: false,
    );
    await _executeTests(
      selectedPackages,
      (result, package, fileName) {
        final testReport = TestReportPassFail(package, p.basename(fileName));
        folio.testReports.add(testReport);
        testReport.allPassed = result.contains(testsPassed);
        final matches = exceptionRegex.allMatches(result);

        for (final m in matches) {
          final match = m[0]!;
          testReport.failures.add(match);
        }
      },
    );
    process?.kill();
  }

  Future<void> _executeTests(
    List<PackageInfo> selectedPackages,
    ResultIterator resultIterator, {
    ActiveDevice? device,
  }) async {
    for (final package in selectedPackages) {
      final files = await Directory(p.join(package.path, integrationTestPath))
          .list(recursive: true)
          .toList();

      for (final file in files) {
        if (file.path.endsWith(testFileSuffix)) {
          final fileName = p.basename(file.path);

          try {
            final result = await executeProcess(
              PackageFlavor.flutter,
              device != null
                  ? getFlutterTestArgs(
                      deviceId: device.id,
                      testPath: fileName,
                    )
                  : getFlutterDriverArgs(testPath: fileName),
              package: package,
            );
            resultIterator(
              result,
              package,
              fileName,
            );
          } on Exception catch (error) {
            folio
                .reportByFile(package, fileName)
                ?.exceptions
                .add('\n$fileName test run failed: $error');
          }
        }
      }
    }
  }
}
