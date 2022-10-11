// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
    await client.putConfigRule(
      PutConfigRuleRequest(
        configRule: configRule,
      ),
    );
    {
      final rules = await client.describeConfigRules(
        DescribeConfigRulesRequest(),
      );
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
    await client.deleteConfigRule(
      DeleteConfigRuleRequest(configRuleName: configRule.configRuleName!),
    );
    {
      final rules = await client.describeConfigRules(
        DescribeConfigRulesRequest(),
      );
      expect(rules.items, hasLength(0));
    }
  });
}
