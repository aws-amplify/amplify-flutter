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
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/platform.dart';
import 'package:interact/interact.dart';

import '../active_device.dart';
import '../utils/start_flutter_process.dart';

/// Command to run integration tests.
class IntegrationTestCommand extends AmplifyCommand {
  IntegrationTestCommand();

  @override
  String get description =>
      'Runs the appropriate integration test command for the given platform';

  @override
  String get name => 'integ';

  @override
  Future<void> run() async {
    final packages = await allPackages;

    final testablePackages =
        packages.where((package) => package.integTestDirectory != null);

    final packageSelections =
        testablePackages.map((package) => package.name).toList();

    final packagePrompt = Select(
      prompt: 'Which tests do you want to run?',
      options: packageSelections,
    );

    final platformSelections = [
      'VM',
      'Web',
    ];
    var selectedPlatform = 'VM';
    final platformPrompt = Select(
      prompt: 'Are you running on a VM or Web?',
      options: platformSelections,
    );

    final packaegPromptSelection = packageSelections[packagePrompt.interact()];
    final selectedPackage = testablePackages
        .firstWhere((package) => package.name == packaegPromptSelection);

    if (selectedPackage.platforms != null &&
        selectedPackage.platforms!.contains(FlutterPlatform.web)) {
      selectedPlatform = platformSelections[platformPrompt.interact()];
    }

    switch (selectedPlatform) {
      case 'VM':
        await _handleVM(testablePackages.first);
        break;

      // TODO(dnnoyes) get and parse driver results properly
      case 'Web':
        await _handeWeb(testablePackages.first);
        break;
    }
  }

  Future<void> _handleVM(PackageInfo selectedPackage) async {
    final deviceSelections = <String>[];
    final devicePrompt = Select(
      prompt: 'Select a device:',
      options: deviceSelections,
    );
    final devices = <ActiveDevice>[];
    final result = await startFlutterProcess(
      [
        'devices',
        '--machine',
      ],
      selectedPackage,
      printStream: false,
    );

    final list = (json.decode(result) as List)
        .map((i) => ActiveDevice.fromJson(i as Map<String, dynamic>))
        .toList();
    for (final item in list) {
      if (item.name != 'Chrome') {
        devices.add(item);
        deviceSelections.add(item.name);
      }
    }

    final devicePromptSelection = deviceSelections[devicePrompt.interact()];
    final selectedDevice =
        devices.firstWhere((device) => device.name == devicePromptSelection);

    final results = await _executeTests(
      [
        'test',
        'integration_test',
        '-d',
        selectedDevice.id,
      ],
      selectedPackage,
      1,
    );
    stdout.write(results);
  }

  Future<void> _handeWeb(PackageInfo selectedPackage) async {
    Process? process;
    try {
      process = await Process.start('chromedriver', ['--port=4444']);
      stdout.writeln('Started chromedriver');
    } on Exception catch (e) {
      stderr
        ..writeln('Tried and failed to start chromedriver.')
        ..writeln(
            'Make sure you are running chromedriver on port 4444 or that chromedriver is in your PATH.')
        ..writeln(e);
    }
    final results = await _executeTests(
      [
        'drive',
        '--driver=test_driver/integration_test.dart',
        '--target=integration_test',
        '-d',
        'web-server',
        '--dart-define=WEB_INTEG=true',
      ],
      selectedPackage,
      2,
    );
    stdout.write(results);
    process?.kill();
  }

  Future<String> _executeTests(
    List<String> args,
    PackageInfo package,
    int fileArgIndex,
  ) async {
    final testResults = <String>['TEST RESULTS: '];
    final files = await Directory('$package/example/integration_test')
        .list(
          recursive: true,
          followLinks: false,
        )
        .toList();

    final testPath = args[fileArgIndex];

    for (final file in files) {
      if (file.path.endsWith('_test.dart') &&
          !file.path.endsWith('integration_test.dart')) {
        final fileName = file.path.substring(file.path.lastIndexOf('/'));

        args[fileArgIndex] = '$testPath$fileName';

        await startFlutterProcess(
          args,
          package,
        ).then((result) {
          testResults.add(
            '\n${fileName.replaceFirst('/', '').toUpperCase()}: $result',
          );
        }).onError((error, _) {
          testResults.add('\n$fileName test run failed: $error');
        });
      }
    }
    return testResults.join('');
  }
}
