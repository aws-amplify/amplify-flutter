// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.operation.get_records_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/expired_iterator_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/get_records_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/trimmed_data_access_exception.dart';

/// Retrieves the stream records from a given shard.
///
/// Specify a shard iterator using the `ShardIterator` parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, `GetRecords` returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.
///
/// `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.
class GetRecordsOperation extends _i1.HttpOperation<GetRecordsInput,
    GetRecordsInput, GetRecordsOutput, GetRecordsOutput> {
  /// Retrieves the stream records from a given shard.
  ///
  /// Specify a shard iterator using the `ShardIterator` parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, `GetRecords` returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.
  ///
  /// `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.
  GetRecordsOperation({
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
      _i1.HttpProtocol<GetRecordsInput, GetRecordsInput, GetRecordsOutput,
          GetRecordsOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDBStreams_20120810.GetRecords',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.dynamoDbStreams,
              credentialsProvider: _credentialsProvider,
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
  _i1.HttpRequest buildRequest(GetRecordsInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([GetRecordsOutput? output]) => 200;
  @override
  GetRecordsOutput buildOutput(
    GetRecordsOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetRecordsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ExpiredIteratorException, ExpiredIteratorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'ExpiredIteratorException',
          ),
          _i1.ErrorKind.client,
          ExpiredIteratorException,
          builder: ExpiredIteratorException.fromResponse,
        ),
        _i1.SmithyError<InternalServerError, InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          InternalServerError,
          builder: InternalServerError.fromResponse,
        ),
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<TrimmedDataAccessException, TrimmedDataAccessException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodbstreams',
            shape: 'TrimmedDataAccessException',
          ),
          _i1.ErrorKind.client,
          TrimmedDataAccessException,
          builder: TrimmedDataAccessException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetRecords';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetRecordsOutput> run(
    GetRecordsInput input, {
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
