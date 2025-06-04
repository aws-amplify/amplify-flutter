// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_catches_without_on_clauses

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:path/path.dart' as path;

/// Command to generate API reports for Amplify packages and API change report for amplify_core.
class GenerateApiReportCommand extends AmplifyCommand {
  @override
  String get description =>
      'Generates API reports for Amplify packages and creates an API change report for amplify_core';

  @override
  String get name => 'api-report';

  final List<String> _categoryPackages = [
    'packages/amplify_core',
    'packages/analytics/amplify_analytics_pinpoint',
    'packages/api/amplify_api',
    'packages/auth/amplify_auth_cognito',
    'packages/authenticator/amplify_authenticator',
    'packages/notifications/push/amplify_push_notifications_pinpoint',
    'packages/storage/amplify_storage_s3',
  ];

  @override
  Future<void> run() async {
    await super.run();
    try {
      logger.info('Installing dart_apitool...');
      await _installDartApiTool();

      logger.info('Generating API JSON files for all packages...');
      final failedPackages = <String>[];

      for (final package in _categoryPackages) {
        logger.info('Processing $package...');
        try {
          await _generateApiJson(package);
        } catch (e) {
          logger.error('Failed to process $package: $e');
          failedPackages.add(package);
        }
      }

      logger.info('Generating API change report for amplify_core...');
      await _generateApiChangeReport();

      if (failedPackages.isNotEmpty) {
        logger.warn(
          'Some packages had issues but placeholders were created: ${failedPackages.join(', ')}',
        );
      }

      logger.info('Remember to commit these files with your changes.');
    } catch (e, stackTrace) {
      logger
        ..error('Failed to generate API reports: $e')
        ..verbose('Stack trace: $stackTrace');
      exit(1);
    }
  }

  /// Installs the dart_apitool package globally
  Future<void> _installDartApiTool() async {
    final result = await Process.run('dart', [
      'pub',
      'global',
      'activate',
      'dart_apitool',
    ]);

    if (result.exitCode != 0) {
      logger.error(result.stderr.toString());
      throw Exception('Failed to install dart-apitool');
    }
  }

  /// Generates api.json file for a specific package
  Future<void> _generateApiJson(String packagePath) async {
    // Ensure the package directory exists
    final directory = Directory(packagePath);
    if (!directory.existsSync()) {
      throw Exception('Package directory not found: $packagePath');
    }

    final outputPath = path.join(packagePath, 'api.json');
    logger.info('Extracting API model to $outputPath');

    try {
      final result = await Process.run('dart-apitool', [
        'extract',
        '--input',
        packagePath,
        '--output',
        outputPath,
      ], workingDirectory: rootDir.path);

      if (result.exitCode != 0) {
        logger.error(result.stderr.toString());
        await _createEmptyApiJson(outputPath);
        return;
      }

      // Remove packagePath from the generated JSON since it will be different on ci/cd than on local
      await _removePackagePathFromJson(outputPath);
    } catch (e) {
      logger.warn('Error generating API JSON for $packagePath: $e');
      await _createEmptyApiJson(outputPath);
    }
  }

  /// Creates an empty API JSON file as a fallback
  Future<void> _createEmptyApiJson(String outputPath) async {
    logger.info('Creating an empty API JSON file as a placeholder');
    final outputFile = File(outputPath);
    await outputFile.writeAsString('{}');
    logger.info('Created empty placeholder file at $outputPath');
  }

  /// Generates API change report for amplify_core by comparing with the latest published version
  Future<void> _generateApiChangeReport() async {
    const corePackagePath = 'packages/amplify_core';

    // Read the current version of amplify_core from pubspec.yaml
    final pubspecFile = File(path.join(corePackagePath, 'pubspec.yaml'));
    if (!pubspecFile.existsSync()) {
      throw Exception('Could not find pubspec.yaml for amplify_core');
    }

    final pubspecContent = await pubspecFile.readAsString();
    final versionMatch = RegExp(
      r'version:\s*([\d\.]+)',
    ).firstMatch(pubspecContent);
    final latestPublishedVersion =
        versionMatch?.group(1) ??
        '2.4.1'; // Default to 2.4.1 if not found, should update this regularly with releases

    logger.info(
      'Comparing current code with published version $latestPublishedVersion',
    );

    final outputPath = path.join(corePackagePath, 'api_changes_report.md');

    try {
      final result = await Process.run('dart-apitool', [
        'diff',
        '--old',
        'pub://amplify_core/$latestPublishedVersion',
        '--new',
        corePackagePath,
        '--report-format',
        'markdown',
        '--report-file-path',
        outputPath,
      ], workingDirectory: rootDir.path);

      if (result.exitCode != 0) {
        logger
          ..error(result.stderr.toString())
          ..verbose(result.stdout.toString());
        await _createEmptyApiChangeReport(outputPath);
        return;
      }

      // Verify the file was created
      final outputFile = File(outputPath);
      if (!outputFile.existsSync()) {
        await _createEmptyApiChangeReport(outputPath);
        return;
      }
    } catch (e) {
      logger.warn('Error generating API change report: $e');
      await _createEmptyApiChangeReport(outputPath);
    }
  }

  /// Creates an empty API change report as a fallback
  Future<void> _createEmptyApiChangeReport(String outputPath) async {
    logger.info('Creating an empty API change report as a placeholder');
    final outputFile = File(outputPath);
    await outputFile.writeAsString(
      '# API Changes Report\n\nNo changes detected or report generation failed.\n',
    );
    logger.info('Created placeholder report at $outputPath');
  }

  /// Removes the packagePath field from the generated API JSON file
  Future<void> _removePackagePathFromJson(String filePath) async {
    try {
      final file = File(filePath);
      if (!file.existsSync()) return;

      final content = await file.readAsString();
      final json = jsonDecode(content);

      if (json is Map &&
          json.containsKey('packageApi') &&
          json['packageApi'] is Map) {
        (json['packageApi'] as Map).remove('packagePath');

        const encoder = JsonEncoder.withIndent('  ');
        await file.writeAsString(encoder.convert(json));

        logger.info('Removed packagePath from $filePath');
      }
    } catch (e) {
      logger.warn('Failed to remove packagePath from $filePath: $e');
    }
  }
}
