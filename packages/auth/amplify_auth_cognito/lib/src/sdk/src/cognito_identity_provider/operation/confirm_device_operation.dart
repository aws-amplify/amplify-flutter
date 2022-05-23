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

library amplify_auth_cognito.cognito_identity_provider.operation.confirm_device_operation;

import 'dart:async' as _i21;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart'
    as _i2;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_device_response.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_user_pool_configuration_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i19;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i20;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/username_exists_exception.dart'
    as _i18;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Confirms tracking of the device. This API call is the call that begins device tracking.
class ConfirmDeviceOperation extends _i1.HttpOperation<
    _i2.ConfirmDeviceRequest,
    _i2.ConfirmDeviceRequest,
    _i3.ConfirmDeviceResponse,
    _i3.ConfirmDeviceResponse> {
  /// Confirms tracking of the device. This API call is the call that begins device tracking.
  ConfirmDeviceOperation(
      {required String region,
      Uri? baseUri,
      _i4.AWSCredentialsProvider credentialsProvider =
          const _i4.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ConfirmDeviceRequest, _i2.ConfirmDeviceRequest,
          _i3.ConfirmDeviceResponse, _i3.ConfirmDeviceResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target',
              'AWSCognitoIdentityProviderService.ConfirmDevice'),
          _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider),
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
  _i1.HttpRequest buildRequest(_i2.ConfirmDeviceRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ConfirmDeviceResponse? output]) => 200;
  @override
  _i3.ConfirmDeviceResponse buildOutput(_i3.ConfirmDeviceResponse payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.ConfirmDeviceResponse.fromResponse(payload, response);
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
                shape: 'InvalidLambdaResponseException'),
            _i1.ErrorKind.client,
            _i10.InvalidLambdaResponseException,
            statusCode: 400,
            builder: _i10.InvalidLambdaResponseException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidParameterException'),
            _i1.ErrorKind.client,
            _i11.InvalidParameterException,
            statusCode: 400,
            builder: _i11.InvalidParameterException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidPasswordException'),
            _i1.ErrorKind.client,
            _i12.InvalidPasswordException,
            statusCode: 400,
            builder: _i12.InvalidPasswordException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidUserPoolConfigurationException'),
            _i1.ErrorKind.client,
            _i13.InvalidUserPoolConfigurationException,
            statusCode: 400,
            builder: _i13.InvalidUserPoolConfigurationException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'NotAuthorizedException'),
            _i1.ErrorKind.client,
            _i14.NotAuthorizedException,
            statusCode: 403,
            builder: _i14.NotAuthorizedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'PasswordResetRequiredException'),
            _i1.ErrorKind.client,
            _i15.PasswordResetRequiredException,
            statusCode: 400,
            builder: _i15.PasswordResetRequiredException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i16.ResourceNotFoundException,
            statusCode: 404,
            builder: _i16.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i17.TooManyRequestsException,
            statusCode: 429,
            builder: _i17.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UsernameExistsException'),
            _i1.ErrorKind.client,
            _i18.UsernameExistsException,
            statusCode: 400,
            builder: _i18.UsernameExistsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotConfirmedException'),
            _i1.ErrorKind.client,
            _i19.UserNotConfirmedException,
            statusCode: 400,
            builder: _i19.UserNotConfirmedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotFoundException'),
            _i1.ErrorKind.client,
            _i20.UserNotFoundException,
            statusCode: 404,
            builder: _i20.UserNotFoundException.fromResponse)
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i21.Future<_i3.ConfirmDeviceResponse> run(_i2.ConfirmDeviceRequest input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i21.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
