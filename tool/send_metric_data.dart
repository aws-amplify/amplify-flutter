// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  final metricName = args[0];
  final value = args[1];
  final testType = args[2];
  final category = args[3];
  final workflowName = args[4];
  final framework = args[5];
  final flutterDartChannel = args[6];
  final dartVersion = args[7];
  final flutterVersion = args[8];
  final dartCompiler = args[9];
  final platform = args[10];
  final platformVersion = args[11];
  final githubRunId = args[12];

  final metricNameTrimmed = metricName.trim();
  final valueTrimmed = value.trim();

  final metricNameRegex = RegExp(r'^[a-zA-Z0-9\ \_\-]+$');
  final valueRegex = RegExp(r'^[-+]?[0-9]+\.?[0-9]*$');

  if (!metricNameRegex.hasMatch(metricNameTrimmed)) {
    print(
        'Metric name can only contain alphanumeric characters, space character, -, and _.');
    exit(1);
  }
  if (!valueRegex.hasMatch(valueTrimmed)) {
    print('Metric value must be a valid number');
    exit(1);
  }

  if (testType.isEmpty) {
    print('Must provide testType dimension');
    exit(1);
  }

  if (category.isEmpty) {
    print('Must provide category dimension');
    exit(1);
  }

  if (workflowName.isEmpty) {
    print('Must provide workflowName dimension');
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
    'failingStep': getFailingStep(githubRunId)
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

Future<String> getFailingStep(String githubRunId) async {
  // Fetch the workflow run details
  var result =
      await Process.run('gh', ['run', 'view', githubRunId, '--json', 'jobs']);
  var runData = jsonDecode(result.stdout);

  // Parse the data and get the name of the failed step
  var failedStep = 'none';
  for (var job in runData['jobs']) {
    for (var step in job['steps']) {
      if (step['status'] == 'completed' && step['conclusion'] == 'failure') {
        failedStep = step['name'];
        break;
      }
    }
  }
  return failedStep;
}
