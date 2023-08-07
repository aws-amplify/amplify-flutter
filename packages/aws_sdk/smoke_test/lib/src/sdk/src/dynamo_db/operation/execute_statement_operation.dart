// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.execute_statement_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_check_failed_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/duplicate_item_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_statement_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_size_limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_conflict_exception.dart';

/// This operation allows you to perform reads and singleton writes on data stored in DynamoDB, using PartiQL.
///
/// For PartiQL reads (`SELECT` statement), if the total number of processed items exceeds the maximum dataset size limit of 1 MB, the read stops and results are returned to the user as a `LastEvaluatedKey` value to continue the read in a subsequent operation. If the filter criteria in `WHERE` clause does not match any data, the read will return an empty result set.
///
/// A single `SELECT` statement response can return up to the maximum number of items (if using the Limit parameter) or a maximum of 1 MB of data (and then apply any filtering to the results using `WHERE` clause). If `LastEvaluatedKey` is present in the response, you need to paginate the result set. If `NextToken` is present, you need to paginate the result set and include `NextToken`.
class ExecuteStatementOperation extends _i1.HttpOperation<ExecuteStatementInput,
    ExecuteStatementInput, ExecuteStatementOutput, ExecuteStatementOutput> {
  /// This operation allows you to perform reads and singleton writes on data stored in DynamoDB, using PartiQL.
  ///
  /// For PartiQL reads (`SELECT` statement), if the total number of processed items exceeds the maximum dataset size limit of 1 MB, the read stops and results are returned to the user as a `LastEvaluatedKey` value to continue the read in a subsequent operation. If the filter criteria in `WHERE` clause does not match any data, the read will return an empty result set.
  ///
  /// A single `SELECT` statement response can return up to the maximum number of items (if using the Limit parameter) or a maximum of 1 MB of data (and then apply any filtering to the results using `WHERE` clause). If `LastEvaluatedKey` is present in the response, you need to paginate the result set. If `NextToken` is present, you need to paginate the result set and include `NextToken`.
  ExecuteStatementOperation({
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
      _i1.HttpProtocol<ExecuteStatementInput, ExecuteStatementInput,
          ExecuteStatementOutput, ExecuteStatementOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.ExecuteStatement',
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
  _i1.HttpRequest buildRequest(ExecuteStatementInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ExecuteStatementOutput? output]) => 200;
  @override
  ExecuteStatementOutput buildOutput(
    ExecuteStatementOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ExecuteStatementOutput.fromResponse(
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
        _i1.SmithyError<DuplicateItemException, DuplicateItemException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'DuplicateItemException',
          ),
          _i1.ErrorKind.client,
          DuplicateItemException,
          builder: DuplicateItemException.fromResponse,
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
  String get runtimeTypeName => 'ExecuteStatement';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ExecuteStatementOutput> run(
    ExecuteStatementInput input, {
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
