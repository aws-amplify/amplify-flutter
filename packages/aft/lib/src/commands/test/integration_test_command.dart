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
import 'package:aft/src/test_reports/test_folio.dart';
import 'package:aft/src/test_reports/test_report.dart';
import 'package:aft/src/utils/constants.dart';
import 'package:aft/src/utils/emphasize_text.dart';
import 'package:aft/src/utils/execute_process.dart';
import 'package:aft/src/utils/get_active_devices.dart';
import 'package:aft/src/utils/get_process_args.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:path/path.dart' as p;

typedef ResultIterator = void Function(
  String result,
  PackageInfo package,
  String fileName,
);
const integrationTestPath = 'integration_test';

/// Command to run integration tests.
class IntegrationTestCommand extends BaseTestCommand {
  @override
  String get description =>
      'Runs the appropriate integration test command for the given platform';

  @override
  String get name => 'integ';

  final folio = TestFolioBuilder();
  late final select = Logger(level: verbose ? Level.verbose : Level.info);

  @override
  Future<void> run() async {
    final selectedDevice = await _selectDevice();
    final packageToTest = await this.packageToTest;

    switch (selectedDevice.platform) {
      case FlutterPlatform.android:
      case FlutterPlatform.ios:
      case FlutterPlatform.linux:
      case FlutterPlatform.macos:
      case FlutterPlatform.windows:
        await _handleVM(
          packageToTest,
          selectedDevice,
        );
        break;
      case FlutterPlatform.web:
        await _handleWeb(packageToTest);
        break;
      case null:
        exitError(
          formatException('Suitable device not active for selected package.'),
        );
    }

    printResults(folio.build(), verbose: verbose);
  }

  Future<ActiveDevice> _selectDevice() async {
    final devicesOnMachine = await getActiveDevices();
    final selectedDevice = select.chooseOne<ActiveDevice>(
      'Select a device: ',
      choices: devicesOnMachine,
      display: (device) => '${device.name} (id: ${device.id})',
    );
    if (selectedDevice.platform == null) {
      stderr.writeln(
        formatException(
          'The device you selected is not associated with a known platform',
        ),
      );
      exit(1);
    }
    return selectedDevice;
  }

  Future<void> _handleVM(
    PackageInfo package,
    ActiveDevice device,
  ) async {
    folio.testType = TestType.integVM;
    final integTestDirectory = package.integTestDirectory;
    if (integTestDirectory == null) {
      logger.stderr('No integration tests for "${package.name}"');
      return;
    }
    final testArguments = [...argResults!.rest];
    if (testArguments.isEmpty) {
      final hasMainTest = integTestDirectory
          .listSync()
          .whereType<File>()
          .any((file) => p.basename(file.path) == 'main_test.dart');
      if (hasMainTest) {
        testArguments.add('integration_test/main_test.dart');
      } else {
        testArguments.add('integration_test');
      }
    }
    final reports = await executeTest(
      package,
      arguments: ['-d', device.id, ...testArguments],
    );
    folio.addReports(reports);
  }

  Future<void> _handleWeb(
    PackageInfo package,
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
      package,
      (result, package, fileName) {
        final testReport = TestReportBuilder()..fileName = p.basename(fileName);
        final matches = exceptionRegex.allMatches(result);

        for (final m in matches) {
          final match = m[0]!;
          testReport.failures.add(match);
        }
        folio.addReports([testReport.build()]);
      },
    );
    process?.kill();
  }

  Future<void> _executeTests(
    PackageInfo package,
    ResultIterator resultIterator, {
    ActiveDevice? device,
  }) async {
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
          // folio
          //     .reportByFile(package, fileName)
          //     ?.exceptions
          //     .add('\n$fileName test run failed: $error');
        }
      }
    }
  }
}
