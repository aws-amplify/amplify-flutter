// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:smoke_test/src/sdk/config_service.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  // Adapted from:
  // https://docs.aws.amazon.com/config/latest/developerguide/service_code_examples.html

  test('Config', () async {
    final client = ConfigClient(
      region: 'us-west-2',
      baseUri: Uri.http('localhost:4566'),
      credentialsProvider: const AWSCredentialsProvider(
        AWSCredentials('accessKeyId', 'secretAccessKey'),
      ),
      client: localClient,
    );

    // Put a rule
    final configRule = ConfigRule(
      configRuleName: 'S3BucketRule',
      description: 'S3 Public Read Prohibited Bucket Rule',
      scope: Scope(
        complianceResourceTypes: ['AWS::S3::Bucket'],
      ),
      source: Source(
        owner: Owner.aws,
        sourceIdentifier: 'S3_BUCKET_PUBLIC_READ_PROHIBITED',
      ),
      inputParameters: '{}',
      configRuleState: ConfigRuleState.active,
    );
    await client
        .putConfigRule(
          PutConfigRuleRequest(
            configRule: configRule,
          ),
        )
        .result;
    {
      final rules = await client
          .describeConfigRules(
            DescribeConfigRulesRequest(),
          )
          .result;
      expect(rules.items, hasLength(1));

      final rule = rules.items.single;
      expect(
        rule,
        // configRule + items added by AWS
        configRule.rebuild(
          (b) => b
            ..configRuleId = rule.configRuleId
            ..configRuleArn = rule.configRuleArn,
        ),
      );
    }

    // Delete a rule
    await client
        .deleteConfigRule(
          DeleteConfigRuleRequest(configRuleName: configRule.configRuleName!),
        )
        .result;
    {
      final rules = await client
          .describeConfigRules(
            DescribeConfigRulesRequest(),
          )
          .result;
      expect(rules.items, hasLength(0));
    }
  });
}
