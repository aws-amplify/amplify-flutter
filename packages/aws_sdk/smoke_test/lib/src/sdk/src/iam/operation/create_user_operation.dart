// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.operation.create_user_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_user_request.dart';
import 'package:smoke_test/src/sdk/src/iam/model/create_user_response.dart';
import 'package:smoke_test/src/sdk/src/iam/model/entity_already_exists_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart';
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart';

/// Creates a new IAM user for your Amazon Web Services account.
///
/// For information about quotas for the number of IAM users you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
class CreateUserOperation extends _i1.HttpOperation<CreateUserRequest,
    CreateUserRequest, CreateUserResponse, CreateUserResponse> {
  /// Creates a new IAM user for your Amazon Web Services account.
  ///
  /// For information about quotas for the number of IAM users you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  CreateUserOperation({
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
      _i1.HttpProtocol<CreateUserRequest, CreateUserRequest, CreateUserResponse,
          CreateUserResponse>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CreateUser',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'ConcurrentModificationException',
          code: 'ConcurrentModification',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'EntityAlreadyExistsException',
          code: 'EntityAlreadyExists',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
          httpResponseCode: 400,
        ),
        _i3.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i3.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
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
  _i1.HttpRequest buildRequest(CreateUserRequest input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateUserResponse? output]) => 200;
  @override
  CreateUserResponse buildOutput(
    CreateUserResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateUserResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ConcurrentModificationException,
            ConcurrentModificationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          ConcurrentModificationException,
          statusCode: 409,
          builder: ConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError<EntityAlreadyExistsException,
            EntityAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'EntityAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          EntityAlreadyExistsException,
          statusCode: 409,
          builder: EntityAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<InvalidInputException, InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          InvalidInputException,
          statusCode: 400,
          builder: InvalidInputException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          statusCode: 409,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<NoSuchEntityException, NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          NoSuchEntityException,
          statusCode: 404,
          builder: NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<ServiceFailureException, ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          ServiceFailureException,
          statusCode: 500,
          builder: ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateUser';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateUserResponse> run(
    CreateUserRequest input, {
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
