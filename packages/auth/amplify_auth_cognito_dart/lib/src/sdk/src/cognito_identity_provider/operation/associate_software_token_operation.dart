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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.operation.associate_software_token_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/associate_software_token_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/associate_software_token_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/concurrent_modification_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/software_token_mfa_not_found_exception.dart'
    as _i15;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Begins setup of time-based one-time password (TOTP) multi-factor authentication (MFA) for a user, with a unique private key that Amazon Cognito generates and returns in the API response. You can authorize an `AssociateSoftwareToken` request with either the user's access token, or a session string from a challenge response that you received from Amazon Cognito.
///
/// Amazon Cognito disassociates an existing software token when you verify the new token in a [VerifySoftwareToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html) API request. If you don't verify the software token and your user pool doesn't require MFA, the user can then authenticate with user name and password credentials alone. If your user pool requires TOTP MFA, Amazon Cognito generates an `MFA_SETUP` or `SOFTWARE\_TOKEN\_SETUP` challenge each time your user signs. Complete setup with `AssociateSoftwareToken` and `VerifySoftwareToken`.
///
/// After you set up software token MFA for your user, Amazon Cognito generates a `SOFTWARE\_TOKEN\_MFA` challenge when they authenticate. Respond to this challenge with your user's TOTP.
class AssociateSoftwareTokenOperation extends _i1.HttpOperation<
    _i2.AssociateSoftwareTokenRequest,
    _i2.AssociateSoftwareTokenRequest,
    _i3.AssociateSoftwareTokenResponse,
    _i3.AssociateSoftwareTokenResponse> {
  /// Begins setup of time-based one-time password (TOTP) multi-factor authentication (MFA) for a user, with a unique private key that Amazon Cognito generates and returns in the API response. You can authorize an `AssociateSoftwareToken` request with either the user's access token, or a session string from a challenge response that you received from Amazon Cognito.
  ///
  /// Amazon Cognito disassociates an existing software token when you verify the new token in a [VerifySoftwareToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html) API request. If you don't verify the software token and your user pool doesn't require MFA, the user can then authenticate with user name and password credentials alone. If your user pool requires TOTP MFA, Amazon Cognito generates an `MFA_SETUP` or `SOFTWARE\_TOKEN\_SETUP` challenge each time your user signs. Complete setup with `AssociateSoftwareToken` and `VerifySoftwareToken`.
  ///
  /// After you set up software token MFA for your user, Amazon Cognito generates a `SOFTWARE\_TOKEN\_MFA` challenge when they authenticate. Respond to this challenge with your user's TOTP.
  AssociateSoftwareTokenOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.AssociateSoftwareTokenRequest,
          _i2.AssociateSoftwareTokenRequest,
          _i3.AssociateSoftwareTokenResponse,
          _i3.AssociateSoftwareTokenResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'AWSCognitoIdentityProviderService.AssociateSoftwareToken',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.cognitoIdentityProvider,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.0'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.AssociateSoftwareTokenRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AssociateSoftwareTokenResponse? output]) => 200;
  @override
  _i3.AssociateSoftwareTokenResponse buildOutput(
    _i3.AssociateSoftwareTokenResponse payload,
    _i7.AWSStreamedHttpResponse response,
  ) =>
      _i3.AssociateSoftwareTokenResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          _i9.ConcurrentModificationException,
          statusCode: 400,
          builder: _i9.ConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i10.ForbiddenException,
          statusCode: 403,
          builder: _i10.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i11.InternalErrorException,
          builder: _i11.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidParameterException,
          statusCode: 400,
          builder: _i12.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i13.NotAuthorizedException,
          statusCode: 403,
          builder: _i13.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i14.ResourceNotFoundException,
          statusCode: 404,
          builder: _i14.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'SoftwareTokenMFANotFoundException',
          ),
          _i1.ErrorKind.client,
          _i15.SoftwareTokenMfaNotFoundException,
          statusCode: 400,
          builder: _i15.SoftwareTokenMfaNotFoundException.fromResponse,
        ),
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i16.Future<_i3.AssociateSoftwareTokenResponse> run(
    _i2.AssociateSoftwareTokenRequest input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
