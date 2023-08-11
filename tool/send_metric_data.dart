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
    ..addOption('testType')
    ..addOption('category')
    ..addOption('workflowName')
    ..addOption('framework')
    ..addOption('flutterDartChannel')
    ..addOption('dartVersion')
    ..addOption('flutterVersion')
    ..addOption('dartCompiler')
    ..addOption('platform')
    ..addOption('platformVersion')
    ..addOption('failingStep');

  final results = parser.parse(args);

  final metricName = results['metric-name']?.trim();
  final isFailed = results['is-failed'] == 'true';
  final testType = results['testType']?.trim();
  var category = results['category']?.trim();
  final workflowName = results['workflowName']?.trim();
  final framework = results['framework']?.trim();
  final flutterDartChannel = results['flutterDartChannel']?.trim();
  final dartVersion = results['dartVersion']?.trim();
  final flutterVersion = results['flutterVersion']?.trim();
  final dartCompiler = results['dartCompiler']?.trim();
  final platform = results['platform']?.trim();
  final platformVersion = results['platformVersion']?.trim();
  final failingStep = results['failingStep']?.trim();

  if (metricName.isEmpty) {
    print('Must provide metricName');
    exit(1);
  }

  final value = isFailed ? '1' : '0';

  if (testType.isEmpty) {
    print('Must provide testType dimension');
    exit(1);
  } else if (!testTypes.contains(testType)) {
    print('TestType is not valid: ${testType}');
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
    print('Must provide workflowName dimension');
    exit(1);
  }

  if (framework.isNotEmpty && !frameworkTypes.contains(framework)) {
    print('Framework is not valid: ${framework}');
    exit(1);
  }

  if (platform.isNotEmpty && !platformTypes.contains(platform)) {
    print('Platform is not valid: ${platform}');
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
