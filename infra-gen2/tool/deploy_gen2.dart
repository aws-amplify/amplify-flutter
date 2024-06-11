#!/usr/bin/env dart
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:path/path.dart' as p;

const Map<Category, List<Map<String, dynamic>>> infraConfig = {
  // Category.analytics: [
  //   {
  //     'name': 'backends/analytics',
  //     'outputs': ['packages/analytics/amplify_analytics_pinpoint/example/lib']
  //   }
  // ],
  Category.api: [
    {
      'name': 'mainInteg',
      'outputs': [
        'packages/api/amplify_api/example/lib',
      ]
    }
  ],
  // Category.auth: [
  //   {
  //     'name': 'auth/mainBackend',
  //     'outputs': [
  //       'packages/auth/amplify_auth_cognito/example/lib/amplify_outputs',
  //       'packages/auth/amplify_auth_cognito_dart/example/lib/amplify_outputs',
  //       'packages/authenticator/amplify_authenticator/example/lib/amplify_outputs',
  //     ]
  //   }
  // ],
  // Category.storage: [
  //   {
  //     'name': 'backends/storage',
  //     'outputs': [
  //       'packages/storage/amplify_storage_s3/example/lib/amplify_outputs',
  //       'packages/storage/amplify_storage_s3_dart/example/lib/amplify_outputs',
  //     ]
  //   }
  // ],
};

late final Directory repoRoot = () {
  Directory dir = Directory.current;
  Directory? rootDir;
  while (p.absolute(dir.parent.path) != p.absolute(dir.path)) {
    final files = dir.listSync().whereType<File>();
    if (files.any((f) => p.basename(f.path) == 'pubspec.yaml')) {
      rootDir = dir;
    }
    dir = dir.parent;
  }
  if (rootDir == null) {
    throw StateError('Could not locate repo root');
  }
  return rootDir;
}();

const pathToBackends = 'infra-gen2/backends';

void main() {
  infraConfig.forEach((category, backends) {
    stdout.writeln('Running sandbox deployment for ${category.name}...');
    for (final backend in backends) {
      final backendName = backend["name"];
      final outputPath = p.join(repoRoot.path, backend['outputs'][0]);
      final backendPath = p.join(
        repoRoot.path,
        pathToBackends,
        category.name.toLowerCase(),
        backendName,
      );
      stdout.writeln('Deploying ${category.name} from ${backendPath}...');
      stdout.writeln('Outputting to ${outputPath}...');

      /// Deploy the backend
      final deployBackend = Process.runSync(
        'npx',
        [
          'ampx',
          'sandbox',
          '--outputs-format',
          'dart',
          '--outputs-out-dir',
          outputPath,
          '--identifier',
          '${category.name.toLowerCase()}${backendName}',
          '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
          '--once',
        ],
        workingDirectory: backendPath,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (deployBackend.exitCode != 0) {
        stderr.writeln(
          'Error deploying ${category.name}: '
          '${deployBackend.stdout}\n${deployBackend.stderr}',
        );
        return;
      } else {
        stdout.writeln(
          '${category.name} config successfully deployed: '
          '${outputPath}',
        );
      }

      /// Ensure the amplify_outputs.dart file exists
      final amplifyOutputs = File(p.join(outputPath, 'amplify_outputs.dart'));
      if (!amplifyOutputs.existsSync()) {
        stderr.writeln(
          'Error: ${amplifyOutputs.path} does not exist. '
          'Please check the deployment logs for more information.',
        );
        return;
      }

      if (backend['outputs'].length == 1) {
        continue;
      }

      /// Copy the amplify_outputs.dart file to all other outputs
      for (final exampleApp in backend['outputs']) {
        final destination = p.join(repoRoot.path, exampleApp);
        if (destination == outputPath) {
          continue;
        }
        var isOutputsDir = destination.endsWith('amplify_outputs');
        final outputFile = File(
          p.join(destination,
              '${isOutputsDir ? '${backendName}' : 'amplify_outputs'}.dart'),
        );
        if (!outputFile.existsSync()) {
          outputFile.createSync(recursive: true);
        }
        final fileContents = isOutputsDir
            ? amplifyOutputs
                .readAsStringSync()
                .replaceFirst('amplifyConfig', backendName)
            : amplifyOutputs.readAsStringSync();

        outputFile.writeAsStringSync(fileContents);

        stdout.writeln('Copied ${amplifyOutputs.path} to ${outputFile.path}');
      }
    }
  });
}
