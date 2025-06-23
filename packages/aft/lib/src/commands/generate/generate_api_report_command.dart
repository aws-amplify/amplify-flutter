// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_catches_without_on_clauses

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:path/path.dart' as path;

/// Command to generate API reports for Amplify packages.
class GenerateApiReportCommand extends AmplifyCommand {
  GenerateApiReportCommand() {
    argParser.addOption(
      'packages',
      abbr: 'p',
      help: 'Generate API reports for specific packages only (comma-separated)',
    );
  }

  @override
  String get description =>
      'Generates API reports for Amplify packages';

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
      var packagePaths = aftConfig.allPackages.values
          .where((package) => 
              package.isDevelopmentPackage && 
              package.isPublishable &&
              !package.isLintsPackage && 
              !package.path.contains('_test'))
          .map((package) => package.path)
          .toList();
      
      // Filter by specific packages if provided
      final specificPackages = argResults?['packages'] as String?;
      if (specificPackages != null) {
        final packageNames = specificPackages.split(',').map((s) => s.trim()).toSet();
        packagePaths = packagePaths.where((path) {
          final packageName = aftConfig.allPackages.values
              .firstWhere((pkg) => pkg.path == path)
              .name;
          return packageNames.contains(packageName);
        }).toList();
      }
      
      // Sort package paths for deterministic processing
      packagePaths.sort();
      
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
      final pubspecContent = pubspecFile.readAsStringSync();
      final nameMatch = RegExp(r'name:\s*([^\s]+)').firstMatch(pubspecContent);
      packageName = nameMatch?.group(1) ?? path.basename(packagePath);
    } else {
      packageName = path.basename(packagePath);
    }
    
    final outputPath = path.join(_apiReportsDir, '$packageName.api.json');
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
      if (!file.existsSync()) return;

      final content = await file.readAsString();
      final json = jsonDecode(content);

      if (json is Map && 
          json.containsKey('packageApi') && 
          json['packageApi'] is Map) {
        
        final packageApi = json['packageApi'] as Map;
        
        if (packageApi.containsKey('interfaceDeclarations')) {
          final interfaceDeclarations = packageApi['interfaceDeclarations'];
          
          // Sort interface declarations and executable declarations for deterministic output
          if (interfaceDeclarations is List) {
            interfaceDeclarations.sort((a, b) {
              if (a is Map && b is Map && a['name'] != null && b['name'] != null) {
                return (a['name'] as String).compareTo(b['name'] as String);
              }
              return 0;
            });
            
            // Sort executableDeclarations within each interface
            for (final declaration in interfaceDeclarations) {
              if (declaration is Map && declaration['executableDeclarations'] is List) {
                final executables = declaration['executableDeclarations'] as List;
                executables.sort((a, b) {
                  if (a is Map && b is Map && a['name'] != null && b['name'] != null) {
                    return (a['name'] as String).compareTo(b['name'] as String);
                  }
                  return 0;
                });
              }
            }
          }
          
          final simplifiedJson = {
            'interfaceDeclarations': interfaceDeclarations
          };
          
          // Convert to JSON string and strip path fields in one pass
          const encoder = JsonEncoder.withIndent('  ');
          var jsonString = encoder.convert(simplifiedJson);
          
          // Remove relativePath and entryPoints fields
          jsonString = jsonString.replaceAll(RegExp(r',?\s*"relativePath":\s*"[^"]*"'), '');
          jsonString = jsonString.replaceAll(RegExp(r',?\s*"entryPoints":\s*\[[^\]]*\]'), '');
          
          await file.writeAsString(jsonString);
          
          logger.info('Extracted API information from $filePath');
        }
      }
    } catch (e) {
      logger.warn('Failed to process API JSON for $filePath: $e');
    }
  }


}
