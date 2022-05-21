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

/// Test-specific data for verifiying.
///
/// Each test class carries two instances of `SignerTestMethodData`: one where
/// the signature info should be attached to the headers and one where it should
/// be attached via query parameters.
class SignerTestMethodData {
  const SignerTestMethodData({
    required this.method,
    required this.canonicalRequest,
    required this.stringToSign,
    required this.signature,
    required this.signedRequest,
  });

  factory SignerTestMethodData.fromJson(Map<String, Object?> json) {
    return SignerTestMethodData(
      method: SignerTestMethod.values.byName(json['method'] as String),
      canonicalRequest: json['canonicalRequest'] as String,
      stringToSign: json['stringToSign'] as String,
      signature: json['signature'] as String,
      signedRequest:
          AWSHttpRequestX.fromJson((json['signedRequest'] as Map).cast()),
    );
  }

  final SignerTestMethod method;
  final String canonicalRequest;
  final String stringToSign;
  final String signature;
  final AWSBaseHttpRequest signedRequest;

  Future<Map<String, Object?>> toJson() async => {
        'method': method.name,
        'canonicalRequest': canonicalRequest,
        'stringToSign': stringToSign,
        'signature': signature,
        'signedRequest': await signedRequest.toJson(),
      };
}

/// Builder class to make it easy to lazily create a [SignerTest].
class SignerTestBuilder {
  SignerTestBuilder(this.name);

  final String name;

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
        credentialScope = AWSCredentialScope.raw(
          dateTime: context.awsDateTime,
          region: context.region,
          service: context.service,
        ),
        serviceConfiguration = serviceConfiguration ??
            BaseServiceConfiguration(
              normalizePath: context.normalize,
              omitSessionToken: context.omitSessionToken,

              // Although most SigV4 services expect double encoding, the C
              // tests expect single encoding like S3.
              // https://github.com/awslabs/aws-c-auth/issues/162
              doubleEncodePathSegments: false,
            );

  factory SignerTest.fromJson(Map<String, Object?> json) {
    return SignerTest(
      name: json['name'] as String,
      context: Context.fromJson((json['context'] as Map).cast()),
      request: AWSHttpRequestX.fromJson((json['request'] as Map).cast()),
      headerTestData: json['headerTestData'] == null
          ? null
          : SignerTestMethodData.fromJson(
              (json['headerTestData'] as Map).cast(),
            ),
      queryTestData: json['queryTestData'] == null
          ? null
          : SignerTestMethodData.fromJson(
              (json['queryTestData'] as Map).cast(),
            ),
    );
  }

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

  Future<void> _runMethod(SignerTestMethod method, {required bool sync}) async {
    final testMethodData =
        method == SignerTestMethod.header ? headerTestData : queryTestData;
    if (testMethodData == null) {
      return;
    }
    final presignedUrl = method == SignerTestMethod.query;
    final payloadHash = sync
        ? serviceConfiguration.hashPayloadSync(
            request,
            presignedUrl: presignedUrl,
          )
        : await serviceConfiguration.hashPayload(
            request,
            presignedUrl: presignedUrl,
          );
    final contentLength = request.contentLength as int;
    final canonicalRequest = presignedUrl
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
    final stringToSign = signer.stringToSign(
      algorithm: algorithm,
      credentialScope: credentialScope,
      canonicalRequest: canonicalRequest,
    );

    expect(
      canonicalRequest.toString(),
      equals(testMethodData.canonicalRequest),
      reason: 'Canonical requests must match',
    );

    expect(
      stringToSign,
      equals(testMethodData.stringToSign),
      reason: 'STS must match',
    );

    if (presignedUrl) {
      final uri = sync
          ? signer.presignSync(
              request as AWSHttpRequest,
              credentialScope: credentialScope,
              expiresIn: Duration(seconds: context.expirationInSeconds),
              serviceConfiguration: serviceConfiguration,
            )
          : await signer.presign(
              request as AWSHttpRequest,
              credentialScope: credentialScope,
              expiresIn: Duration(seconds: context.expirationInSeconds),
              serviceConfiguration: serviceConfiguration,
            );

      expect(
        uri.queryParameters[AWSHeaders.signature],
        equals(testMethodData.signature),
        reason: 'Signatures must be identical',
      );
    } else {
      final signedRequest = sync
          ? signer.signSync(
              request,
              credentialScope: credentialScope,
              serviceConfiguration: serviceConfiguration,
            )
          : await signer.sign(
              request,
              credentialScope: credentialScope,
              serviceConfiguration: serviceConfiguration,
            );

      expect(
        signedRequest.signature,
        equals(testMethodData.signature),
        reason: 'Signatures must be identical',
      );

      for (final expectedHeader
          in testMethodData.signedRequest.headers.entries) {
        expect(
          signedRequest.headers,
          containsPair(expectedHeader.key, expectedHeader.value),
          reason: 'Headers must be case-insensitive equal',
        );
      }

      expect(
        signedRequest.path,
        equals(testMethodData.signedRequest.path),
        reason: 'Paths must be identical',
      );

      expect(
        const MapEquality<String, String>().equals(
          signedRequest.queryParameters,
          testMethodData.signedRequest.queryParameters,
        ),
        isTrue,
        reason: 'Query parameters must be case-sensitive equal',
      );

      final body = await ByteStream(signedRequest.body).toBytes();
      final expectedRequest = testMethodData.signedRequest;
      final Stream<List<int>> expectedBody;
      if (expectedRequest is AWSStreamedHttpRequest) {
        expectedBody = expectedRequest.split();
      } else {
        expectedBody = expectedRequest.body;
      }
      final expected = await ByteStream(expectedBody).toBytes();
      expect(
        body,
        orderedEquals(expected),
        reason: 'Bodies must be identical',
      );
    }
  }

  Future<void> run() async {
    await _runMethod(SignerTestMethod.header, sync: true);
    await _runMethod(SignerTestMethod.query, sync: true);
    await _runMethod(SignerTestMethod.header, sync: false);
    await _runMethod(SignerTestMethod.query, sync: false);
  }

  Future<Map<String, Object?>> toJson() async => {
        'name': name,
        'context': context.toJson(),
        'request': await request.toJson(),
        'headerTestData': await headerTestData?.toJson(),
        'queryTestData': await queryTestData?.toJson(),
        'serviceConfiguration':
            serviceConfiguration is S3ServiceConfiguration ? 's3' : null,
      };
}

extension AWSHttpRequestX on AWSBaseHttpRequest {
  static AWSBaseHttpRequest fromJson(Map<String, Object?> json) {
    return AWSHttpRequest.raw(
      method: AWSHttpMethodHelper.fromString(json['method'] as String),
      host: json['host'] as String,
      path: json['path'] as String,
      queryParameters: (json['queryParameters'] as Map).cast(),
      headers: (json['headers'] as Map).cast(),
      body: (json['body'] as List).cast(),
    );
  }

  Future<Map<String, Object>> toJson() async => {
        'method': method.value,
        'host': host,
        'path': path,
        'queryParameters': queryParametersAll,
        'headers': headers,
        'body': await body.first.catchError((Object _) => const <int>[]),
      };
}
