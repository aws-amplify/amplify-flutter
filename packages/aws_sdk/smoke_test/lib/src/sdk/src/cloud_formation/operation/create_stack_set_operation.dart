// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.create_stack_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_stack_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/created_but_modified_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/name_already_exists_exception.dart';

/// Creates a stack set.
class CreateStackSetOperation extends _i1.HttpOperation<CreateStackSetInput,
    CreateStackSetInput, CreateStackSetOutput, CreateStackSetOutput> {
  /// Creates a stack set.
  CreateStackSetOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<CreateStackSetInput, CreateStackSetInput,
          CreateStackSetOutput, CreateStackSetOutput>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CreateStackSet',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'CreatedButModifiedException',
          code: 'CreatedButModifiedException',
          httpResponseCode: 409,
        ),
        _i3.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceededException',
          httpResponseCode: 400,
        ),
        _i3.AwsQueryError(
          shape: 'NameAlreadyExistsException',
          code: 'NameAlreadyExistsException',
          httpResponseCode: 409,
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
  _i1.HttpRequest buildRequest(CreateStackSetInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateStackSetOutput? output]) => 200;
  @override
  CreateStackSetOutput buildOutput(
    CreateStackSetOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateStackSetOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<CreatedButModifiedException,
            CreatedButModifiedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'CreatedButModifiedException',
          ),
          _i1.ErrorKind.client,
          CreatedButModifiedException,
          statusCode: 409,
          builder: CreatedButModifiedException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          statusCode: 400,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<NameAlreadyExistsException, NameAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'NameAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          NameAlreadyExistsException,
          statusCode: 409,
          builder: NameAlreadyExistsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateStackSet';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateStackSetOutput> run(
    CreateStackSetInput input, {
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
