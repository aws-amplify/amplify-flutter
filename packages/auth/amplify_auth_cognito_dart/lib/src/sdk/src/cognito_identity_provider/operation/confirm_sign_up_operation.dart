// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.operation.confirm_sign_up_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i24;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/alias_exists_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/expired_code_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
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
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i23;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Confirms registration of a new user.
class ConfirmSignUpOperation extends _i1.HttpOperation<
    _i2.ConfirmSignUpRequest,
    _i2.ConfirmSignUpRequest,
    _i3.ConfirmSignUpResponse,
    _i3.ConfirmSignUpResponse> {
  /// Confirms registration of a new user.
  ConfirmSignUpOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ConfirmSignUpRequest, _i2.ConfirmSignUpRequest,
          _i3.ConfirmSignUpResponse, _i3.ConfirmSignUpResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'AWSCognitoIdentityProviderService.ConfirmSignUp',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.cognitoIdentityProvider,
          credentialsProvider: _credentialsProvider,
          isOptional: true,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
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
  _i1.HttpRequest buildRequest(_i2.ConfirmSignUpRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ConfirmSignUpResponse? output]) => 200;
  @override
  _i3.ConfirmSignUpResponse buildOutput(
    _i3.ConfirmSignUpResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ConfirmSignUpResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'AliasExistsException',
          ),
          _i1.ErrorKind.client,
          _i9.AliasExistsException,
          statusCode: 400,
          builder: _i9.AliasExistsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'CodeMismatchException',
          ),
          _i1.ErrorKind.client,
          _i10.CodeMismatchException,
          statusCode: 400,
          builder: _i10.CodeMismatchException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ExpiredCodeException',
          ),
          _i1.ErrorKind.client,
          _i11.ExpiredCodeException,
          statusCode: 400,
          builder: _i11.ExpiredCodeException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i12.ForbiddenException,
          statusCode: 403,
          builder: _i12.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i13.InternalErrorException,
          builder: _i13.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidLambdaResponseException',
          ),
          _i1.ErrorKind.client,
          _i14.InvalidLambdaResponseException,
          statusCode: 400,
          builder: _i14.InvalidLambdaResponseException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i15.InvalidParameterException,
          statusCode: 400,
          builder: _i15.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i16.LimitExceededException,
          statusCode: 400,
          builder: _i16.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i17.NotAuthorizedException,
          statusCode: 403,
          builder: _i17.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i18.ResourceNotFoundException,
          statusCode: 404,
          builder: _i18.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyFailedAttemptsException',
          ),
          _i1.ErrorKind.client,
          _i19.TooManyFailedAttemptsException,
          statusCode: 400,
          builder: _i19.TooManyFailedAttemptsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i20.TooManyRequestsException,
          statusCode: 429,
          builder: _i20.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UnexpectedLambdaException',
          ),
          _i1.ErrorKind.client,
          _i21.UnexpectedLambdaException,
          statusCode: 400,
          builder: _i21.UnexpectedLambdaException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserLambdaValidationException',
          ),
          _i1.ErrorKind.client,
          _i22.UserLambdaValidationException,
          statusCode: 400,
          builder: _i22.UserLambdaValidationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i23.UserNotFoundException,
          statusCode: 404,
          builder: _i23.UserNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ConfirmSignUp';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ConfirmSignUpResponse> run(
    _i2.ConfirmSignUpRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i24.runZoned(
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
