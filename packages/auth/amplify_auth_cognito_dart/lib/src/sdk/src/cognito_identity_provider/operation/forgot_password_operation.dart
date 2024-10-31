// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.operation.forgot_password_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_delivery_failure_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forgot_password_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forgot_password_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_email_role_access_policy_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_access_policy_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_sms_role_trust_relationship_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/limit_exceeded_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the `Username` parameter, you can use the username or user alias. The method used to send the confirmation code is sent according to the specified AccountRecoverySetting. For more information, see [Recovering User Accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html) in the _Amazon Cognito Developer Guide_. To use the confirmation code for resetting the password, call [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).
///
/// If neither a verified phone number nor a verified email exists, this API returns `InvalidParameterException`. If your app client has a client secret and you don't provide a `SECRET_HASH` parameter, this API returns `NotAuthorizedException`.
///
/// To use this API operation, your user pool must have self-service account recovery configured. Use [AdminSetUserPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html) if you manage passwords as an administrator.
///
/// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
///
/// This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers require you to register an origination phone number before you can send SMS messages to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must receive SMS messages might not be able to sign up, activate their accounts, or sign in.
///
/// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon Simple Notification Service might place your account in the SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you can send messages only to verified phone numbers. After you test your app while in the sandbox environment, you can move out of the sandbox and into production. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html) in the _Amazon Cognito Developer Guide_.
class ForgotPasswordOperation extends _i1.HttpOperation<ForgotPasswordRequest,
    ForgotPasswordRequest, ForgotPasswordResponse, ForgotPasswordResponse> {
  /// Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the `Username` parameter, you can use the username or user alias. The method used to send the confirmation code is sent according to the specified AccountRecoverySetting. For more information, see [Recovering User Accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html) in the _Amazon Cognito Developer Guide_. To use the confirmation code for resetting the password, call [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).
  ///
  /// If neither a verified phone number nor a verified email exists, this API returns `InvalidParameterException`. If your app client has a client secret and you don't provide a `SECRET_HASH` parameter, this API returns `NotAuthorizedException`.
  ///
  /// To use this API operation, your user pool must have self-service account recovery configured. Use [AdminSetUserPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserPassword.html) if you manage passwords as an administrator.
  ///
  /// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers require you to register an origination phone number before you can send SMS messages to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must receive SMS messages might not be able to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon Simple Notification Service might place your account in the SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you can send messages only to verified phone numbers. After you test your app while in the sandbox environment, you can move out of the sandbox and into production. For more information, see [SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html) in the _Amazon Cognito Developer Guide_.
  ForgotPasswordOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<ForgotPasswordRequest, ForgotPasswordRequest,
          ForgotPasswordResponse, ForgotPasswordResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.ForgotPassword',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(ForgotPasswordRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([ForgotPasswordResponse? output]) => 200;

  @override
  ForgotPasswordResponse buildOutput(
    ForgotPasswordResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ForgotPasswordResponse.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<CodeDeliveryFailureException,
            CodeDeliveryFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'CodeDeliveryFailureException',
          ),
          _i1.ErrorKind.client,
          CodeDeliveryFailureException,
          statusCode: 400,
          builder: CodeDeliveryFailureException.fromResponse,
        ),
        _i1.SmithyError<ForbiddenException, ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          ForbiddenException,
          statusCode: 403,
          builder: ForbiddenException.fromResponse,
        ),
        _i1.SmithyError<InternalErrorException, InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          InternalErrorException,
          builder: InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<InvalidEmailRoleAccessPolicyException,
            InvalidEmailRoleAccessPolicyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidEmailRoleAccessPolicyException',
          ),
          _i1.ErrorKind.client,
          InvalidEmailRoleAccessPolicyException,
          statusCode: 400,
          builder: InvalidEmailRoleAccessPolicyException.fromResponse,
        ),
        _i1.SmithyError<InvalidLambdaResponseException,
            InvalidLambdaResponseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidLambdaResponseException',
          ),
          _i1.ErrorKind.client,
          InvalidLambdaResponseException,
          statusCode: 400,
          builder: InvalidLambdaResponseException.fromResponse,
        ),
        _i1.SmithyError<InvalidParameterException, InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          InvalidParameterException,
          statusCode: 400,
          builder: InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<InvalidSmsRoleAccessPolicyException,
            InvalidSmsRoleAccessPolicyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidSmsRoleAccessPolicyException',
          ),
          _i1.ErrorKind.client,
          InvalidSmsRoleAccessPolicyException,
          statusCode: 400,
          builder: InvalidSmsRoleAccessPolicyException.fromResponse,
        ),
        _i1.SmithyError<InvalidSmsRoleTrustRelationshipException,
            InvalidSmsRoleTrustRelationshipException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidSmsRoleTrustRelationshipException',
          ),
          _i1.ErrorKind.client,
          InvalidSmsRoleTrustRelationshipException,
          statusCode: 400,
          builder: InvalidSmsRoleTrustRelationshipException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          statusCode: 400,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<NotAuthorizedException, NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          NotAuthorizedException,
          statusCode: 403,
          builder: NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          statusCode: 404,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<TooManyRequestsException, TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          TooManyRequestsException,
          statusCode: 429,
          builder: TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<UnexpectedLambdaException, UnexpectedLambdaException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UnexpectedLambdaException',
          ),
          _i1.ErrorKind.client,
          UnexpectedLambdaException,
          statusCode: 400,
          builder: UnexpectedLambdaException.fromResponse,
        ),
        _i1.SmithyError<UserLambdaValidationException,
            UserLambdaValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserLambdaValidationException',
          ),
          _i1.ErrorKind.client,
          UserLambdaValidationException,
          statusCode: 400,
          builder: UserLambdaValidationException.fromResponse,
        ),
        _i1.SmithyError<UserNotFoundException, UserNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotFoundException',
          ),
          _i1.ErrorKind.client,
          UserNotFoundException,
          statusCode: 404,
          builder: UserNotFoundException.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'ForgotPassword';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<ForgotPasswordResponse> run(
    ForgotPasswordRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
