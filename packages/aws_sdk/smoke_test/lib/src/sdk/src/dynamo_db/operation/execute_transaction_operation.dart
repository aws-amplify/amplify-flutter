// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.operation.execute_transaction_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_input.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_output.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/idempotent_parameter_mismatch_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_canceled_exception.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_in_progress_exception.dart';

/// This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL.
///
/// The entire transaction must consist of either read statements or write statements, you cannot mix both in one transaction. The EXISTS function is an exception and can be used to check the condition of specific attributes of the item in a similar manner to `ConditionCheck` in the [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems) API.
class ExecuteTransactionOperation extends _i1.HttpOperation<
    ExecuteTransactionInput,
    ExecuteTransactionInput,
    ExecuteTransactionOutput,
    ExecuteTransactionOutput> {
  /// This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL.
  ///
  /// The entire transaction must consist of either read statements or write statements, you cannot mix both in one transaction. The EXISTS function is an exception and can be used to check the condition of specific attributes of the item in a similar manner to `ConditionCheck` in the [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems) API.
  ExecuteTransactionOperation({
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
      _i1.HttpProtocol<ExecuteTransactionInput, ExecuteTransactionInput,
          ExecuteTransactionOutput, ExecuteTransactionOutput>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.ExecuteTransaction',
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
  _i1.HttpRequest buildRequest(ExecuteTransactionInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ExecuteTransactionOutput? output]) => 200;
  @override
  ExecuteTransactionOutput buildOutput(
    ExecuteTransactionOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ExecuteTransactionOutput.fromResponse(
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
  String get runtimeTypeName => 'ExecuteTransaction';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ExecuteTransactionOutput> run(
    ExecuteTransactionInput input, {
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
