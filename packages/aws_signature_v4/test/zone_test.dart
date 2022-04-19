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

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

const _dummyCredentials = AWSCredentials('accessKeyId', 'secretAccessKey');

void main() {
  final credentialScope = AWSCredentialScope(
    region: 'us-west-2',
    service: 'serviceA',
    dateTime: AWSDateTime(DateTime(2022, 1, 1)),
  );
  final request = AWSHttpRequest(
    method: AWSHttpMethod.get,
    host: 'example.com',
    path: '/',
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

    test('values (with overrides)', () async {
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

    // Sanity check that printing works within signer zones.
    test('print', () {
      // ignore: avoid_print
      signZoned<void>(() => print(''));
    });
  });
}
