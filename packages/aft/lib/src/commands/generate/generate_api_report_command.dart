// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_catches_without_on_clauses, cascade_invocations

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';

/// Command to generate API reports for Amplify packages.
class GenerateApiReportCommand extends AmplifyCommand with GlobOptions {
  @override
  String get description => 'Generates API reports for Amplify packages';

  @override
  String get name => 'api-report';

  /// Directory where all API reports will be stored
  final String _apiReportsDir = 'packages/aft/api_reports';

  @override
  Future<void> run() async {
    await super.run();
    try {
      logger.info('Installing dart_apitool...');
      await _installDartApiTool();

      // Ensure API reports directory exists
      final reportsDir = Directory(_apiReportsDir);
      if (!reportsDir.existsSync()) {
        reportsDir.createSync(recursive: true);
        logger.info('Created API reports directory at $_apiReportsDir');
      }

      logger.info('Generating API JSON files for all packages...');
      final failedPackages = <String>[];
      // Filter packages to only include development packages (not examples or test packages)
      final packagePaths = commandPackages.values
          .where(
            (package) =>
                package.isDevelopmentPackage &&
                package.isPublishable &&
                !package.isLintsPackage &&
                !package.isTestPackage,
          )
          .map((package) => package.path)
          .toList();

      for (final packagePath in packagePaths) {
        logger.info('Processing $packagePath...');
        try {
          await _generateApiJson(packagePath);
        } catch (e) {
          logger.error('Failed to process $packagePath: $e');
          failedPackages.add(packagePath);
        }
      }

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

    // Extract package name for the output file
    // Use the actual package name from pubspec if available
    final pubspecFile = File(path.join(packagePath, 'pubspec.yaml'));
    String packageName;

    if (pubspecFile.existsSync()) {
      final pubspec = Pubspec.parse(await pubspecFile.readAsString());
      packageName = pubspec.name;
    } else {
      packageName = path.basename(packagePath);
    }

    final outputPath = path.join(
      rootDir.path,
      _apiReportsDir,
      '$packageName.api.json',
    );

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
        logger.info('dart-apitool failed with exit code: ${result.exitCode}');
        await _createEmptyApiJson(outputPath);
        return;
      } else {
        logger.info('dart-apitool succeeded for $packagePath');
      }

      // Extract only the interfaceDeclarations to avoid frequent changes due to package versions
      await _extractInterfaceDeclarations(outputPath);
    } catch (e) {
      logger.warn('Error generating API JSON for $packagePath: $e');
      await _createEmptyApiJson(outputPath);
    }
  }

  /// Creates an empty API JSON file as a fallback
  Future<void> _createEmptyApiJson(String outputPath) async {
    logger.info('Creating an empty API JSON file as a placeholder');
    final outputFile = File(outputPath);
    await outputFile.writeAsString('{"interfaceDeclarations": {}}');
    logger.info('Created empty placeholder file at $outputPath');
  }

  /// Extracts only the essential API information from the generated API JSON file
  /// to avoid frequent changes due to package versions and dependencies
  Future<void> _extractInterfaceDeclarations(String filePath) async {
    try {
      final file = File(filePath);

      final content = await file.readAsString();

      final json = jsonDecode(content);

      if (json is Map &&
          json.containsKey('packageApi') &&
          json['packageApi'] is Map) {
        final packageApi = json['packageApi'] as Map;

        if (packageApi.containsKey('interfaceDeclarations')) {
          final interfaceDeclarations = packageApi['interfaceDeclarations'];

          final simplifiedJson = {
            'interfaceDeclarations': interfaceDeclarations,
          };

          // Convert to JSON string and strip path fields in one pass
          const encoder = JsonEncoder.withIndent('  ');
          var jsonString = encoder.convert(simplifiedJson);

          // Remove path-related fields
          jsonString = jsonString.replaceAll(
            RegExp(r',?\s*"relativePath":\s*"[^"]*"'),
            '',
          );
          jsonString = jsonString.replaceAll(
            RegExp(r',?\s*"entryPoints":\s*\[[^\]]*\]'),
            '',
          );
          jsonString = jsonString.replaceAll(
            RegExp(r',?\s*"packagePath":\s*"[^"]*"'),
            '',
          );

          await file.writeAsString(jsonString);
        } else {
          logger.info(
            'No interfaceDeclarations found in packageApi for $filePath',
          );
        }
      } else {
        logger.info(
          'Unexpected JSON structure in $filePath - not packageApi format',
        );
      }
    } catch (e) {
      logger.warn('Failed to process API JSON for $filePath: $e');
    }
  }
}
