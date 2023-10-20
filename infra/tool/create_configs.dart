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

void main() {
  final <String, dynamic>{
    'AmplifyFlutterIntegStack': {
      'Categories': String categoriesJson,
    }
  } = jsonDecode(File('outputs.json').readAsStringSync());
  final categories = jsonDecode(categoriesJson) as Map<String, dynamic>;
  for (final MapEntry(key: categoryName, value: categoryInfo)
      in categories.entries) {
    final <String, dynamic>{
      'region': String region,
      'bucketName': String bucketName,
    } = categoryInfo;
    final category = Category.values.firstWhere(
      (c) => c.name.toLowerCase() == categoryName,
    );
    for (final exampleApp in exampleApps[category]!) {
      final exampleConfig = p.join(
        repoRoot.uri.resolve(exampleApp).path,
        'lib/amplifyconfiguration.dart',
      );

      final downloadRes = Process.runSync(
        'aws',
        [
          '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
          '--region=$region',
          's3',
          'cp',
          's3://$bucketName/amplifyconfiguration.dart',
          exampleConfig,
        ],
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (downloadRes.exitCode != 0) {
        stderr.writeln(
          'Error downloading ${category.name} config from S3: '
          '${downloadRes.stdout}\n${downloadRes.stderr}',
        );
      } else {
        stdout.writeln(
          '${category.name} config successfully downloaded from S3 bucket: '
          '$bucketName',
        );
      }
    }
  }
}
