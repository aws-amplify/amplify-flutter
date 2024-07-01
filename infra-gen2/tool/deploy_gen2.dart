#!/usr/bin/env dart
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:args/args.dart';
import 'package:path/path.dart' as p;

/// This is the source of truth for the infra-gen2 backends
///
/// To add a backend:
/// 1. Create the backend in the infra-gen2/backends directory
/// 2. Run `npm create amplify@latest -y` in the backend directory to create the backend
/// 3. Add the backend to a category or create a new category
/// 4. Run `dart tool/deploy_gen2.dart` to deploy the backend
const List<AmplifyBackendGroup> infraConfig = [
  AmplifyBackendGroup(
    category: Category.analytics,
    defaultOutput: '',
    backends: [],
  ),
  AmplifyBackendGroup(
    category: Category.api,
    defaultOutput: 'packages/api/amplify_api/example/lib',
    backends: [
      AmplifyBackend(
        name: 'apiMultiAuth',
        identifier: 'apiMultiAuth',
        pathToSource: 'infra-gen2/backends/api/apiMultiAuth',
      ),
    ],
  ),
  AmplifyBackendGroup(
    category: Category.auth,
    defaultOutput: 'packages/auth/amplify_auth_cognito/example/lib',
    sharedOutputs: [
      'packages/auth/amplify_auth_cognito_dart/example/lib',
      'packages/authenticator/amplify_authenticator/example/lib',
    ],
    backends: [],
  ),
  AmplifyBackendGroup(
    category: Category.storage,
    defaultOutput: '',
    backends: [],
  ),
];

const pathToBackends = 'infra-gen2/backends';

void main(List<String> arguments) async {
  final args = _parseArgs(arguments);
  final verbose = args.flag('verbose');

  final bucketNames = <String>[];
  print('🚀 Deploying Gen 2 backends!');
  for (final backendGroup in infraConfig) {
    // TODO(equartey): Could be removed when all backends are defined.
    if (backendGroup.backends.isEmpty) {
      continue;
    }
    var amplifyEnvironments = <String, String>{};
    final categoryName = backendGroup.category.name;
    final outputPath = p.join(repoRoot.path, backendGroup.defaultOutput);
    final amplifyOutputs = File(p.join(outputPath, 'amplify_outputs.dart'));

    // create the output file if it does not exist
    if (!amplifyOutputs.existsSync()) {
      amplifyOutputs.createSync(recursive: true);
    }

    print('🏃 Running sandbox deployment for $categoryName');
    for (final backend in backendGroup.backends) {
      final backendName = backend.name;
      await _deployBackend(
        backendGroup.category,
        backend,
        amplifyOutputs.path.replaceFirst('amplify_outputs.dart', ''),
        verbose,
      );

      // Skip if there is only one backend
      if (backendGroup.backends.length <= 1) {
        continue;
      }

      // Cache the config contents to create environments map
      amplifyEnvironments = {
        ...amplifyEnvironments,
        ..._cacheConfigContents(
          backendName,
          amplifyOutputs,
        ),
      };
    }

    // Only append environments if there are multiple backends
    if (backendGroup.backends.length > 1) {
      _appendEnvironments(
        amplifyEnvironments,
        backendGroup,
        amplifyOutputs,
      );
    }

    // Copy amplify_outputs.dart to shared paths
    _copyAmplifyOutputs(
      backendGroup.sharedOutputs,
      amplifyOutputs,
    );

    var bucketName = _createBucketName(categoryName);

    // Check if the S3 bucket exists
    final remoteBucketName = _getS3BucketName(bucketName);
    if (remoteBucketName != null && remoteBucketName.isNotEmpty) {
      bucketName = remoteBucketName;
      print('🔍 Using existing S3 bucket $bucketName');
    } else {
      _createS3Bucket(bucketName);
    }
    bucketNames.add(bucketName);

    // Upload amplify_outputs.dart to S3 bucket
    _uploadAmplifyOutputs(
      bucketName,
      amplifyOutputs.path,
    );

    print('✅ Deployment for $categoryName Category complete');
  }

  print('🎉 All backends deployed successfully!');

  print('🪣 S3 Bucket Names: $bucketNames');
}

ArgResults _parseArgs(List<String> args) {
  final parser = ArgParser()
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Run command in verbose mode',
      defaultsTo: false,
    );

  return parser.parse(args);
}

/// Deploy Sandbox for a given backend backend
Future<void> _deployBackend(
  Category category,
  AmplifyBackend backend,
  String outputPath,
  bool verbose,
) async {
  print(
    '🏖️  Deploying ${category.name} ${backend.name}, this may take a while...',
  );

  // Deploy the backend
  final process = await Process.start(
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
  );

  if (verbose) {
    process.stdout.transform(const SystemEncoding().decoder).listen(print);
    process.stderr.transform(const SystemEncoding().decoder).listen((data) {
      print('❌ Error: $data');
    });
  }

  final exitCode = await process.exitCode;

  if (exitCode != 0) {
    throw Exception(
      '❌ Error deploying ${category.name} ${backend.identifier} sandbox',
    );
  } else {
    print(
      '👍 ${category.name} ${backend.identifier} sandbox deployed',
    );
  }
}

/// Cache the config contents to create environments map
Map<String, String> _cacheConfigContents(
  String backendName,
  File amplifyOutputs,
) {
  // Ensure the amplify_outputs.dart file exists
  if (!amplifyOutputs.existsSync()) {
    throw Exception(
      '❌ Error: ${amplifyOutputs.path} does not exist. '
      'Please check the deployment logs for more information.',
    );
  }

  // cache the config file contents to create environments map
  final rawConfigContent = amplifyOutputs.readAsStringSync();
  final exp = RegExp(r"'''(.*?)'''", dotAll: true);
  final configMap = exp.firstMatch(rawConfigContent)?.group(1) ?? '';

  return {
    backendName: '\'\'\'$configMap\'\'\'',
  };
}

/// Append the environments to amplify_outputs.dart
void _appendEnvironments(
  Map<String, String> amplifyEnvironments,
  AmplifyBackendGroup category,
  File amplifyOutputs,
) {
  // Skip if there are no amplifyEnvironments
  if (amplifyEnvironments.isEmpty) {
    return;
  }
  print('👷 Building amplifyEnvironments');
  var amplifyEnvironmentsOutput =
      '\nconst amplifyEnvironments = <String, String>{\n';
  amplifyEnvironments.forEach((key, value) {
    amplifyEnvironmentsOutput += "'$key': $value,\n";
  });
  amplifyEnvironmentsOutput += '};';

  // Append amplifyEnvironments to amplify_outputs.dart
  amplifyOutputs.writeAsStringSync(
    amplifyEnvironmentsOutput,
    mode: FileMode.append,
  );
}

/// Copy the amplify_outputs.dart file to other shared paths
void _copyAmplifyOutputs(
  List<String> outputPaths,
  File amplifyOutputs,
) {
  if (outputPaths.length <= 1) {
    return;
  }

  print('👯 Copying amplify_outputs.dart to other shared paths');
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

/// Create a unique bucket name
String _createBucketName(String base) {
  final uniqueShort = uuid().substring(0, 8);
  return '${base.toLowerCase()}-gen2-integ-$uniqueShort';
}

String? _getS3BucketName(String bucketName) {
  final checkBucket = Process.runSync(
    'aws',
    [
      '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
      's3api',
      'list-buckets',
      '--query',
      'Buckets[].Name',
      '--output',
      'text',
    ],
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );

  if (checkBucket.exitCode != 0) {
    throw Exception(
      '❌ Error checking if S3 bucket $bucketName exists: '
      '${checkBucket.stdout}\n${checkBucket.stderr}',
    );
  }
  final output = checkBucket.stdout as String;

  // Determine if bucket exists while ignoring the UUID
  final bucketNameWithoutUUID = bucketName.substring(0, bucketName.length - 8);
  const uuidMatcher = r'[a-f0-9]{8}$';
  final pattern = '($bucketNameWithoutUUID)$uuidMatcher';

  final bucketNames = output.split('\t').map((e) => e.trim()).toList();
  final regex = RegExp(pattern);
  final matchingBuckets = bucketNames.where(regex.hasMatch);
  if (matchingBuckets.length > 1) {
    throw Exception(
      '❌ Error: Multiple buckets found with the same name: $matchingBuckets',
    );
  }
  if (matchingBuckets.isEmpty) {
    return null;
  }
  return matchingBuckets.single;
}

/// Create an S3 bucke
void _createS3Bucket(String bucketName) {
  print('🪣 Creating S3 bucket: $bucketName');
  final createBucket = Process.runSync(
    'aws',
    [
      '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
      's3',
      'mb',
      's3://$bucketName',
    ],
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );
  if (createBucket.exitCode != 0) {
    throw Exception(
      '❌ Error creating S3 bucket $bucketName: '
      '${createBucket.stdout}\n${createBucket.stderr}',
    );
  }
  print('👍 S3 bucket $bucketName successfully created');
}

/// Upload the amplify_outputs.dart file to the S3 bucket
void _uploadAmplifyOutputs(
  String bucketName,
  String pathToAmplifyOutputs,
) {
  print('📲 Uploading amplify_outputs.dart to S3 bucket');
  final downloadRes = Process.runSync(
    'aws',
    [
      '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
      's3',
      'cp',
      pathToAmplifyOutputs,
      's3://$bucketName/amplify_outputs.dart',
    ],
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );
  if (downloadRes.exitCode != 0) {
    throw Exception(
      '❌ Error downloading $bucketName config from S3: '
      '${downloadRes.stdout}\n${downloadRes.stderr}',
    );
  }
  print('👍 Amplify Outputs successfully uploaded to S3 bucket');
}

class AmplifyBackendGroup {
  const AmplifyBackendGroup({
    required this.category,
    required this.backends,
    required this.defaultOutput,
    this.sharedOutputs = const [],
  });

  /// This is the category of the integration group
  final Category category;

  /// This is the list of backends for the group
  final List<AmplifyBackend> backends;

  /// This is the default output path for the group
  final String defaultOutput;

  /// This is the list of shared output paths for the group
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
  /// Root directory is `amplify-flutter/`
  final String pathToSource;
}

final Directory repoRoot = () {
  var dir = Directory.current;
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
