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

/// Command to list all Dart/Flutter packages in the repo.
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
    // Prompts
    final packageSelections = [
      'amplify_authenticator',
      'auth/amplify_auth_cognito'
    ];
    final packagePrompt = Select(
      prompt: 'Which tests do you want to run?',
      options: packageSelections,
    );

    final platformSelections = ['VM', 'Web'];
    final platformPrompt = Select(
      prompt: 'Are you running on a VM or Web?',
      options: platformSelections,
    );

    final deviceSelections = <String>[];
    final devicePrompt = Select(
      prompt: 'Select a device:',
      options: deviceSelections,
    );

    var devices = <ActiveDevice>[];
    final package = packageSelections[packagePrompt.interact()];
    final platform = platformSelections[platformPrompt.interact()];

    switch (platform) {
      case 'VM':
        await startFlutterProcess(
          [
            'devices',
            '--machine',
          ],
          package,
        ).then((result) {
          final list = json.decode(result) as Iterable;
          devices = List<ActiveDevice>.from(
            list.map(
              (model) => ActiveDevice(
                name: model['name'] as String,
                id: model['id'] as String,
              ),
            ),
          )..forEach((ActiveDevice el) => deviceSelections.add(el.name));
          stdout.write(result);
        });

        final devicePromptSelection = deviceSelections[devicePrompt.interact()];

        final selectedDevice = devices
            .firstWhere((device) => device.name == devicePromptSelection);

        await startFlutterProcess(
          [
            'test',
            'integration_test/',
            '-d',
            selectedDevice.id,
          ],
          package,
        ).then((result) {
          stdout.write(result);
        });
        break;

      case 'Web':
        Process? process;
        // try {
        //   process = await Process.start('chromedriver', ['--port=4444']);
        //   stdout.write('Started chromedriver');
        // } on Exception catch (e) {
        //   stderr
        //     ..write('Tried and failed to start chromedriver.')
        //     ..write('Make sure you are running chromedriver on port 4444.')
        //     ..write(e);
        // }
        await startFlutterProcess(
          [
            'drive',
            '--driver=test_driver/integration_test.dart',
            '--target=integration_test/main_test.dart',
            '-d',
            'web-server',
            '--dart-define=WEB_INTEG=true',
          ],
          package,
        ).then((result) {
          stdout.write(result);
          // Kill chromedriver if we started chromedriver as part of this script
          process?.kill();
        });
        break;
    }
  }
}
