// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.batch_get_item_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_get_item_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i13;

/// The `BatchGetItem` operation returns the attributes of one or more items from one or more tables. You identify requested items by primary key.
///
/// A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. `BatchGetItem` returns a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded, or an internal processing failure occurs. If a partial result is returned, the operation returns a value for `UnprocessedKeys`. You can use this value to retry the operation starting with the next item to get.
///
/// If you request more than 100 items, `BatchGetItem` returns a `ValidationException` with the message "Too many items requested for the BatchGetItem call."
///
/// For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns an appropriate `UnprocessedKeys` value so you can get the next page of results. If desired, your application can include its own logic to assemble the pages of results into one dataset.
///
/// If _none_ of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then `BatchGetItem` returns a `ProvisionedThroughputExceededException`. If _at least one_ of the items is successfully processed, then `BatchGetItem` completes successfully, while returning the keys of the unread items in `UnprocessedKeys`.
///
/// If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, _we strongly recommend that you use an exponential backoff algorithm_. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.
///
/// For more information, see [Batch Operations and Error Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations) in the _Amazon DynamoDB Developer Guide_.
///
/// By default, `BatchGetItem` performs eventually consistent reads on every table in the request. If you want strongly consistent reads instead, you can set `ConsistentRead` to `true` for any or all tables.
///
/// In order to minimize response latency, `BatchGetItem` retrieves items in parallel.
///
/// When designing your application, keep in mind that DynamoDB does not return items in any particular order. To help parse the response by item, include the primary key values for the items in your request in the `ProjectionExpression` parameter.
///
/// If a requested item does not exist, it is not returned in the result. Requests for nonexistent items consume the minimum read capacity units according to the type of read. For more information, see [Working with Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations) in the _Amazon DynamoDB Developer Guide_.
class BatchGetItemOperation extends _i1.HttpOperation<_i2.BatchGetItemInput,
    _i2.BatchGetItemInput, _i3.BatchGetItemOutput, _i3.BatchGetItemOutput> {
  /// The `BatchGetItem` operation returns the attributes of one or more items from one or more tables. You identify requested items by primary key.
  ///
  /// A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. `BatchGetItem` returns a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded, or an internal processing failure occurs. If a partial result is returned, the operation returns a value for `UnprocessedKeys`. You can use this value to retry the operation starting with the next item to get.
  ///
  /// If you request more than 100 items, `BatchGetItem` returns a `ValidationException` with the message "Too many items requested for the BatchGetItem call."
  ///
  /// For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns an appropriate `UnprocessedKeys` value so you can get the next page of results. If desired, your application can include its own logic to assemble the pages of results into one dataset.
  ///
  /// If _none_ of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then `BatchGetItem` returns a `ProvisionedThroughputExceededException`. If _at least one_ of the items is successfully processed, then `BatchGetItem` completes successfully, while returning the keys of the unread items in `UnprocessedKeys`.
  ///
  /// If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, _we strongly recommend that you use an exponential backoff algorithm_. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed.
  ///
  /// For more information, see [Batch Operations and Error Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// By default, `BatchGetItem` performs eventually consistent reads on every table in the request. If you want strongly consistent reads instead, you can set `ConsistentRead` to `true` for any or all tables.
  ///
  /// In order to minimize response latency, `BatchGetItem` retrieves items in parallel.
  ///
  /// When designing your application, keep in mind that DynamoDB does not return items in any particular order. To help parse the response by item, include the primary key values for the items in your request in the `ProjectionExpression` parameter.
  ///
  /// If a requested item does not exist, it is not returned in the result. Requests for nonexistent items consume the minimum read capacity units according to the type of read. For more information, see [Working with Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations) in the _Amazon DynamoDB Developer Guide_.
  BatchGetItemOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.BatchGetItemInput, _i2.BatchGetItemInput,
          _i3.BatchGetItemOutput, _i3.BatchGetItemOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'DynamoDB_20120810.BatchGetItem',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.dynamoDb,
          credentialsProvider: _credentialsProvider,
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
  _i1.HttpRequest buildRequest(_i2.BatchGetItemInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.BatchGetItemOutput? output]) => 200;
  @override
  _i3.BatchGetItemOutput buildOutput(
    _i3.BatchGetItemOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.BatchGetItemOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i9.InternalServerError,
          builder: _i9.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidEndpointException,
          statusCode: 421,
          builder: _i10.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ProvisionedThroughputExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.ProvisionedThroughputExceededException,
          builder: _i11.ProvisionedThroughputExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'RequestLimitExceeded',
          ),
          _i1.ErrorKind.client,
          _i12.RequestLimitExceeded,
          builder: _i12.RequestLimitExceeded.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.ResourceNotFoundException,
          builder: _i13.ResourceNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'BatchGetItem';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.BatchGetItemOutput> run(
    _i2.BatchGetItemInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
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
