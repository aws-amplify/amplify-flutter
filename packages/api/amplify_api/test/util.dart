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

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';

class TestIamAuthProvider extends AWSIamAmplifyAuthProvider {
  @override
  Future<AWSCredentials> retrieve() async {
    return const AWSCredentials(
        'fake-access-key-123', 'fake-secret-access-key-456');
  }

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(await retrieve()),
    );
    final scope = AWSCredentialScope(
      region: options!.region,
      service: AWSService.appSync,
    );
    return signer.sign(
      request,
      credentialScope: scope,
    );
  }
}

void validateSignedRequest(http.BaseRequest request) {
  const userAgentHeader =
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent;
  expect(
    request.headers[userAgentHeader],
    contains('aws-sigv4'),
  );
}
