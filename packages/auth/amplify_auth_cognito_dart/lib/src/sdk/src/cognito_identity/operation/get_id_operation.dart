// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity.operation.get_id_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/common/endpoint_resolver.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/common/serializers.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/external_service_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_input.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/get_id_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/internal_error_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/invalid_parameter_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/limit_exceeded_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/not_authorized_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_conflict_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/resource_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity/model/too_many_requests_exception.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.
///
/// This is a public API. You do not need any credentials to call this API.
class GetIdOperation extends _i1
    .HttpOperation<GetIdInput, GetIdInput, GetIdResponse, GetIdResponse> {
  /// Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.
  ///
  /// This is a public API. You do not need any credentials to call this API.
  GetIdOperation({
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
          _i1
          .HttpProtocol<GetIdInput, GetIdInput, GetIdResponse, GetIdResponse>>
      protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityService.GetId',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cognitoIdentity,
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
  _i1.HttpRequest buildRequest(GetIdInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([GetIdResponse? output]) => 200;

  @override
  GetIdResponse buildOutput(
    GetIdResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetIdResponse.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ExternalServiceException, ExternalServiceException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'ExternalServiceException',
          ),
          _i1.ErrorKind.client,
          ExternalServiceException,
          statusCode: 400,
          builder: ExternalServiceException.fromResponse,
        ),
        _i1.SmithyError<InternalErrorException, InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          InternalErrorException,
          builder: InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<InvalidParameterException, InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          InvalidParameterException,
          statusCode: 400,
          builder: InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          statusCode: 400,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<NotAuthorizedException, NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          NotAuthorizedException,
          statusCode: 403,
          builder: NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<ResourceConflictException, ResourceConflictException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'ResourceConflictException',
          ),
          _i1.ErrorKind.client,
          ResourceConflictException,
          statusCode: 409,
          builder: ResourceConflictException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          statusCode: 404,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<TooManyRequestsException, TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentity',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          TooManyRequestsException,
          statusCode: 429,
          builder: TooManyRequestsException.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'GetId';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<GetIdResponse> run(
    GetIdInput input, {
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
