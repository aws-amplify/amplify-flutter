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

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'context.dart';

enum SignerTestMethod { query, header }

extension on SignerTestMethod {
  String get string => toString().split('.')[1];
}

/// Test-specific data for verifiying.
///
/// Each test class carries two instances of `SignerTestMethodData`: one where
/// the signature info should be attached to the headers and one where it should
/// be attached via query parameters.
class SignerTestMethodData {
  final SignerTestMethod method;
  final String canonicalRequest;
  final String stringToSign;
  final String signature;
  final AWSBaseHttpRequest signedRequest;

  const SignerTestMethodData({
    required this.method,
    required this.canonicalRequest,
    required this.stringToSign,
    required this.signature,
    required this.signedRequest,
  });
}

/// Builder class to make it easy to lazily create a [SignerTest].
class SignerTestBuilder {
  final String name;

  SignerTestBuilder(this.name);

  late final Context context;
  late final AWSBaseHttpRequest request;
  late final String queryCanonicalRequest;
  late final String queryStringToSign;
  late final String querySignature;
  late final AWSBaseHttpRequest querySignedRequest;
  late final String headerCanonicalRequest;
  late final String headerStringToSign;
  late final String headerSignature;
  late final AWSBaseHttpRequest headerSignedRequest;

  SignerTest build() {
    return SignerTest(
      name: name,
      context: context,
      request: request,
      headerTestData: SignerTestMethodData(
        method: SignerTestMethod.header,
        canonicalRequest: headerCanonicalRequest,
        stringToSign: headerStringToSign,
        signature: headerSignature,
        signedRequest: headerSignedRequest,
      ),
      queryTestData: SignerTestMethodData(
        method: SignerTestMethod.query,
        canonicalRequest: queryCanonicalRequest,
        stringToSign: queryStringToSign,
        signature: querySignature,
        signedRequest: querySignedRequest,
      ),
    );
  }
}

/// A single signer test.
///
/// Each folder in the test suite is built into an instance of this class, where
/// [name] is the name of the folder used.
class SignerTest {
  /// Only V4 (e.g. HMAC/SHA-2) is supported for signer tests.
  static const algorithm = AWSAlgorithm.hmacSha256;

  final String name;
  final Context context;
  final AWSBaseHttpRequest request;
  final SignerTestMethodData? headerTestData;
  final SignerTestMethodData? queryTestData;
  final ServiceConfiguration serviceConfiguration;

  final AWSSigV4Signer signer;
  final AWSCredentialScope credentialScope;

  SignerTest({
    required this.name,
    required this.context,
    required this.request,
    this.headerTestData,
    this.queryTestData,
    ServiceConfiguration? serviceConfiguration,
  })  : signer = AWSSigV4Signer(
          credentialsProvider: AWSCredentialsProvider(context.credentials),
          algorithm: algorithm,
        ),
        credentialScope = AWSCredentialScope(
          dateTime: context.awsDateTime,
          region: context.region,
          service: context.service,
        ),
        serviceConfiguration = serviceConfiguration ??
            BaseServiceConfiguration(
              normalizePath: context.normalize,
              omitSessionToken: context.omitSessionToken,
            );

  void _runMethod(SignerTestMethod method) {
    final testMethodData =
        method == SignerTestMethod.header ? headerTestData : queryTestData;
    if (testMethodData == null) {
      return;
    }
    final presignedUrl = method == SignerTestMethod.query;
    final payloadHash = serviceConfiguration.hashPayloadSync(
      request,
      presignedUrl: presignedUrl,
    );
    final contentLength = request.contentLength as int;
    final CanonicalRequest canonicalRequest = presignedUrl
        ? CanonicalRequest.presignedUrl(
            request: request,
            credentials: context.credentials,
            credentialScope: credentialScope,
            algorithm: algorithm,
            expiresIn: Duration(seconds: context.expirationInSeconds),
            contentLength: contentLength,
            payloadHash: payloadHash,
            serviceConfiguration: serviceConfiguration,
          )
        : CanonicalRequest(
            request: request,
            credentials: context.credentials,
            credentialScope: credentialScope,
            contentLength: contentLength,
            payloadHash: payloadHash,
            serviceConfiguration: serviceConfiguration,
          );
    final String stringToSign = signer.stringToSign(
      algorithm: algorithm,
      credentialScope: credentialScope,
      canonicalRequest: canonicalRequest,
    );

    group(method.string, () {
      test('canonical request', () {
        expect(
          canonicalRequest.toString(),
          equals(testMethodData.canonicalRequest),
          reason: 'Canonical requests must match',
        );
      });
      test('sts', () {
        expect(
          stringToSign,
          equals(testMethodData.stringToSign),
          reason: 'STS must match',
        );
      });
      if (presignedUrl) {
        group('presigned url', () {
          final Uri uri = signer.presignSync(
            request as AWSHttpRequest,
            credentialScope: credentialScope,
            expiresIn: Duration(seconds: context.expirationInSeconds),
            serviceConfiguration: serviceConfiguration,
          );

          test('signature', () {
            expect(
              uri.queryParameters[AWSHeaders.signature],
              equals(testMethodData.signature),
              reason: 'Signatures must be identical',
            );
          });
        });
      } else {
        group('signed request', () {
          final AWSSignedRequest signedRequest = signer.signSync(
            request,
            credentialScope: credentialScope,
            serviceConfiguration: serviceConfiguration,
          );

          test('signature', () {
            expect(
              signedRequest.signature,
              equals(testMethodData.signature),
              reason: 'Signatures must be identical',
            );
          });
          test('headers', () {
            expect(
              const MapEquality<String, String>(keys: CaseInsensitiveEquality())
                  .equals(
                signedRequest.headers,
                testMethodData.signedRequest.headers,
              ),
              isTrue,
              reason: 'Headers must be case-insensitive equal',
            );
          });
          test('path', () {
            expect(
              signedRequest.path,
              equals(testMethodData.signedRequest.path),
              reason: 'Paths must be identical',
            );
          });
          test('query parameters', () {
            expect(
              const MapEquality<String, String>().equals(
                signedRequest.queryParameters,
                testMethodData.signedRequest.queryParameters,
              ),
              isTrue,
              reason: 'Query parameters must be case-sensitive equal',
            );
          });
          test('body', () async {
            final body = await ByteStream(signedRequest.body).toBytes();
            final expected =
                await ByteStream(testMethodData.signedRequest.body).toBytes();
            expect(
              body,
              orderedEquals(expected),
              reason: 'Bodies must be identical',
            );
          });
        }, skip: presignedUrl);
      }
    });
  }

  void run() {
    group(name, () {
      _runMethod(SignerTestMethod.header);
      _runMethod(SignerTestMethod.query);
    });
  }
}
