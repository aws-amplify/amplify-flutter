// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

/// Parse and send metric data using AWS CLI
void main(List<String> args) {
  final metricName = args[0];
  final value = args[1];
  final dimensions = args.length > 2 ? args[2] : '';

  final metricNameTrimmed = metricName.trim();
  final valueTrimmed = value.trim();
  final dimensionsTrimmed = dimensions.trim();

  final metricNameRegex = RegExp(r'^[a-zA-Z0-9\ \_\-]+$');
  final valueRegex = RegExp(r'^[-+]?[0-9]+\.?[0-9]*$');
  final dimensionsRegex = RegExp(r'^([^=,]+=[^=,]+(?:,[^=,]+=[^=,]+)*)?$');

  if (!metricNameRegex.hasMatch(metricNameTrimmed)) {
    print(
        'Metric name can only contain alphanumeric characters, space character, -, and _.');
    exit(1);
  }
  if (!valueRegex.hasMatch(valueTrimmed)) {
    print('Metric value must be a valid number');
    exit(1);
  }
  if (!dimensionsRegex.hasMatch(dimensionsTrimmed)) {
    print(
        'Dimensions must be empty or be in format string=string,string=string,...');
    exit(1);
  }

  final cloudArgs = [
    'cloudwatch',
    'put-metric-data',
    '--metric-name',
    metricName,
    '--namespace',
    'GithubCanaryApps',
    '--value',
    value,
  ];

  if (!dimensionsTrimmed.isEmpty) {
    cloudArgs.add('--dimensions');
    cloudArgs.add(dimensionsTrimmed);
  }

  Process.runSync('aws', cloudArgs);
}
