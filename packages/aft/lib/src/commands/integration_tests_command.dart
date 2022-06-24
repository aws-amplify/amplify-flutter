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

// ignore_for_file: avoid_dynamic_calls, inference_failure_on_untyped_parameter

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:interact/interact.dart';

import '../devices.dart';
import '../utils/start_flutter_process.dart';

/// Command to run integration tests.
class IntegrationTestCommand extends AmplifyCommand {
  IntegrationTestCommand(this.args);

  List<String> args;

  @override
  String get description =>
      'Runs the appropriate integration test command for the given platform';

  @override
  String get name => 'integ';

  @override
  Future<void> run() async {
    final packageSelections = [
      'amplify_authenticator',
      'auth/amplify_auth_cognito'
    ];
    final packagePrompt = Select(
      prompt: 'Which tests do you want to run?',
      options: packageSelections,
    );

    final platformSelections = [
      'VM',
      'Web',
    ];
    final platformPrompt = Select(
      prompt: 'Are you running on a VM or Web?',
      options: platformSelections,
    );

    final deviceSelections = <String>[];
    final devicePrompt = Select(
      prompt: 'Select a device:',
      options: deviceSelections,
    );

    final selectedPackage = packageSelections[packagePrompt.interact()];
    final selectedPlatform = platformSelections[platformPrompt.interact()];

    switch (selectedPlatform) {
      case 'VM':
        var devices = <ActiveDevice>[];
        await startFlutterProcess(
          [
            'devices',
            '--machine',
          ],
          selectedPackage,
          printStream: false,
        ).then((result) {
          final list = json.decode(result) as Iterable;
          devices = List<ActiveDevice>.from(
            list.map(
              (model) => ActiveDevice(
                name: model['name'] as String,
                id: model['id'] as String,
              ),
            ),
          )..forEach((ActiveDevice el) {
              if (el.name != 'Chrome') {
                deviceSelections.add(el.name);
              }
            });
        });

        final devicePromptSelection = deviceSelections[devicePrompt.interact()];
        final selectedDevice = devices
            .firstWhere((device) => device.name == devicePromptSelection);

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
        break;

      case 'Web':
        Process? process;
        try {
          process = await Process.start('chromedriver', ['--port=4444']);
          stdout.write('Started chromedriver \n');
        } on Exception catch (e) {
          stderr
            ..write('Tried and failed to start chromedriver.')
            ..write(
                'Make sure you are running chromedriver on port 4444 or that chromedriver is in your path.')
            ..write(e);
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
        break;
    }
  }

  Future<String> _executeTests(
    List<String> args,
    String package,
    int fileArgIndex,
  ) async {
    final testResults = <String>['TEST RESULTS: '];
    final files = await Directory('../../$package/example/integration_test')
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
            //TODO: get results properly
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
