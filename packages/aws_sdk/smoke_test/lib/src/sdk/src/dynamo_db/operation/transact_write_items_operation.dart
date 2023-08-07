// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.transact_write_items_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/idempotent_parameter_mismatch_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_items_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_canceled_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_in_progress_exception.dart';

/// `TransactWriteItems` is a synchronous write operation that groups up to 100 action requests. These actions can target items in different tables, but not in different Amazon Web Services accounts or Regions, and no two actions can target the same item. For example, you cannot both `ConditionCheck` and `Update` the same item. The aggregate size of the items in the transaction cannot exceed 4 MB.
///
/// The actions are completed atomically so that either all of them succeed, or all of them fail. They are defined by the following objects:
///
/// *   `Put`  —   Initiates a `PutItem` operation to write a new item. This structure specifies the primary key of the item to be written, the name of the table to write it in, an optional condition expression that must be satisfied for the write to succeed, a list of the item's attributes, and a field indicating whether to retrieve the item's attributes if the condition is not met.
///
/// *   `Update`  —   Initiates an `UpdateItem` operation to update an existing item. This structure specifies the primary key of the item to be updated, the name of the table where it resides, an optional condition expression that must be satisfied for the update to succeed, an expression that defines one or more attributes to be updated, and a field indicating whether to retrieve the item's attributes if the condition is not met.
///
/// *   `Delete`  —   Initiates a `DeleteItem` operation to delete an existing item. This structure specifies the primary key of the item to be deleted, the name of the table where it resides, an optional condition expression that must be satisfied for the deletion to succeed, and a field indicating whether to retrieve the item's attributes if the condition is not met.
///
/// *   `ConditionCheck`  —   Applies a condition to an item that is not being modified by the transaction. This structure specifies the primary key of the item to be checked, the name of the table where it resides, a condition expression that must be satisfied for the transaction to succeed, and a field indicating whether to retrieve the item's attributes if the condition is not met.
///
///
/// DynamoDB rejects the entire `TransactWriteItems` request if any of the following is true:
///
/// *   A condition in one of the condition expressions is not met.
///
/// *   An ongoing operation is in the process of updating the same item.
///
/// *   There is insufficient provisioned capacity for the transaction to be completed.
///
/// *   An item size becomes too large (bigger than 400 KB), a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
///
/// *   The aggregate size of the items in the transaction exceeds 4 MB.
///
/// *   There is a user error, such as an invalid data format.
class TransactWriteItemsOperation extends _i1.HttpOperation<
    TransactWriteItemsInput,
    TransactWriteItemsInput,
    TransactWriteItemsOutput,
    TransactWriteItemsOutput> {
  /// `TransactWriteItems` is a synchronous write operation that groups up to 100 action requests. These actions can target items in different tables, but not in different Amazon Web Services accounts or Regions, and no two actions can target the same item. For example, you cannot both `ConditionCheck` and `Update` the same item. The aggregate size of the items in the transaction cannot exceed 4 MB.
  ///
  /// The actions are completed atomically so that either all of them succeed, or all of them fail. They are defined by the following objects:
  ///
  /// *   `Put`  —   Initiates a `PutItem` operation to write a new item. This structure specifies the primary key of the item to be written, the name of the table to write it in, an optional condition expression that must be satisfied for the write to succeed, a list of the item's attributes, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  /// *   `Update`  —   Initiates an `UpdateItem` operation to update an existing item. This structure specifies the primary key of the item to be updated, the name of the table where it resides, an optional condition expression that must be satisfied for the update to succeed, an expression that defines one or more attributes to be updated, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  /// *   `Delete`  —   Initiates a `DeleteItem` operation to delete an existing item. This structure specifies the primary key of the item to be deleted, the name of the table where it resides, an optional condition expression that must be satisfied for the deletion to succeed, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  /// *   `ConditionCheck`  —   Applies a condition to an item that is not being modified by the transaction. This structure specifies the primary key of the item to be checked, the name of the table where it resides, a condition expression that must be satisfied for the transaction to succeed, and a field indicating whether to retrieve the item's attributes if the condition is not met.
  ///
  ///
  /// DynamoDB rejects the entire `TransactWriteItems` request if any of the following is true:
  ///
  /// *   A condition in one of the condition expressions is not met.
  ///
  /// *   An ongoing operation is in the process of updating the same item.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   An item size becomes too large (bigger than 400 KB), a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
  ///
  /// *   The aggregate size of the items in the transaction exceeds 4 MB.
  ///
  /// *   There is a user error, such as an invalid data format.
  TransactWriteItemsOperation({
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
      _i1.HttpProtocol<TransactWriteItemsInput, TransactWriteItemsInput,
          TransactWriteItemsOutput, TransactWriteItemsOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.TransactWriteItems',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.dynamoDb,
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
  _i1.HttpRequest buildRequest(TransactWriteItemsInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([TransactWriteItemsOutput? output]) => 200;
  @override
  TransactWriteItemsOutput buildOutput(
    TransactWriteItemsOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      TransactWriteItemsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<IdempotentParameterMismatchException,
            IdempotentParameterMismatchException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'IdempotentParameterMismatchException',
          ),
          _i1.ErrorKind.client,
          IdempotentParameterMismatchException,
          builder: IdempotentParameterMismatchException.fromResponse,
        ),
        _i1.SmithyError<InternalServerError, InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          InternalServerError,
          builder: InternalServerError.fromResponse,
        ),
        _i1.SmithyError<InvalidEndpointException, InvalidEndpointException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InvalidEndpointException',
          ),
          _i1.ErrorKind.client,
          InvalidEndpointException,
          statusCode: 421,
          builder: InvalidEndpointException.fromResponse,
        ),
        _i1.SmithyError<ProvisionedThroughputExceededException,
            ProvisionedThroughputExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ProvisionedThroughputExceededException',
          ),
          _i1.ErrorKind.client,
          ProvisionedThroughputExceededException,
          builder: ProvisionedThroughputExceededException.fromResponse,
        ),
        _i1.SmithyError<RequestLimitExceeded, RequestLimitExceeded>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'RequestLimitExceeded',
          ),
          _i1.ErrorKind.client,
          RequestLimitExceeded,
          builder: RequestLimitExceeded.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<TransactionCanceledException,
            TransactionCanceledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TransactionCanceledException',
          ),
          _i1.ErrorKind.client,
          TransactionCanceledException,
          builder: TransactionCanceledException.fromResponse,
        ),
        _i1.SmithyError<TransactionInProgressException,
            TransactionInProgressException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TransactionInProgressException',
          ),
          _i1.ErrorKind.client,
          TransactionInProgressException,
          builder: TransactionInProgressException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'TransactWriteItems';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<TransactWriteItemsOutput> run(
    TransactWriteItemsInput input, {
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
