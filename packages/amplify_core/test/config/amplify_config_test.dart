// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import 'testdata/cli_generated.dart';
import 'testdata/expected_aws_configs.dart';
import 'testdata/expected_cli_configs.dart';
import 'testdata/test_values.dart';

void main() {
  group('Config', () {
    for (final testSuite in allTests) {
      group('Generated v${testSuite.version}', () {
        for (final testData in testSuite.tests) {
          final name = testData.name;
          final json = jsonDecode(testData.config) as Map<String, dynamic>;
          addUserConfig(json);

          final expectedCliConfig = expectedCliConfigs[name]!;
          final expectedAwsConfig = expectedAwsConfigs[name]!;

          group(name, () {
            test('AmplifyConfig.fromJson', () {
              final cliConfig = AmplifyConfig.fromJson(json);
              expect(cliConfig, equals(expectedCliConfig));
              expect(cliConfig.toJson(), equals(json));
            });

            test('AmplifyConfig.toJson', () {
              final cliConfig = AmplifyConfig.fromJson(json);
              expect(cliConfig.toJson(), equals(json));
            });

            test('AWSAmplifyConfig.from', () {
              final cliConfig = AmplifyConfig.fromJson(json);
              final awsConfig = AWSAmplifyConfig.from(cliConfig);
              expect(awsConfig, equals(expectedAwsConfig));
            });

            test('AWSAmplifyConfig.toJson', () {
              final awsConfig = AWSAmplifyConfig.parse(jsonEncode(json));
              expect(awsConfig.toJson(), equals(expectedAwsConfig.toJson()));
            });

            test('AWSAmplifyConfig.toCli', () {
              final awsConfig = AWSAmplifyConfig.parse(jsonEncode(json));
              expect(awsConfig.toCli(), equals(expectedCliConfig));
            });
          });
        }
      });
    }
  });
}

// Add values not supported by the CLI but added by the user after the fact.
void addUserConfig(Map<String, dynamic> json) {
  json['analytics']?['plugins']?['awsPinpointAnalyticsPlugin']
      ?['autoFlushEventsInterval'] = ANALYTICS_FLUSH_INTERVAL;
}
