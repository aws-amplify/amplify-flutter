import 'dart:io';

import 'package:aft/aft.dart';

class GenerateApiReportCommand extends AmplifyCommand {

  @override
  // TODO: implement description
  String get description => 'Generates API reports for Amplify packages and creates an API change report for amplify_core';

  @override
  // TODO: implement name
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
    try {
      // First, ensure dart-apitool is installed
      await _installDartApiTool();

      // Generate api.json for all packages
      for (final package in _categoryPackages) {
        await _generateApiJson(package);
      }

      // Generate API change report for amplify_core
      await _generateApiChangeReport();

      logger.info('API reports generated successfully');
    } catch (e) {
      logger.error('Failed to generate API reports: $e');
      exit(1);
    }
  }

  Future<void> _installDartApiTool() async {
    final result = await Process.run(
      'dart',
      ['pub', 'global', 'activate', 'dart_apitool'],
    );

    if (result.exitCode != 0) {
      throw Exception('Failed to install dart-apitool: ${result.stderr}');
    }
  }

  Future<void> _generateApiJson(String packagePath) async {
    final result = await Process.run(
      'dart-apitool',
      [
        'extract',
        '--input',
        packagePath,
        '--output',
        '$packagePath/api.json',
      ],
    );

    if (result.exitCode != 0) {
      throw Exception('Failed to generate api.json for $packagePath: ${result.stderr}');
    }
  }

  Future<void> _generateApiChangeReport() async {
    // Read the current version of amplify_core from pubspec.yaml
    final pubspecFile = File('packages/amplify_core/pubspec.yaml');
    final pubspecContent = await pubspecFile.readAsString();
    final versionMatch = RegExp(r'version:\s*([\d\.]+)').firstMatch(pubspecContent);
    final currentVersion = versionMatch?.group(1) ?? '2.4.1'; // Default to 2.4.1 if not found

    final result = await Process.run(
      'dart-apitool',
      [
        'diff',
        '--old',
        'pub://amplify_core/$currentVersion',
        '--new',
        './packages/amplify_core',
        '--report-format',
        'markdown',
        '--report-file-path',
        './packages/amplify_core/api_changes_report.md',
      ],
    );

    if (result.exitCode != 0) {
      throw Exception('Failed to generate API change report: ${result.stderr}');
    }
  }

}
