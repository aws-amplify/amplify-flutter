#!/usr/bin/env dart
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:path/path.dart' as p;

const exampleApps = {
  Category.analytics: ['packages/analytics/amplify_analytics_pinpoint/example'],
  Category.api: ['packages/api/amplify_api/example'],
  Category.auth: [
    'packages/auth/amplify_auth_cognito/example',
    'packages/auth/amplify_auth_cognito_dart/example',
    'packages/authenticator/amplify_authenticator/example',
  ],
  Category.dataStore: ['packages/amplify_datastore/example'],
  Category.storage: [
    'packages/storage/amplify_storage_s3/example',
    'packages/storage/amplify_storage_s3_dart/example',
  ],
};

late final Directory repoRoot = () {
  Directory dir = Directory.current;
  while (p.absolute(dir.parent.path) != p.absolute(dir.path)) {
    final files = dir.listSync().whereType<File>();
    if (files.any((f) => p.basename(f.path) == 'aft.yaml')) {
      return dir;
    }
    dir = dir.parent;
  }
  throw StateError('Could not locate repo root');
}();

void main() {
  final outputs = jsonDecode(File('outputs.json').readAsStringSync())
      as Map<String, dynamic>;
  final categories =
      outputs['AmplifyFlutterIntegStack'] as Map<String, dynamic>;
  for (final entry in categories.entries) {
    final category = Category.values.firstWhere(
      (c) => c.name.toLowerCase() == entry.key,
    );
    final categoryConfig = jsonDecode(entry.value) as Map<String, dynamic>;
    final bucketName = categoryConfig['bucket'] as String;
    final environments = categoryConfig['environments'] as Map<String, dynamic>;
    final config = StringBuffer();
    final mainEnvName =
        environments.containsKey('main') ? 'main' : environments.keys.first;
    config.writeln('const amplifyEnvironments = <String, String>{');
    environments.forEach((environmentName, json) {
      final environmentJson = prettyPrintJson(json);
      config.writeln("'$environmentName': '''$environmentJson''',");
    });
    config.write('''
};

final String amplifyconfig = amplifyEnvironments['$mainEnvName']!;
''');

    for (var i = 0; i < exampleApps[category]!.length; i++) {
      final exampleApp = exampleApps[category]![i];
      final exampleConfig = File(
        p.join(
          repoRoot.uri.resolve(exampleApp).path,
          'lib/amplifyconfiguration.dart',
        ),
      );
      exampleConfig
        ..createSync(recursive: true)
        ..writeAsStringSync(config.toString());

      if (i == 0) {
        // Upload config to S3
        final uploadRes = Process.runSync(
          'aws',
          [
            '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
            's3',
            'cp',
            exampleConfig.path,
            's3://$bucketName/amplifyconfiguration.dart',
          ],
          stdoutEncoding: utf8,
          stderrEncoding: utf8,
        );
        if (uploadRes.exitCode != 0) {
          stderr.writeln(
            'Error uploading ${category.name} config to S3: '
            '${uploadRes.stdout}\n${uploadRes.stderr}',
          );
        } else {
          stdout.writeln(
            '${category.name} config successfully uploaded to S3 bucket: '
            '$bucketName',
          );
        }
      }
    }
  }
}
