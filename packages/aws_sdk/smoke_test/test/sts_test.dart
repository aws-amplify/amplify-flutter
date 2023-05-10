// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smoke_test/src/sdk/iam.dart';
import 'package:smoke_test/src/sdk/sts.dart';
import 'package:test/test.dart';

import 'common.dart';

void main() {
  group('STS', () {
    const host = 'localhost.localstack.cloud:4566';
    late final IamClient iam;
    late final StsClient client;

    setUpAll(() {
      iam = IamClient(
        region: 'us-west-2',
        baseUri: Uri.http(host),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
      client = StsClient(
        region: 'us-west-2',
        baseUri: Uri.http(host),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    // Follow the "Assume a role" example from
    // https://docs.aws.amazon.com/code-library/latest/ug/sts_example_sts_AssumeRole_section.html
    test('Assume a role', () async {
      // Get caller identity
      final identity = await client
          .getCallerIdentity(
            GetCallerIdentityRequest(),
          )
          .result;

      // Create a role to assume
      final role = await iam
          .createRole(
            CreateRoleRequest(
              roleName: uuid(),
              assumeRolePolicyDocument: '''
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "${identity.arn!}"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
              ''',
            ),
          )
          .result;

      // Get credentials for the user
      final credentials = await client
          .assumeRole(
            AssumeRoleRequest(
              roleArn: role.role.arn,
              roleSessionName: 'AssumeRoleTest',
            ),
          )
          .result;

      expect(credentials.credentials, isNotNull);

      // Get caller identity with the assumed role
      final assumedIdentity = await client
          .getCallerIdentity(
            GetCallerIdentityRequest(),
            credentialsProvider: AWSCredentialsProvider(
              AWSCredentials(
                credentials.credentials!.accessKeyId,
                credentials.credentials!.secretAccessKey,
                credentials.credentials!.sessionToken,
              ),
            ),
          )
          .result;

      expect(assumedIdentity.arn, startsWith('arn:aws:sts::'));
    });
  });
}
