// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.list_stack_set_operations_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/list_stack_set_operations_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_summary.dart'
    as _i5;

/// Returns summary information about operations performed on a stack set.
class ListStackSetOperationsOperation extends _i1.PaginatedHttpOperation<
    _i2.ListStackSetOperationsInput,
    _i2.ListStackSetOperationsInput,
    _i3.ListStackSetOperationsOutput,
    _i3.ListStackSetOperationsOutput,
    String,
    int,
    _i4.BuiltList<_i5.StackSetOperationSummary>> {
  /// Returns summary information about operations performed on a stack set.
  ListStackSetOperationsOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
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
          _i2.ListStackSetOperationsInput,
          _i2.ListStackSetOperationsInput,
          _i3.ListStackSetOperationsOutput,
          _i3.ListStackSetOperationsOutput>> protocols = [
    _i7.AwsQueryProtocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListStackSetOperations',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i7.AwsQueryError(
          shape: 'StackSetNotFoundException',
          code: 'StackSetNotFoundException',
          httpResponseCode: 404,
        )
      ],
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListStackSetOperationsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListStackSetOperationsOutput? output]) => 200;
  @override
  _i3.ListStackSetOperationsOutput buildOutput(
    _i3.ListStackSetOperationsOutput payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ListStackSetOperationsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i11.StackSetNotFoundException,
          statusCode: 404,
          builder: _i11.StackSetNotFoundException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListStackSetOperations';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListStackSetOperationsOutput> run(
    _i2.ListStackSetOperationsInput input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.ListStackSetOperationsOutput output) => output.nextToken;
  @override
  _i4.BuiltList<_i5.StackSetOperationSummary> getItems(
          _i3.ListStackSetOperationsOutput output) =>
      output.summaries ?? _i4.BuiltList();
  @override
  _i2.ListStackSetOperationsInput rebuildInput(
    _i2.ListStackSetOperationsInput input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.maxResults = pageSize;
        }
      });
}
