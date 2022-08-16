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

library amplify_auth_cognito_dart.cognito_identity_provider.operation.change_password_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i19;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/change_password_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/change_password_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/limit_exceeded_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i18;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Changes the password for a specified user in a user pool.
class ChangePasswordOperation extends _i1.HttpOperation<
    _i2.ChangePasswordRequest,
    _i2.ChangePasswordRequest,
    _i3.ChangePasswordResponse,
    _i3.ChangePasswordResponse> {
  /// Changes the password for a specified user in a user pool.
  ChangePasswordOperation(
      {required String region,
      Uri? baseUri,
      _i4.AWSCredentialsProvider credentialsProvider =
          const _i4.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ChangePasswordRequest, _i2.ChangePasswordRequest,
          _i3.ChangePasswordResponse, _i3.ChangePasswordResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        requestInterceptors: [
          const _i1.WithHost(),
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target',
              'AWSCognitoIdentityProviderService.ChangePassword'),
          _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true),
          const _i1.WithUserAgent('aws-sdk-dart/0.1.0'),
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
  _i1.HttpRequest buildRequest(_i2.ChangePasswordRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ChangePasswordResponse? output]) => 200;
  @override
  _i3.ChangePasswordResponse buildOutput(_i3.ChangePasswordResponse payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.ChangePasswordResponse.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InternalErrorException'),
            _i1.ErrorKind.server,
            _i9.InternalErrorException,
            builder: _i9.InternalErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidParameterException'),
            _i1.ErrorKind.client,
            _i10.InvalidParameterException,
            statusCode: 400,
            builder: _i10.InvalidParameterException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidPasswordException'),
            _i1.ErrorKind.client,
            _i11.InvalidPasswordException,
            statusCode: 400,
            builder: _i11.InvalidPasswordException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'LimitExceededException'),
            _i1.ErrorKind.client,
            _i12.LimitExceededException,
            statusCode: 400,
            builder: _i12.LimitExceededException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'NotAuthorizedException'),
            _i1.ErrorKind.client,
            _i13.NotAuthorizedException,
            statusCode: 403,
            builder: _i13.NotAuthorizedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'PasswordResetRequiredException'),
            _i1.ErrorKind.client,
            _i14.PasswordResetRequiredException,
            statusCode: 400,
            builder: _i14.PasswordResetRequiredException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i15.ResourceNotFoundException,
            statusCode: 404,
            builder: _i15.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i16.TooManyRequestsException,
            statusCode: 429,
            builder: _i16.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotConfirmedException'),
            _i1.ErrorKind.client,
            _i17.UserNotConfirmedException,
            statusCode: 400,
            builder: _i17.UserNotConfirmedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotFoundException'),
            _i1.ErrorKind.client,
            _i18.UserNotFoundException,
            statusCode: 404,
            builder: _i18.UserNotFoundException.fromResponse)
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i19.Future<_i3.ChangePasswordResponse> run(_i2.ChangePasswordRequest input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i19.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
