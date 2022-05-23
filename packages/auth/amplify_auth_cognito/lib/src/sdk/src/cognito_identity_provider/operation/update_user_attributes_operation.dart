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

library amplify_auth_cognito.cognito_identity_provider.operation.update_user_attributes_operation;

import 'dart:async' as _i27;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/alias_exists_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_delivery_failure_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/expired_code_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_email_role_access_policy_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_access_policy_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_trust_relationship_exception.dart'
    as _i18;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i19;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i20;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i21;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i22;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart'
    as _i23;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_user_attributes_request.dart'
    as _i2;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_user_attributes_response.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart'
    as _i24;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i25;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i26;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Allows a user to update a specific attribute (one at a time).
///
/// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
///
/// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
class UpdateUserAttributesOperation extends _i1.HttpOperation<
    _i2.UpdateUserAttributesRequest,
    _i2.UpdateUserAttributesRequest,
    _i3.UpdateUserAttributesResponse,
    _i3.UpdateUserAttributesResponse> {
  /// Allows a user to update a specific attribute (one at a time).
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  UpdateUserAttributesOperation(
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
          _i2.UpdateUserAttributesRequest,
          _i2.UpdateUserAttributesRequest,
          _i3.UpdateUserAttributesResponse,
          _i3.UpdateUserAttributesResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target',
              'AWSCognitoIdentityProviderService.UpdateUserAttributes'),
          _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
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
  _i1.HttpRequest buildRequest(_i2.UpdateUserAttributesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UpdateUserAttributesResponse? output]) => 200;
  @override
  _i3.UpdateUserAttributesResponse buildOutput(
          _i3.UpdateUserAttributesResponse payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i3.UpdateUserAttributesResponse.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'AliasExistsException'),
            _i1.ErrorKind.client,
            _i9.AliasExistsException,
            statusCode: 400,
            builder: _i9.AliasExistsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'CodeDeliveryFailureException'),
            _i1.ErrorKind.client,
            _i10.CodeDeliveryFailureException,
            statusCode: 400,
            builder: _i10.CodeDeliveryFailureException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'CodeMismatchException'),
            _i1.ErrorKind.client,
            _i11.CodeMismatchException,
            statusCode: 400,
            builder: _i11.CodeMismatchException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'ExpiredCodeException'),
            _i1.ErrorKind.client,
            _i12.ExpiredCodeException,
            statusCode: 400,
            builder: _i12.ExpiredCodeException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InternalErrorException'),
            _i1.ErrorKind.server,
            _i13.InternalErrorException,
            builder: _i13.InternalErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidEmailRoleAccessPolicyException'),
            _i1.ErrorKind.client,
            _i14.InvalidEmailRoleAccessPolicyException,
            statusCode: 400,
            builder: _i14.InvalidEmailRoleAccessPolicyException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidLambdaResponseException'),
            _i1.ErrorKind.client,
            _i15.InvalidLambdaResponseException,
            statusCode: 400,
            builder: _i15.InvalidLambdaResponseException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidParameterException'),
            _i1.ErrorKind.client,
            _i16.InvalidParameterException,
            statusCode: 400,
            builder: _i16.InvalidParameterException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidSmsRoleAccessPolicyException'),
            _i1.ErrorKind.client,
            _i17.InvalidSmsRoleAccessPolicyException,
            statusCode: 400,
            builder: _i17.InvalidSmsRoleAccessPolicyException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'InvalidSmsRoleTrustRelationshipException'),
            _i1.ErrorKind.client,
            _i18.InvalidSmsRoleTrustRelationshipException,
            statusCode: 400,
            builder:
                _i18.InvalidSmsRoleTrustRelationshipException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'NotAuthorizedException'),
            _i1.ErrorKind.client,
            _i19.NotAuthorizedException,
            statusCode: 403,
            builder: _i19.NotAuthorizedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'PasswordResetRequiredException'),
            _i1.ErrorKind.client,
            _i20.PasswordResetRequiredException,
            statusCode: 400,
            builder: _i20.PasswordResetRequiredException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i21.ResourceNotFoundException,
            statusCode: 404,
            builder: _i21.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i22.TooManyRequestsException,
            statusCode: 429,
            builder: _i22.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UnexpectedLambdaException'),
            _i1.ErrorKind.client,
            _i23.UnexpectedLambdaException,
            statusCode: 400,
            builder: _i23.UnexpectedLambdaException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserLambdaValidationException'),
            _i1.ErrorKind.client,
            _i24.UserLambdaValidationException,
            statusCode: 400,
            builder: _i24.UserLambdaValidationException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotConfirmedException'),
            _i1.ErrorKind.client,
            _i25.UserNotConfirmedException,
            statusCode: 400,
            builder: _i25.UserNotConfirmedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.cognitoidentityprovider',
                shape: 'UserNotFoundException'),
            _i1.ErrorKind.client,
            _i26.UserNotFoundException,
            statusCode: 404,
            builder: _i26.UserNotFoundException.fromResponse)
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i27.Future<_i3.UpdateUserAttributesResponse> run(
      _i2.UpdateUserAttributesRequest input,
      {_i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i27.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
        });
  }
}
