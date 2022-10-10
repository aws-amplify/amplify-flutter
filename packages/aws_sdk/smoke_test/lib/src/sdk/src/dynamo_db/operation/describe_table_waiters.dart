// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.operation.describe_table_operation_waiters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/describe_table_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/resource_not_found_exception.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/operation/describe_table_operation.dart'
    as _i5;

class TableExistsWaiter
    extends _i1.Waiter<_i2.DescribeTableInput, _i3.DescribeTableOutput> {
  TableExistsWaiter({
    required Duration timeout,
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  }) : super(
          timeout: timeout,
          operationBuilder: () => _i5.DescribeTableOperation(
            region: region,
            baseUri: baseUri,
            credentialsProvider: credentialsProvider,
          ),
        );

  @override
  List<_i1.Acceptor<_i2.DescribeTableInput, _i3.DescribeTableOutput>>
      get acceptors => const [
            _SucceedOnOutput(),
            _RetryOnResourceNotFoundException(),
          ];
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i6.ResourceNotFoundException,
          builder: _i6.ResourceNotFoundException.fromResponse,
        )
      ];
}

class _SucceedOnOutput
    extends _i1.Acceptor<_i2.DescribeTableInput, _i3.DescribeTableOutput> {
  const _SucceedOnOutput();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.success;
  @override
  bool matches({
    required _i2.DescribeTableInput input,
    _i3.DescribeTableOutput? output,
    _i1.SmithyException? exception,
  }) {
    if (output == null) return false;
    final value = output.table?.tableStatus?.value;
    return value == 'ACTIVE';
  }
}

class _RetryOnResourceNotFoundException
    extends _i1.Acceptor<_i2.DescribeTableInput, _i3.DescribeTableOutput> {
  const _RetryOnResourceNotFoundException();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.retry;
  @override
  bool matches({
    required _i2.DescribeTableInput input,
    _i3.DescribeTableOutput? output,
    _i1.SmithyException? exception,
  }) {
    return exception is _i6.ResourceNotFoundException;
  }
}

class TableNotExistsWaiter
    extends _i1.Waiter<_i2.DescribeTableInput, _i3.DescribeTableOutput> {
  TableNotExistsWaiter({
    required Duration timeout,
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  }) : super(
          timeout: timeout,
          operationBuilder: () => _i5.DescribeTableOperation(
            region: region,
            baseUri: baseUri,
            credentialsProvider: credentialsProvider,
          ),
        );

  @override
  List<_i1.Acceptor<_i2.DescribeTableInput, _i3.DescribeTableOutput>>
      get acceptors => const [_SucceedOnResourceNotFoundException()];
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.dynamodb',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i6.ResourceNotFoundException,
          builder: _i6.ResourceNotFoundException.fromResponse,
        )
      ];
}

class _SucceedOnResourceNotFoundException
    extends _i1.Acceptor<_i2.DescribeTableInput, _i3.DescribeTableOutput> {
  const _SucceedOnResourceNotFoundException();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.success;
  @override
  bool matches({
    required _i2.DescribeTableInput input,
    _i3.DescribeTableOutput? output,
    _i1.SmithyException? exception,
  }) {
    return exception is _i6.ResourceNotFoundException;
  }
}
