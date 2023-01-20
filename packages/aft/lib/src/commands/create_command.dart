// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:collection/collection.dart';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as p;

enum CreateTemplate {
  dartPackage,
  flutterPackage,
  flutterPlugin,
}

/// Command to create new Amplify packages.
class CreateCommand extends AmplifyCommand {
  CreateCommand() {
    argParser.addOption(
      'template',
      abbr: 't',
      help: 'The template to use (defaults to `dart`)',
      allowed: CreateTemplate.values.map(
        (template) => template.name.paramCase,
      ),
      defaultsTo: CreateTemplate.dartPackage.name.paramCase,
    );
  }

  @override
  String get description =>
      'Create a Dart/Flutter package using Amplify standards';

  @override
  String get name => 'create';

  /// The selected template.
  late final template = argResults!['template'] as String;

  @override
  Future<void> run() async {
    await super.run();
    final brick = Brick.path(
      p.join(
        rootDir.path,
        'templates',
        template,
      ),
    );
    final name = argResults!.rest.singleOrNull;
    if (name == null) {
      usageException(
        'Usage: aft create [--template <template_name] <package_name>',
      );
    }

    final generator = await MasonGenerator.fromBrick(brick);
    final outputDir = Directory.fromUri(workingDirectory.uri.resolve(name))
      ..createSync();
    final target = DirectoryGeneratorTarget(outputDir);

    // Collect brick variables
    final path = p.relative(outputDir.path, from: rootDir.path);
    final amplifyCoreConstraint =
        repoPackages['amplify_core']!.version.amplifyConstraint();
    final amplifyFlutterConstraint =
        repoPackages['amplify_flutter']!.version.amplifyConstraint();
    final dartSdkConstraint = aftConfig.environment.sdk.toString();
    final flutterSdkConstraint = aftConfig.environment.flutter.toString();
    final androidCompileSdkVersion =
        aftConfig.environment.android.compileSdkVersion;
    final androidMinSdkVersion = aftConfig.environment.android.minSdkVersion;
    final iosMinOsVersion = aftConfig.environment.ios.minOSVersion;
    final macosMinOsVersion = aftConfig.environment.macOS.minOSVersion;

    await generator.hooks.preGen(
      workingDirectory: outputDir.path,
    );
    await generator.generate(
      target,
      vars: {
        'name': name,
        'path': path,
        'amplifyCoreConstraint': amplifyCoreConstraint,
        'amplifyFlutterConstraint': amplifyFlutterConstraint,
        'dartSdkConstraint': dartSdkConstraint,
        'flutterSdkConstraint': flutterSdkConstraint,
        'androidCompileSdkVersion': androidCompileSdkVersion,
        'androidMinSdkVersion': androidMinSdkVersion,
        'iosMinOsVersion': iosMinOsVersion,
        'macosMinOsVersion': macosMinOsVersion,
      },
    );
    await generator.hooks.postGen(
      workingDirectory: outputDir.path,
    );
  }
}
