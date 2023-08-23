// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:args/args.dart';

final testTypes = [
  'canary',
  'integration',
  'unit test',
];

final frameworkTypes = [
  'flutter',
  'dart',
];

final platformTypes = ['web', 'android', 'ios', 'linux', 'windows'];

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('metric-name')
    ..addOption('is-failed')
    ..addOption('test-type')
    ..addOption('category')
    ..addOption('workflow-name')
    ..addOption('framework')
    ..addOption('flutter-dart-channel')
    ..addOption('dart-version')
    ..addOption('flutter-version')
    ..addOption('dart-compiler')
    ..addOption('platform')
    ..addOption('platform-version')
    ..addOption('failing-step');

  final results = parser.parse(args);

  final metricName = results['metric-name']?.trim();
  final isFailed = results['is-failed'] == 'true';
  final testType = results['test-type']?.trim();
  var category = results['category']?.trim();
  final workflowName = results['workflow-name']?.trim();
  final framework = results['framework']?.trim();
  final flutterDartChannel = results['flutter-dart-channel']?.trim();
  final dartVersion = results['dart-version']?.trim();
  final flutterVersion = results['flutter-version']?.trim();
  final dartCompiler = results['dart-compiler']?.trim();
  final platform = results['platform']?.trim();
  final platformVersion = results['platform-version']?.trim();
  final failingStep = results['failing-step']?.trim();

  if (metricName.isEmpty) {
    print('Must provide metric-name');
    exit(1);
  }

  final value = isFailed ? '1' : '0';

  if (testType.isEmpty) {
    print('Must provide test-type dimension');
    exit(1);
  } else if (!testTypes.contains(testType)) {
    print('test-type is not valid: $testType');
    exit(1);
  }

  if (category.isEmpty) {
    print('Must provide category dimension');
    exit(1);
  } else if (category.contains('/')) {
    // For working directory "packages/analytics/amplify_analytics_pinpoint"
    category = category.split('/')[1];
  } else if (category.contains('_')) {
    // For integration test scope "amplify_analytics_pinpoint_example"
    category = category.split('_')[1];
  }

  if (workflowName.isEmpty) {
    print('Must provide workflow-name dimension');
    exit(1);
  }

  if (framework.isNotEmpty && !frameworkTypes.contains(framework)) {
    print('Framework is not valid: $framework');
    exit(1);
  }

  if (platform.isNotEmpty && !platformTypes.contains(platform)) {
    print('Platform is not valid: $platform');
    exit(1);
  }

  final dimensions = {
    'testType': testType,
    'category': category,
    'workflowName': workflowName,
    if (framework.isNotEmpty) 'framework': framework,
    if (flutterDartChannel.isNotEmpty) 'flutterDartChannel': flutterDartChannel,
    if (dartVersion.isNotEmpty) 'dartVersion': dartVersion,
    if (flutterVersion.isNotEmpty) 'flutterVersion': flutterVersion,
    if (dartCompiler.isNotEmpty) 'dartCompiler': dartCompiler,
    if (platform.isNotEmpty) 'platform': platform,
    if (platformVersion.isNotEmpty) 'platformVersion': platformVersion,
    if (failingStep.isNotEmpty) 'failingStep': failingStep,
  };

  final dimensionString =
      dimensions.entries.map((e) => '${e.key}=${e.value}').join(',');

  final List<String> cloudArgs = [
    'cloudwatch',
    'put-metric-data',
    '--metric-name',
    metricName,
    '--namespace',
    'GithubCanaryApps',
    '--value',
    value,
    '--dimension',
    dimensionString,
  ];

  Process.runSync('aws', cloudArgs);
}
