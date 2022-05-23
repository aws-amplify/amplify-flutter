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

library amplify_auth_cognito.cognito_identity_provider.operation.delete_user_operation;

import 'dart:async' as _i16;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i7;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i5;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/delete_user_request.dart'
    as _i2;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i8;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i15;
import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// Allows a user to delete himself or herself.
class DeleteUserOperation extends _i1.HttpOperation<_i2.DeleteUserRequest,
    _i2.DeleteUserRequest, _i1.Unit, _i1.Unit> {
  /// Allows a user to delete himself or herself.
  DeleteUserOperation(
      {required String region,
      Uri? baseUri,
      _i3.AWSCredentialsProvider credentialsProvider =
          const _i3.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.DeleteUserRequest, _i2.DeleteUserRequest, _i1.Unit,
          _i1.Unit>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader(
              'X-Amz-Target', 'AWSCognitoIdentityProviderService.DeleteUser'),
          _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true),
          const _i4.WithSdkInvocationId(),
          const _i4.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i7.endpointResolver.resolve(_i7.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.DeleteUserRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InternalErrorException'),
            _i1.ErrorKind.server,
            _i8.InternalErrorException,
            builder: _i8.InternalErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidParameterException'),
            _i1.ErrorKind.client,
            _i9.InvalidParameterException,
            statusCode: 400,
            builder: _i9.InvalidParameterException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'NotAuthorizedException'),
            _i1.ErrorKind.client,
            _i10.NotAuthorizedException,
            statusCode: 403,
            builder: _i10.NotAuthorizedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'PasswordResetRequiredException'),
            _i1.ErrorKind.client,
            _i11.PasswordResetRequiredException,
            statusCode: 400,
            builder: _i11.PasswordResetRequiredException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i12.ResourceNotFoundException,
            statusCode: 404,
            builder: _i12.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i13.TooManyRequestsException,
            statusCode: 429,
            builder: _i13.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotConfirmedException'),
            _i1.ErrorKind.client,
            _i14.UserNotConfirmedException,
            statusCode: 400,
            builder: _i14.UserNotConfirmedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotFoundException'),
            _i1.ErrorKind.client,
            _i15.UserNotFoundException,
            statusCode: 404,
            builder: _i15.UserNotFoundException.fromResponse)
      ];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i16.Future<_i1.Unit> run(_i2.DeleteUserRequest input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i16.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
        });
  }
}
