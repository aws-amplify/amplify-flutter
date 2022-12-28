// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

const _dummyCredentials = AWSCredentials('accessKeyId', 'secretAccessKey');

void main() {
  final credentialScope = AWSCredentialScope.raw(
    region: 'us-west-2',
    service: 'serviceA',
    dateTime: AWSDateTime(DateTime(2022, 1, 1)),
  );
  final request = AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.parse('https://example.com'),
  );
  const signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(_dummyCredentials),
  );

  group('Zone', () {
    test('values (no overrides)', () async {
      final signedRequest = await signer.sign(
        request,
        credentialScope: credentialScope,
      );
      expect(
        signedRequest.headers['Authorization'],
        contains(
          'Credential=accessKeyId/20220101/us-west-2/serviceA/aws4_request',
        ),
      );
    });

    test('values (with string overrides)', () async {
      final signedRequest = await runZoned(
        () => signer.sign(
          request,
          credentialScope: credentialScope,
        ),
        zoneValues: {
          #sigV4Region: 'us-east-1',
          #sigV4Service: 'serviceB',
        },
      );
      expect(
        signedRequest.headers['Authorization'],
        contains(
          'Credential=accessKeyId/20220101/us-east-1/serviceB/aws4_request',
        ),
      );
    });

    test('values (with typed override)', () async {
      final signedRequest = await runZoned(
        () => signer.sign(
          request,
          credentialScope: credentialScope,
        ),
        zoneValues: {
          #sigV4Region: 'us-east-1',
          #sigV4Service: AWSService.s3,
        },
      );
      expect(
        signedRequest.headers['Authorization'],
        contains(
          'Credential=accessKeyId/20220101/us-east-1/s3/aws4_request',
        ),
      );
    });
  });
}
