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

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity.operation.get_credentials_for_identity_operation;

import 'dart:async' as _i17;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/external_service_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/get_credentials_for_identity_input.dart'
    as _i2;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/get_credentials_for_identity_response.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/internal_error_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/invalid_identity_pool_configuration_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/invalid_parameter_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/not_authorized_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/resource_conflict_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/resource_not_found_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity/model/too_many_requests_exception.dart'
    as _i16;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.
///
/// This is a public API. You do not need any credentials to call this API.
class GetCredentialsForIdentityOperation extends _i1.HttpOperation<
    _i2.GetCredentialsForIdentityInput,
    _i2.GetCredentialsForIdentityInput,
    _i3.GetCredentialsForIdentityResponse,
    _i3.GetCredentialsForIdentityResponse> {
  /// Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.
  ///
  /// This is a public API. You do not need any credentials to call this API.
  GetCredentialsForIdentityOperation(
      {required String region,
      Uri? baseUri,
      _i4.AWSCredentialsProvider credentialsProvider =
          const _i4.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GetCredentialsForIdentityInput,
          _i2.GetCredentialsForIdentityInput,
          _i3.GetCredentialsForIdentityResponse,
          _i3.GetCredentialsForIdentityResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target',
              'AWSCognitoIdentityService.GetCredentialsForIdentity'),
          _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentity,
              credentialsProvider: _credentialsProvider,
              isOptional: true),
          const _i5.WithSdkInvocationId(),
          const _i5.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i5.AWSEndpoint _awsEndpoint =
      _i8.endpointResolver.resolve(_i8.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetCredentialsForIdentityInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetCredentialsForIdentityResponse? output]) => 200;
  @override
  _i3.GetCredentialsForIdentityResponse buildOutput(
          _i3.GetCredentialsForIdentityResponse payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.GetCredentialsForIdentityResponse.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'ExternalServiceException'),
            _i1.ErrorKind.client,
            _i9.ExternalServiceException,
            statusCode: 400,
            builder: _i9.ExternalServiceException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'InternalErrorException'),
            _i1.ErrorKind.server,
            _i10.InternalErrorException,
            builder: _i10.InternalErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'InvalidIdentityPoolConfigurationException'),
            _i1.ErrorKind.client,
            _i11.InvalidIdentityPoolConfigurationException,
            statusCode: 400,
            builder:
                _i11.InvalidIdentityPoolConfigurationException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'InvalidParameterException'),
            _i1.ErrorKind.client,
            _i12.InvalidParameterException,
            statusCode: 400,
            builder: _i12.InvalidParameterException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'NotAuthorizedException'),
            _i1.ErrorKind.client,
            _i13.NotAuthorizedException,
            statusCode: 403,
            builder: _i13.NotAuthorizedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'ResourceConflictException'),
            _i1.ErrorKind.client,
            _i14.ResourceConflictException,
            statusCode: 409,
            builder: _i14.ResourceConflictException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i15.ResourceNotFoundException,
            statusCode: 404,
            builder: _i15.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentity',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i16.TooManyRequestsException,
            statusCode: 429,
            builder: _i16.TooManyRequestsException.fromResponse)
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i17.Future<_i3.GetCredentialsForIdentityResponse> run(
      _i2.GetCredentialsForIdentityInput input,
      {_i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i17.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
