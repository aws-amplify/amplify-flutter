// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.operation.execute_transaction_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/execute_transaction_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/idempotent_parameter_mismatch_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/internal_server_error.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/request_limit_exceeded.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_canceled_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transaction_in_progress_exception.dart'
    as _i15;

/// This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL.
///
/// The entire transaction must consist of either read statements or write statements, you cannot mix both in one transaction. The EXISTS function is an exception and can be used to check the condition of specific attributes of the item in a similar manner to `ConditionCheck` in the [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems) API.
class ExecuteTransactionOperation extends _i1.HttpOperation<
    _i2.ExecuteTransactionInput,
    _i2.ExecuteTransactionInput,
    _i3.ExecuteTransactionOutput,
    _i3.ExecuteTransactionOutput> {
  /// This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL.
  ///
  /// The entire transaction must consist of either read statements or write statements, you cannot mix both in one transaction. The EXISTS function is an exception and can be used to check the condition of specific attributes of the item in a similar manner to `ConditionCheck` in the [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems) API.
  ExecuteTransactionOperation({
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
      _i1.HttpProtocol<
          _i2.ExecuteTransactionInput,
          _i2.ExecuteTransactionInput,
          _i3.ExecuteTransactionOutput,
          _i3.ExecuteTransactionOutput>> protocols = [
    _i5.AwsJson1_0Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'DynamoDB_20120810.ExecuteTransaction',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.dynamoDb,
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
  _i1.HttpRequest buildRequest(_i2.ExecuteTransactionInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ExecuteTransactionOutput? output]) => 200;
  @override
  _i3.ExecuteTransactionOutput buildOutput(
    _i3.ExecuteTransactionOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ExecuteTransactionOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.IdempotentParameterMismatchException,
            _i9.IdempotentParameterMismatchException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'IdempotentParameterMismatchException',
          ),
          _i1.ErrorKind.client,
          _i9.IdempotentParameterMismatchException,
          builder: _i9.IdempotentParameterMismatchException.fromResponse,
        ),
        _i1.SmithyError<_i10.InternalServerError, _i10.InternalServerError>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'InternalServerError',
          ),
          _i1.ErrorKind.server,
          _i10.InternalServerError,
          builder: _i10.InternalServerError.fromResponse,
        ),
        _i1.SmithyError<_i11.ProvisionedThroughputExceededException,
            _i11.ProvisionedThroughputExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ProvisionedThroughputExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.ProvisionedThroughputExceededException,
          builder: _i11.ProvisionedThroughputExceededException.fromResponse,
        ),
        _i1.SmithyError<_i12.RequestLimitExceeded, _i12.RequestLimitExceeded>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'RequestLimitExceeded',
          ),
          _i1.ErrorKind.client,
          _i12.RequestLimitExceeded,
          builder: _i12.RequestLimitExceeded.fromResponse,
        ),
        _i1.SmithyError<_i13.ResourceNotFoundException,
            _i13.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.ResourceNotFoundException,
          builder: _i13.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i14.TransactionCanceledException,
            _i14.TransactionCanceledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TransactionCanceledException',
          ),
          _i1.ErrorKind.client,
          _i14.TransactionCanceledException,
          builder: _i14.TransactionCanceledException.fromResponse,
        ),
        _i1.SmithyError<_i15.TransactionInProgressException,
            _i15.TransactionInProgressException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'TransactionInProgressException',
          ),
          _i1.ErrorKind.client,
          _i15.TransactionInProgressException,
          builder: _i15.TransactionInProgressException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ExecuteTransaction';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ExecuteTransactionOutput> run(
    _i2.ExecuteTransactionInput input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
