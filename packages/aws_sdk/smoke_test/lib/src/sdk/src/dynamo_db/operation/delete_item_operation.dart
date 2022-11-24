// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.delete_item_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i17;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_check_failed_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_item_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_size_limit_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_conflict_exception.dart'
    as _i16;

/// Deletes a single item in a table by primary key. You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.
///
/// In addition to deleting an item, you can also return the item's attribute values in the same operation, using the `ReturnValues` parameter.
///
/// Unless you specify conditions, the `DeleteItem` is an idempotent operation; running it multiple times on the same item or attribute does _not_ result in an error response.
///
/// Conditional deletes are useful for deleting items only if specific conditions are met. If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not deleted.
class DeleteItemOperation extends _i1.HttpOperation<_i2.DeleteItemInput,
    _i2.DeleteItemInput, _i3.DeleteItemOutput, _i3.DeleteItemOutput> {
  /// Deletes a single item in a table by primary key. You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.
  ///
  /// In addition to deleting an item, you can also return the item's attribute values in the same operation, using the `ReturnValues` parameter.
  ///
  /// Unless you specify conditions, the `DeleteItem` is an idempotent operation; running it multiple times on the same item or attribute does _not_ result in an error response.
  ///
  /// Conditional deletes are useful for deleting items only if specific conditions are met. If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not deleted.
  DeleteItemOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.DeleteItemInput, _i2.DeleteItemInput,
          _i3.DeleteItemOutput, _i3.DeleteItemOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'DynamoDB_20120810.DeleteItem',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.dynamoDb,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
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
  _i1.HttpRequest buildRequest(_i2.DeleteItemInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DeleteItemOutput? output]) => 200;
  @override
  _i3.DeleteItemOutput buildOutput(
    _i3.DeleteItemOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DeleteItemOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ConditionalCheckFailedException',
          ),
          _i1.ErrorKind.client,
          _i9.ConditionalCheckFailedException,
          builder: _i9.ConditionalCheckFailedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i10.InternalServerError,
          builder: _i10.InternalServerError.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidEndpointException,
          statusCode: 421,
          builder: _i11.InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ItemCollectionSizeLimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i12.ItemCollectionSizeLimitExceededException,
          builder: _i12.ItemCollectionSizeLimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ProvisionedThroughputExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.ProvisionedThroughputExceededException,
          builder: _i13.ProvisionedThroughputExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'RequestLimitExceeded',
          ),
          _i1.ErrorKind.client,
          _i14.RequestLimitExceeded,
          builder: _i14.RequestLimitExceeded.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i15.ResourceNotFoundException,
          builder: _i15.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TransactionConflictException',
          ),
          _i1.ErrorKind.client,
          _i16.TransactionConflictException,
          builder: _i16.TransactionConflictException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DeleteItem';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DeleteItemOutput> run(
    _i2.DeleteItemInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i17.runZoned(
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
