//
// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Takes input [request] as canonical request and generates a signed version.
@internal
Future<AWSSignedRequest> generateAWSSignedRequest(
  http.BaseRequest request, {
  required String region,
  required AWSService service,
  required AWSCredentials credentials,
}) {
  // Create signer helper params.
  final AWSSigV4Signer signer = AWSSigV4Signer(
    credentialsProvider: AWSCredentialsProvider(credentials),
  );
  final AWSCredentialScope scope = AWSCredentialScope(
    region: region,
    service: service,
  );

  final AWSHttpMethod method = AWSHttpMethod.fromString(request.method);

  AWSBaseHttpRequest requestToSign;
  if (request is http.Request) {
    requestToSign = AWSHttpRequest(
      method: method,
      uri: request.url,
      headers: {
        AWSHeaders.contentType: 'application/x-amz-json-1.1',
        ...request.headers
      },
      body: request.bodyBytes,
    );
  } else if (request is http.StreamedRequest) {
    requestToSign = AWSStreamedHttpRequest(
      method: method,
      uri: request.url,
      headers: {
        AWSHeaders.contentType: 'application/x-amz-json-1.1',
        ...request.headers
      },
      body: request.finalize(),
    );
  } else {
    // TODO multipart request
    throw UnimplementedError(
      'Multipart HTTP requests are not supported with IAM authorization.',
    );
  }

  // Finally, create and sign canonical request.
  return signer.sign(
    requestToSign,
    credentialScope: scope,
  );
}
