// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.put_item_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_check_failed_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/invalid_endpoint_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_size_limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_item_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_conflict_exception.dart';

/// Creates a new item, or replaces an old item with a new item. If an item that has the same primary key as the new item already exists in the specified table, the new item completely replaces the existing item. You can perform a conditional put operation (add a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values. You can return the item's attribute values in the same operation, using the `ReturnValues` parameter.
///
/// When you add an item, the primary key attributes are the only required attributes.
///
/// Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index. Set type attributes cannot be empty.
///
/// Invalid Requests with empty values will be rejected with a `ValidationException` exception.
///
/// To prevent a new item from replacing an existing item, use a conditional expression that contains the `attribute\_not\_exists` function with the name of the attribute being used as the partition key for the table. Since every record must contain that attribute, the `attribute\_not\_exists` function will only succeed if no matching item exists.
///
/// For more information about `PutItem`, see [Working with Items](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html) in the _Amazon DynamoDB Developer Guide_.
class PutItemOperation extends _i1
    .HttpOperation<PutItemInput, PutItemInput, PutItemOutput, PutItemOutput> {
  /// Creates a new item, or replaces an old item with a new item. If an item that has the same primary key as the new item already exists in the specified table, the new item completely replaces the existing item. You can perform a conditional put operation (add a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values. You can return the item's attribute values in the same operation, using the `ReturnValues` parameter.
  ///
  /// When you add an item, the primary key attributes are the only required attributes.
  ///
  /// Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index. Set type attributes cannot be empty.
  ///
  /// Invalid Requests with empty values will be rejected with a `ValidationException` exception.
  ///
  /// To prevent a new item from replacing an existing item, use a conditional expression that contains the `attribute\_not\_exists` function with the name of the attribute being used as the partition key for the table. Since every record must contain that attribute, the `attribute\_not\_exists` function will only succeed if no matching item exists.
  ///
  /// For more information about `PutItem`, see [Working with Items](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html) in the _Amazon DynamoDB Developer Guide_.
  PutItemOperation({
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
      _i1.HttpProtocol<PutItemInput, PutItemInput, PutItemOutput,
          PutItemOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.PutItem',
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
  _i1.HttpRequest buildRequest(PutItemInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([PutItemOutput? output]) => 200;
  @override
  PutItemOutput buildOutput(
    PutItemOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutItemOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ConditionalCheckFailedException,
            ConditionalCheckFailedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ConditionalCheckFailedException',
          ),
          _i1.ErrorKind.client,
          ConditionalCheckFailedException,
          builder: ConditionalCheckFailedException.fromResponse,
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
        _i1.SmithyError<ItemCollectionSizeLimitExceededException,
            ItemCollectionSizeLimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ItemCollectionSizeLimitExceededException',
          ),
          _i1.ErrorKind.client,
          ItemCollectionSizeLimitExceededException,
          builder: ItemCollectionSizeLimitExceededException.fromResponse,
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
        _i1.SmithyError<TransactionConflictException,
            TransactionConflictException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TransactionConflictException',
          ),
          _i1.ErrorKind.client,
          TransactionConflictException,
          builder: TransactionConflictException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutItem';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<PutItemOutput> run(
    PutItemInput input, {
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
