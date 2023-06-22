// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.operation.scan_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_input.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/scan_output.dart' as _i3;

/// The `Scan` operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a `FilterExpression` operation.
///
/// If the total number of scanned items exceeds the maximum dataset size limit of 1 MB, the scan stops and results are returned to the user as a `LastEvaluatedKey` value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria.
///
/// A single `Scan` operation reads up to the maximum number of items set (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply any filtering to the results using `FilterExpression`. If `LastEvaluatedKey` is present in the response, you need to paginate the result set. For more information, see [Paginating the Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination) in the _Amazon DynamoDB Developer Guide_.
///
/// `Scan` operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel `Scan` operation by providing the `Segment` and `TotalSegments` parameters. For more information, see [Parallel Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan) in the _Amazon DynamoDB Developer Guide_.
///
/// `Scan` uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the `Scan` begins, you can set the `ConsistentRead` parameter to `true`.
class ScanOperation extends _i1.PaginatedHttpOperation<
    _i2.ScanInput,
    _i2.ScanInput,
    _i3.ScanOutput,
    _i3.ScanOutput,
    _i4.BuiltMap<String, _i5.AttributeValue>,
    int,
    _i4.BuiltList<_i4.BuiltMap<String, _i5.AttributeValue>>> {
  /// The `Scan` operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a `FilterExpression` operation.
  ///
  /// If the total number of scanned items exceeds the maximum dataset size limit of 1 MB, the scan stops and results are returned to the user as a `LastEvaluatedKey` value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria.
  ///
  /// A single `Scan` operation reads up to the maximum number of items set (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply any filtering to the results using `FilterExpression`. If `LastEvaluatedKey` is present in the response, you need to paginate the result set. For more information, see [Paginating the Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// `Scan` operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel `Scan` operation by providing the `Segment` and `TotalSegments` parameters. For more information, see [Parallel Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// `Scan` uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the `Scan` begins, you can set the `ConsistentRead` parameter to `true`.
  ScanOperation({
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
      _i1.HttpProtocol<_i2.ScanInput, _i2.ScanInput, _i3.ScanOutput,
          _i3.ScanOutput>> protocols = [
    _i7.AwsJson1_0Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.Scan',
            ),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.dynamoDb,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(_i2.ScanInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ScanOutput? output]) => 200;
  @override
  _i3.ScanOutput buildOutput(
    _i3.ScanOutput payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ScanOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.InternalServerError, _i11.InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i11.InternalServerError,
          builder: _i11.InternalServerError.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidEndpointException,
            _i12.InvalidEndpointException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidEndpointException,
          statusCode: 421,
          builder: _i12.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError<_i13.ProvisionedThroughputExceededException,
            _i13.ProvisionedThroughputExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ProvisionedThroughputExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.ProvisionedThroughputExceededException,
          builder: _i13.ProvisionedThroughputExceededException.fromResponse,
        ),
        _i1.SmithyError<_i14.RequestLimitExceeded, _i14.RequestLimitExceeded>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'RequestLimitExceeded',
          ),
          _i1.ErrorKind.client,
          _i14.RequestLimitExceeded,
          builder: _i14.RequestLimitExceeded.fromResponse,
        ),
        _i1.SmithyError<_i15.ResourceNotFoundException,
            _i15.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i15.ResourceNotFoundException,
          builder: _i15.ResourceNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'Scan';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ScanOutput> run(
    _i2.ScanInput input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)},
      },
    );
  }

  @override
  _i4.BuiltMap<String, _i5.AttributeValue>? getToken(_i3.ScanOutput output) =>
      output.lastEvaluatedKey;
  @override
  _i4.BuiltList<_i4.BuiltMap<String, _i5.AttributeValue>> getItems(
          _i3.ScanOutput output) =>
      output.items ?? _i4.BuiltList();
  @override
  _i2.ScanInput rebuildInput(
    _i2.ScanInput input,
    _i4.BuiltMap<String, _i5.AttributeValue> token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.exclusiveStartKey.replace(token);
        if (pageSize != null) {
          b.limit = pageSize;
        }
      });
}
