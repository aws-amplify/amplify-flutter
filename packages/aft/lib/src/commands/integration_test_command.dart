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
import 'package:aft/src/flutter_platform.dart';
import 'package:aft/src/utils/emphasize_text.dart';
import 'package:aft/src/utils/get_active_devices.dart';
import 'package:aft/src/utils/get_process_args.dart';
import 'package:aft/src/utils/select_packages.dart';
import 'package:interact/interact.dart';
import 'package:path/path.dart' as p;

import '../active_device.dart';
import '../utils/execute_process.dart';

typedef ResultIterator = String Function(String result, String? fileName);
const integrationTestPath = 'integration_test';

/// Command to run integration tests.
class IntegrationTestCommand extends AmplifyCommand {
  IntegrationTestCommand();

  @override
  String get description =>
      'Runs the appropriate integration test command for the given platform';

  @override
  String get name => 'integ';

  final _testReport = <String>[
    'Test Results:',
  ];
  final _testResultsController = StreamController<String>();

  final _testErrors = <String>[
    '${formatException('Problems during testing:')}\n',
  ];
  final _testErrorsController = StreamController<String>();

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

    final selectedPackages = await selectPackages(testablePackages);

    if (selectedPackages.isEmpty) {
      stderr.writeln(formatException('You did not select any tests.'));
      exit(1);
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

    stdout.writeln('\n${_testReport.join('')}');

    if (_testErrors.length > 1) {
      stdout.writeln(_testErrors.join(''));
    }
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
    final passRegex = RegExp(r'([\+][0-9]+)');
    final skipRegex = RegExp(r'([~][0-9]+)');
    final failRegex = RegExp(r'([-][0-9]+)');

    await _executeTests(
      selectedPackages,
      ((result, fileName) {
        final lastResult = result.substring(result.lastIndexOf('+'));
        return '\n  $fileName: ${formatSuccess(passRegex.stringMatch(lastResult))} ${formatWarning(skipRegex.stringMatch(lastResult))} ${formatException(failRegex.stringMatch(lastResult))} ';
      }),
      device: device,
    );
  }

  Future<void> _handleWeb(
    List<PackageInfo> selectedPackages,
  ) async {
    Process? process;
    process = await Process.start('chromedriver', ['--port=4444']);
    await _executeTests(
      selectedPackages,
      ((result, fileName) => result.contains('All tests passed')
          ? formatSuccess('\n  $fileName: All tests passed!')
          : formatException('\n  $fileName: Tests failed')),
    );
    process.kill();
  }

  Future<void> _executeTests(
    List<PackageInfo> selectedPackages,
    ResultIterator resultIterator, {
    ActiveDevice? device,
  }) async {
    _testResultsController.stream.listen(_testReport.add);
    _testErrorsController.stream.listen(_testErrors.add);

    for (final package in selectedPackages) {
      _testResultsController.add('\n${package.name}:');
      final files = await Directory(p.join(package.path, integrationTestPath))
          .list(
            recursive: true,
          )
          .toList();

      for (final file in files) {
        if (file.path.endsWith('_test.dart')) {
          final fileName = p.basename(file.path);

          await executeProcess(
            PackageFlavor.flutter,
            device != null
                ? getFlutterTestArgs(
                    deviceId: device.id,
                    testPath: fileName,
                  )
                : getFlutterDriverArgs(testPath: fileName),
            package: package,
          ).then((result) {
            _testResultsController.add(
              resultIterator(
                result,
                fileName,
              ),
            );
          }).onError((error, _) {
            _testErrorsController.add('\n$fileName test run failed: $error');
          });
        }
      }
    }

    await _testResultsController.sink.close();
    await _testErrorsController.sink.close();
  }
}
