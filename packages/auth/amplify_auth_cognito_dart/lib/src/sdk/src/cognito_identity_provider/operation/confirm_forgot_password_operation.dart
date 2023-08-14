// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.operation.confirm_forgot_password_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i25;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/expired_code_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/limit_exceeded_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i18;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_failed_attempts_exception.dart'
    as _i19;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i20;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/unexpected_lambda_exception.dart'
    as _i21;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_lambda_validation_exception.dart'
    as _i22;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i23;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i24;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Allows a user to enter a confirmation code to reset a forgotten password.
///
/// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
class ConfirmForgotPasswordOperation extends _i1.HttpOperation<
    _i2.ConfirmForgotPasswordRequest,
    _i2.ConfirmForgotPasswordRequest,
    _i3.ConfirmForgotPasswordResponse,
    _i3.ConfirmForgotPasswordResponse> {
  /// Allows a user to enter a confirmation code to reset a forgotten password.
  ///
  /// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  ConfirmForgotPasswordOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.ConfirmForgotPasswordRequest,
          _i2.ConfirmForgotPasswordRequest,
          _i3.ConfirmForgotPasswordResponse,
          _i3.ConfirmForgotPasswordResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.ConfirmForgotPassword',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ConfirmForgotPasswordRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ConfirmForgotPasswordResponse? output]) => 200;
  @override
  _i3.ConfirmForgotPasswordResponse buildOutput(
    _i3.ConfirmForgotPasswordResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ConfirmForgotPasswordResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.CodeMismatchException, _i9.CodeMismatchException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'CodeMismatchException',
          ),
          _i1.ErrorKind.client,
          _i9.CodeMismatchException,
          statusCode: 400,
          builder: _i9.CodeMismatchException.fromResponse,
        ),
        _i1.SmithyError<_i10.ExpiredCodeException, _i10.ExpiredCodeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ExpiredCodeException',
          ),
          _i1.ErrorKind.client,
          _i10.ExpiredCodeException,
          statusCode: 400,
          builder: _i10.ExpiredCodeException.fromResponse,
        ),
        _i1.SmithyError<_i11.ForbiddenException, _i11.ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i11.ForbiddenException,
          statusCode: 403,
          builder: _i11.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError<_i12.InternalErrorException,
            _i12.InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i12.InternalErrorException,
          builder: _i12.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<_i13.InvalidLambdaResponseException,
            _i13.InvalidLambdaResponseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidLambdaResponseException',
          ),
          _i1.ErrorKind.client,
          _i13.InvalidLambdaResponseException,
          statusCode: 400,
          builder: _i13.InvalidLambdaResponseException.fromResponse,
        ),
        _i1.SmithyError<_i14.InvalidParameterException,
            _i14.InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i14.InvalidParameterException,
          statusCode: 400,
          builder: _i14.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<_i15.InvalidPasswordException,
            _i15.InvalidPasswordException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidPasswordException',
          ),
          _i1.ErrorKind.client,
          _i15.InvalidPasswordException,
          statusCode: 400,
          builder: _i15.InvalidPasswordException.fromResponse,
        ),
        _i1.SmithyError<_i16.LimitExceededException,
            _i16.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i16.LimitExceededException,
          statusCode: 400,
          builder: _i16.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<_i17.NotAuthorizedException,
            _i17.NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i17.NotAuthorizedException,
          statusCode: 403,
          builder: _i17.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<_i18.ResourceNotFoundException,
            _i18.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i18.ResourceNotFoundException,
          statusCode: 404,
          builder: _i18.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i19.TooManyFailedAttemptsException,
            _i19.TooManyFailedAttemptsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyFailedAttemptsException',
          ),
          _i1.ErrorKind.client,
          _i19.TooManyFailedAttemptsException,
          statusCode: 400,
          builder: _i19.TooManyFailedAttemptsException.fromResponse,
        ),
        _i1.SmithyError<_i20.TooManyRequestsException,
            _i20.TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i20.TooManyRequestsException,
          statusCode: 429,
          builder: _i20.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<_i21.UnexpectedLambdaException,
            _i21.UnexpectedLambdaException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UnexpectedLambdaException',
          ),
          _i1.ErrorKind.client,
          _i21.UnexpectedLambdaException,
          statusCode: 400,
          builder: _i21.UnexpectedLambdaException.fromResponse,
        ),
        _i1.SmithyError<_i22.UserLambdaValidationException,
            _i22.UserLambdaValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserLambdaValidationException',
          ),
          _i1.ErrorKind.client,
          _i22.UserLambdaValidationException,
          statusCode: 400,
          builder: _i22.UserLambdaValidationException.fromResponse,
        ),
        _i1.SmithyError<_i23.UserNotConfirmedException,
            _i23.UserNotConfirmedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotConfirmedException',
          ),
          _i1.ErrorKind.client,
          _i23.UserNotConfirmedException,
          statusCode: 400,
          builder: _i23.UserNotConfirmedException.fromResponse,
        ),
        _i1.SmithyError<_i24.UserNotFoundException, _i24.UserNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i24.UserNotFoundException,
          statusCode: 404,
          builder: _i24.UserNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ConfirmForgotPassword';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ConfirmForgotPasswordResponse> run(
    _i2.ConfirmForgotPasswordRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i25.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
