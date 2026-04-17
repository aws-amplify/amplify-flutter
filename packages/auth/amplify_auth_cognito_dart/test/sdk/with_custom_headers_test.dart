// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/interceptors/with_custom_headers.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:smithy/smithy.dart' show WithHeader;
import 'package:test/test.dart';

AWSHttpRequest _createRequest({Map<String, String>? headers}) {
  return AWSHttpRequest(
    method: AWSHttpMethod.post,
    uri: Uri.parse('https://cognito-idp.us-east-1.amazonaws.com'),
    headers: headers ?? {},
  );
}

void main() {
  group('WithCustomHeaders', () {
    test('adds custom headers to the request', () async {
      final interceptor = WithCustomHeaders(
        () async => {
          'x-custom-header': 'custom-value',
          'x-another-header': 'another-value',
        },
      );

      final request = _createRequest();
      final result = await interceptor.intercept(request);

      expect(result.headers['x-custom-header'], 'custom-value');
      expect(result.headers['x-another-header'], 'another-value');
    });

    test('custom headers override existing headers', () async {
      final interceptor = WithCustomHeaders(
        () async => {'x-existing': 'new-value'},
      );

      final request = _createRequest(
        headers: {'x-existing': 'old-value'},
      );
      final result = await interceptor.intercept(request);

      expect(result.headers['x-existing'], 'new-value');
    });

    test('preserves existing headers when no conflict', () async {
      final interceptor = WithCustomHeaders(
        () async => {'x-custom': 'custom-value'},
      );

      final request = _createRequest(
        headers: {'x-existing': 'existing-value'},
      );
      final result = await interceptor.intercept(request);

      expect(result.headers['x-existing'], 'existing-value');
      expect(result.headers['x-custom'], 'custom-value');
    });

    test('handles empty headers from callback', () async {
      final interceptor = WithCustomHeaders(
        () async => {},
      );

      final request = _createRequest(
        headers: {'x-existing': 'existing-value'},
      );
      final result = await interceptor.intercept(request);

      expect(result.headers['x-existing'], 'existing-value');
      expect(result.headers.length, 1);
    });
  });

  group('WithCustomHeaders integration', () {
    test('custom headers are present on outgoing SDK requests', () async {
      // Captured request headers from the mock HTTP client.
      late Map<String, String> capturedHeaders;

      final mockHttpClient = MockAWSHttpClient((request, isCancelled) {
        capturedHeaders = Map.of(request.headers);
        // Return a valid SignUp JSON response.
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(
            json.encode({
              'UserConfirmed': false,
              'UserSub': 'test-user-sub',
            }),
          ),
        );
      });

      // Create a real CognitoIdentityProviderClient with the
      // WithCustomHeaders interceptor wired in.
      final client = CognitoIdentityProviderClient(
        region: 'us-east-1',
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        requestInterceptors: [
          const WithHeader(AWSHeaders.cacheControl, 'no-store'),
          WithCustomHeaders(
            () async => {
              'x-aws-waf-token': 'my-waf-token',
              'x-custom-header': 'custom-value',
            },
          ),
        ],
      );

      await client
          .signUp(
            SignUpRequest(
              clientId: 'test-client-id',
              username: 'testuser',
              password: 'TestPassword123!',
            ),
            client: mockHttpClient,
          )
          .result;

      expect(capturedHeaders['x-aws-waf-token'], 'my-waf-token');
      expect(capturedHeaders['x-custom-header'], 'custom-value');
      expect(capturedHeaders[AWSHeaders.cacheControl], 'no-store');
    });

    test('SDK requests succeed without custom headers interceptor', () async {
      late Map<String, String> capturedHeaders;

      final mockHttpClient = MockAWSHttpClient((request, isCancelled) {
        capturedHeaders = Map.of(request.headers);
        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(
            json.encode({
              'UserConfirmed': false,
              'UserSub': 'test-user-sub',
            }),
          ),
        );
      });

      // No WithCustomHeaders interceptor -- only the standard one.
      final client = CognitoIdentityProviderClient(
        region: 'us-east-1',
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        requestInterceptors: const [
          WithHeader(AWSHeaders.cacheControl, 'no-store'),
        ],
      );

      await client
          .signUp(
            SignUpRequest(
              clientId: 'test-client-id',
              username: 'testuser',
              password: 'TestPassword123!',
            ),
            client: mockHttpClient,
          )
          .result;

      expect(capturedHeaders[AWSHeaders.cacheControl], 'no-store');
      expect(capturedHeaders['x-aws-waf-token'], isNull);
      expect(capturedHeaders['x-custom-header'], isNull);
    });
  });
}
