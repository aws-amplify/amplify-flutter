// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

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
  final metricName = args[0].trim();
  final isFailed = args[1] == 'failed';
  final testType = args[2].trim();
  var category = args[3].trim();
  final workflowName = args[4].trim();
  final framework = args[5].trim();
  final flutterDartChannel = args[6].trim();
  final dartVersion = args[7].trim();
  final flutterVersion = args[8].trim();
  final dartCompiler = args[9].trim();
  final platform = args[10].trim();
  final platformVersion = args[11].trim();
  final failingStep = args[12].trim();

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

  final cloudArgs = [
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
