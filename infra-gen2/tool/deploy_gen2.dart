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
        pathToSource: 'infra-gen2/backends/api/api-multi-auth',
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
    backends: [
      AmplifyBackend(
        name: 'email-sign-in',
        identifier: 'email-sign-in',
        pathToSource: 'infra-gen2/backends/auth/email-sign-in',
      ),
      AmplifyBackend(
        name: 'phone-sign-in',
        identifier: 'phone-sign-in',
        pathToSource: 'infra-gen2/backends/auth/phone-sign-in',
      ),
      AmplifyBackend(
        name: 'mfa-optional-sms',
        identifier: 'mfa-opt-sms',
        pathToSource: 'infra-gen2/backends/auth/mfa-optional-sms',
      ),
      AmplifyBackend(
        name: 'mfa-required-sms',
        identifier: 'mfa-req-sms',
        pathToSource: 'infra-gen2/backends/auth/mfa-required-sms',
      ),
    ],
  ),
  AmplifyBackendGroup(
    category: Category.storage,
    defaultOutput: 'packages/storage/amplify_storage_s3/example/lib',
    backends: [
      AmplifyBackend(
        name: 'main',
        identifier: 'main',
        pathToSource: 'infra-gen2/backends/storage/main',
      ),
      AmplifyBackend(
        name: 'dots-in-name',
        identifier: 'dots-in-name',
        pathToSource: 'infra-gen2/backends/storage/dots-in-name',
      ),
    ],
  ),
  AmplifyBackendGroup(
    category: Category.analytics,
    defaultOutput: 'packages/analytics/amplify_analytics_pinpoint/example/lib',
    backends: [
      AmplifyBackend(
        name: 'main',
        identifier: 'main',
        pathToSource: 'infra-gen2/backends/analytics/main',
      ),
      AmplifyBackend(
        name: 'no-unauth-access',
        identifier: 'no-unauth-acc',
        pathToSource: 'infra-gen2/backends/analytics/no-unauth-access',
      ),
      AmplifyBackend(
        name: 'no-unauth-identities',
        identifier: 'no-unauth-id',
        pathToSource: 'infra-gen2/backends/analytics/no-unauth-identities',
      ),
    ],
  ),
];

const pathToBackends = 'infra-gen2/backends';

void main(List<String> arguments) async {
  final args = _parseArgs(arguments);
  final verbose = args.flag('verbose');
  final categoryToDeploy = args['category'];

  final bucketNames = <String>[];

  print('🏃 Running build for infra-gen2');
  await _buildProject();

  print('🚀 Deploying Gen 2 backends!');
  for (final backendGroup in infraConfig) {
    if (categoryToDeploy != null &&
        backendGroup.category.name != categoryToDeploy) {
      continue;
    }
    // TODO(equartey): Could be removed when all backends are defined.
    if (backendGroup.backends.isEmpty) {
      continue;
    }
    var amplifyEnvironments = <String, String>{};
    final categoryName = backendGroup.category.name;
    final outputPath = p.join(repoRoot.path, backendGroup.defaultOutput);
    final amplifyOutputs = File(p.join(outputPath, 'amplify_outputs.dart'));
    final amplifyConfiguration =
        File(p.join(outputPath, 'amplifyconfiguration.dart'));

    // create the output file if it does not exist
    if (!amplifyOutputs.existsSync()) {
      amplifyOutputs.createSync(recursive: true);
    }
    if (!amplifyConfiguration.existsSync()) {
      amplifyConfiguration.createSync(recursive: true);
    }

    print('🏃 Running sandbox deployment for $categoryName');
    for (final backend in backendGroup.backends) {
      final backendName = backend.name;
      final stackID = await _deployBackend(
        backendGroup.category,
        backend,
        amplifyOutputs.path.replaceFirst('amplify_outputs.dart', ''),
        verbose,
      );

      _generateGen1Config(
        backendGroup.category,
        backend,
        amplifyConfiguration.path.replaceFirst('amplifyconfiguration.dart', ''),
        stackID,
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

    // Copy config files to shared paths
    _copyConfigFile(
      backendGroup.sharedOutputs,
      [amplifyOutputs, amplifyConfiguration],
    );

    // Check if the S3 bucket exists
    var bucketName = _createBucketName(categoryName);
    final remoteBucketName = _getS3BucketName(bucketName);
    if (remoteBucketName != null && remoteBucketName.isNotEmpty) {
      bucketName = remoteBucketName;
      print('🔍 Using existing S3 bucket $bucketName');
    } else {
      _createS3Bucket(bucketName);
    }
    bucketNames.add(bucketName);

    // Upload config files to S3 bucket
    _uploadConfigFileToS3(
      bucketName,
      [amplifyOutputs, amplifyConfiguration],
    );

    print('✅ Deployment for $categoryName Category complete');
  }

  print('🎉 All backends deployed successfully!');

  print('🪣 S3 Bucket Names: $bucketNames');
}

Future<Process> _buildProject() async {
  return Process.start(
    'npm',
    [
      'run',
      'build',
    ],
  );
}

ArgResults _parseArgs(List<String> args) {
  final parser = ArgParser()
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Run command in verbose mode',
      defaultsTo: false,
    )
    ..addOption(
      'category',
      abbr: 'c',
      help: 'Specify the category to deploy.',
      allowed: Category.values.map((e) => e.name).toList(),
      defaultsTo: null,
    );

  return parser.parse(args);
}

/// Deploy Sandbox for a given backend backend
Future<String> _deployBackend(
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
    process.stderr.transform(const SystemEncoding().decoder).listen((data) {
      print('❌ Error: $data');
    });
  }

  var stackID = '';

  // Listen to stdout for stack ID
  await for (final String line in process.stdout
      .transform(utf8.decoder)
      .transform(const LineSplitter())) {
    if (verbose) {
      print(line);
    }
    // Save Stack ID
    if (line.contains('Stack:')) {
      stackID = line.split('Stack:').last.trim();
    }
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
    return stackID;
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

/// Copy a given config file to a list of shared paths
void _copyConfigFile(
  List<String> outputPaths,
  List<File> configFiles,
) {
  if (outputPaths.length <= 1) {
    return;
  }

  for (final configFile in configFiles) {
    final fileName = configFile.path.split('/').last;

    print('👯 Copying $fileName to other shared paths');
    for (final outputPath in outputPaths) {
      final destination = p.join(repoRoot.path, outputPath);
      final outputFile = File(p.join(destination, fileName));

      if (!outputFile.existsSync()) {
        outputFile.createSync(recursive: true);
      }
      final amplifyOutputsContents = configFile.readAsStringSync();

      outputFile.writeAsStringSync(amplifyOutputsContents);
    }
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

/// Create an S3 bucket
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
void _uploadConfigFileToS3(
  String bucketName,
  List<File> configFiles,
) {
  for (final configFile in configFiles) {
    final fileName = configFile.path.split('/').last;
    print('📲 Uploading $fileName to S3 bucket');
    final downloadRes = Process.runSync(
      'aws',
      [
        '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
        's3',
        'cp',
        configFile.path,
        's3://$bucketName/$fileName',
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
    print('👍 $fileName successfully uploaded to S3 bucket');
  }
}

/// Generates gen 1 amplifyconfiguration.dart file
void _generateGen1Config(
  Category category,
  AmplifyBackend backend,
  String outputPath,
  String stack,
) {
  print(
    '📁 Generating gen 1 config file for ${category.name} ${backend.name}...',
  );

  // Deploy the backend
  final process = Process.runSync(
    'npx',
    [
      'ampx',
      'generate',
      'outputs',
      '--format',
      'dart',
      '--outputs-version',
      '0',
      '--out-dir',
      outputPath,
      '--profile=${Platform.environment['AWS_PROFILE'] ?? 'default'}',
      '--stack',
      stack,
      '--debug',
      'true',
    ],
    workingDirectory: p.join(repoRoot.path, backend.pathToSource),
  );

  if (process.exitCode != 0) {
    throw Exception(
      '❌ Error generating gen 1 config file for ${category.name} ${backend.name}:: ${process.stdout}',
    );
  } else {
    print(
      '👍 Gen 1 config file for ${category.name} ${backend.name} generated',
    );
  }
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
