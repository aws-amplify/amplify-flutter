#!/usr/bin/env dart
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:path/path.dart' as p;

class AmplifyIntegCategory {
  const AmplifyIntegCategory({
    required this.category,
    required this.backends,
    required this.defaultOutput,
    this.sharedOutputs = const [],
  });

  /// This is the category of the integration group
  final Category category;

  /// This is the list of backends for the category
  final List<AmplifyBackend> backends;

  /// This is the default output path for the category
  final String defaultOutput;

  /// This is the list of shared output paths for the category
  final List<String> sharedOutputs;
}

class AmplifyBackend {
  const AmplifyBackend({
    required this.name,
    required this.identifier,
    required this.pathToSource,
  });

  /// This is the name of the backend
  final String name;

  /// This is the identifier for the backend
  /// It is the name in "PascalCase"
  /// Must be less than 15 characters
  final String identifier;

  /// This is the path to the source code for the backend
  /// Root directory is amplify-flutter/
  final String pathToSource;
}

/// This is the source of truth for the infra-gen2 backends
///
/// To add a backend:
/// 1. Create the backend in the infra-gen2/backends directory
/// 2. Run `npm create amplify@latest -y` in the backend directory to create the backend
/// 3. Add the backend to a category or create a new category
/// 4. Run `dart tool/deploy_gen2.dart` to deploy the backend
const List<AmplifyIntegCategory> infraConfig = [
  AmplifyIntegCategory(
    category: Category.analytics,
    backends: [],
    defaultOutput: '',
  ),
  AmplifyIntegCategory(
    category: Category.api,
    backends: [
      AmplifyBackend(
        name: 'mainInteg',
        identifier: 'ApiMainInteg',
        pathToSource: 'infra-gen2/backends/api/mainInteg',
      ),
    ],
    defaultOutput: 'packages/api/amplify_api/example/lib',
  ),
  AmplifyIntegCategory(
    category: Category.auth,
    backends: [],
    defaultOutput: 'packages/auth/amplify_auth_cognito/example/lib',
    sharedOutputs: [
      'packages/auth/amplify_auth_cognito_dart/example/lib',
      'packages/authenticator/amplify_authenticator/example/lib',
    ],
  ),
  AmplifyIntegCategory(
    category: Category.storage,
    backends: [],
    defaultOutput: '',
  ),
];

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
  print('Deploying Gen 2 backends. This may take a while...');
  infraConfig.forEach((category) {
    /// TODO(equartey): Could be removed when all backends are defined.
    if (category.backends.isEmpty) {
      return;
    }

    Map<String, String> amplifyEnvironments = {};
    final outputPath = p.join(repoRoot.path, category.defaultOutput);
    final amplifyOutputs = File(p.join(outputPath, 'amplify_outputs.dart'));

    /// create the output file if it does not exist
    if (!amplifyOutputs.existsSync()) {
      amplifyOutputs.createSync(recursive: true);
    }

    print('Running sandbox deployment for ${category.category}...');
    for (final backend in category.backends) {
      final backendName = backend.name;
      _deployBackend(
        category.category,
        backend,
        amplifyOutputs.path.replaceFirst('amplify_outputs.dart', ''),
      );

      /// Skip if there is only one backend
      if (category.backends.length <= 1) {
        continue;
      }

      /// Cache the config contents to create environments map
      _cacheConfigContents(
        backendName,
        amplifyOutputs,
        amplifyEnvironments,
      );
    }

    /// Only append environments if there are multiple backends
    if (category.backends.length > 1) {
      _appendEnvironments(
        amplifyEnvironments,
        category,
        amplifyOutputs,
      );
    }

    /// Copy amplify_outputs.dart to shared paths
    _copyAmplifyOutputs(
      category.sharedOutputs,
      amplifyOutputs,
    );
  });
}

/// Deploy Sandbox for a given backend backend
void _deployBackend(
  Category category,
  AmplifyBackend backend,
  String outputPath,
) {
  print('Deploying ${category.name} ${backend.name}...');

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
      backend.identifier,
      '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
      '--once',
    ],
    workingDirectory: p.join(repoRoot.path, backend.pathToSource),
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
    print(
      '${category.name} ${backend.identifier} successfully deployed',
    );
  }
}

/// Cache the config contents to create environments map
void _cacheConfigContents(
  String backendName,
  File amplifyOutputs,
  Map<String, String> amplifyEnvironments,
) {
  /// Ensure the amplify_outputs.dart file exists
  if (!amplifyOutputs.existsSync()) {
    stderr.writeln(
      'Error: ${amplifyOutputs.path} does not exist. '
      'Please check the deployment logs for more information.',
    );
    return;
  }

  /// cache the config file contents to create environments map
  final rawConfigContent = amplifyOutputs.readAsStringSync();
  RegExp exp = RegExp(r"'''(.*?)'''", dotAll: true);
  final configMap = exp.firstMatch(rawConfigContent)?.group(1) ?? '';
  amplifyEnvironments[backendName] = '\'\'\'$configMap\'\'\'';
}

/// Append the environments to amplify_outputs.dart
void _appendEnvironments(
  Map<String, String> amplifyEnvironments,
  AmplifyIntegCategory category,
  File amplifyOutputs,
) {
  /// Skip if there are no amplifyEnvironments
  if (amplifyEnvironments.isEmpty) {
    return;
  }
  print('Building amplifyEnvironments...');
  var amplifyEnvironmentsOutput =
      '\nconst amplifyEnvironments = <String, String>{\n';
  amplifyEnvironments.forEach((key, value) {
    amplifyEnvironmentsOutput += "'$key': $value,\n";
  });
  amplifyEnvironmentsOutput += '};';

  /// Append amplifyEnvironments to amplify_outputs.dart
  amplifyOutputs.writeAsStringSync(amplifyEnvironmentsOutput,
      mode: FileMode.append);
}

/// Copy the amplify_outputs.dart file to other shared paths
void _copyAmplifyOutputs(
  List<String> outputPaths,
  File amplifyOutputs,
) {
  if (outputPaths.length <= 1) {
    return;
  }

  print('Copying amplify_outputs.dart to other shared paths...');
  for (final outputPath in outputPaths) {
    final destination = p.join(repoRoot.path, outputPath);
    final outputFile = File(p.join(destination, 'amplify_outputs.dart'));

    if (!outputFile.existsSync()) {
      outputFile.createSync(recursive: true);
    }
    final amplifyOutputsContents = amplifyOutputs.readAsStringSync();

    outputFile.writeAsStringSync(amplifyOutputsContents);
  }
}
