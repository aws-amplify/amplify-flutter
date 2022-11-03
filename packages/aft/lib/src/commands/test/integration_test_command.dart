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
import 'package:aft/src/utils/emphasize_text.dart';
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
  IntegrationTestCommand() {
    argParser.addOption('device', abbr: 'd', help: 'Device ID or name');
  }

  @override
  String get description =>
      'Runs the appropriate integration test command for the given platform';

  @override
  String get name => 'integ';

  final folio = TestFolioBuilder()..testType = TestType.integration;
  late final select = Logger(level: verbose ? Level.verbose : Level.info);

  @override
  Future<void> run() async {
    final selectedDevice = await _selectDevice();
    var packageToTest = await this.packageToTest;
    final examplePackage = packageToTest.example;
    if (packageToTest.integTestDirectory == null && examplePackage != null) {
      packageToTest = examplePackage;
    }
    if (packageToTest.integTestDirectory == null) {
      exitError('No integration tests for package');
    }
    await _runTests(
      package: packageToTest,
      device: selectedDevice,
    );
  }

  Future<ActiveDevice> _selectDevice() async {
    final devicesOnMachine = await getActiveDevices();

    final ActiveDevice selectedDevice;
    if (argResults!['device'] != null) {
      final deviceMatcher = argResults!['device'] as String;
      selectedDevice = devicesOnMachine.singleWhere(
        (device) {
          return device.displayString
              .toLowerCase()
              .contains(deviceMatcher.toLowerCase());
        },
        orElse: () {
          exitError(
            'Unknown device: $deviceMatcher\n'
            'Active Devices:\n$devicesOnMachine',
          );
        },
      );
    } else {
      selectedDevice = select.chooseOne<ActiveDevice>(
        'Select a device: ',
        choices: devicesOnMachine,
        display: (device) => device.displayString,
      );
    }

    if (selectedDevice.platform == null) {
      exitError(
        formatException(
          'The device you selected is not associated with a known platform',
        ),
      );
    }
    return selectedDevice;
  }

  Future<void> _runTests({
    required PackageInfo package,
    required ActiveDevice device,
  }) async {
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

    final List<TestReport> reports;
    final arguments = ['-d', device.id, ...testArguments];
    logger.trace(
      'Running tests on device ${device.id} (${device.platform!.displayName})',
    );
    if (device.platform == FlutterPlatform.web) {
      await _handleWeb(
        package,
        arguments: arguments,
      );
    } else {
      reports = await executeTests(
        package,
        arguments: arguments,
      );
      folio.addReports(reports);
      printResults(folio.build());
    }
  }

  Future<Process> _startChromedriver() async {
    final Process process;
    try {
      process = await Process.start(
        'chromedriver',
        ['--port=4444'],
        runInShell: true,
        mode: ProcessStartMode.detached,
      );
    } on Exception catch (e) {
      exitError('chromedriver failed to start: ${e.toString()}');
    }
    return process;
  }

  Future<void> _handleWeb(
    PackageInfo package, {
    required List<String> arguments,
  }) async {
    final chromedriver = await _startChromedriver();
    try {
      await executeProcess(
        PackageFlavor.flutter,
        ['drive', '--driver=test_driver/integration_test.dart', ...arguments],
        package: package,
        mode: ProcessStartMode.inheritStdio,
      );
    } finally {
      chromedriver.kill();
    }
  }
}
