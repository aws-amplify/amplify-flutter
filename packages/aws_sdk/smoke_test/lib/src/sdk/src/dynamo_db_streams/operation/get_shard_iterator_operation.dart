// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.operation.get_shard_iterator_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_shard_iterator_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/internal_server_error.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/resource_not_found_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/trimmed_data_access_exception.dart'
    as _i11;

/// Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent `GetRecords` request to read the stream records from the shard.
///
/// A shard iterator expires 15 minutes after it is returned to the requester.
class GetShardIteratorOperation extends _i1.HttpOperation<
    _i2.GetShardIteratorInput,
    _i2.GetShardIteratorInput,
    _i3.GetShardIteratorOutput,
    _i3.GetShardIteratorOutput> {
  /// Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent `GetRecords` request to read the stream records from the shard.
  ///
  /// A shard iterator expires 15 minutes after it is returned to the requester.
  GetShardIteratorOperation({
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
      _i1.HttpProtocol<_i2.GetShardIteratorInput, _i2.GetShardIteratorInput,
          _i3.GetShardIteratorOutput, _i3.GetShardIteratorOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDBStreams_20120810.GetShardIterator',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.dynamoDbStreams,
              credentialsProvider: _credentialsProvider,
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
  _i1.HttpRequest buildRequest(_i2.GetShardIteratorInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetShardIteratorOutput? output]) => 200;
  @override
  _i3.GetShardIteratorOutput buildOutput(
    _i3.GetShardIteratorOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetShardIteratorOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i9.InternalServerError,
          builder: _i9.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.ResourceNotFoundException,
          builder: _i10.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'TrimmedDataAccessException',
          ),
          _i1.ErrorKind.client,
          _i11.TrimmedDataAccessException,
          builder: _i11.TrimmedDataAccessException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetShardIterator';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetShardIteratorOutput> run(
    _i2.GetShardIteratorInput input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
