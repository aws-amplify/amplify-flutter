// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.operation.head_object_operation_waiters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/head_object_output.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/head_object_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/not_found.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/operation/head_object_operation.dart'
    as _i6;

class ObjectExistsWaiter
    extends _i1.Waiter<_i2.HeadObjectRequest, _i3.HeadObjectOutput> {
  ObjectExistsWaiter({
    required Duration timeout,
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
  }) : super(
          timeout: timeout,
          operationBuilder: () => _i6.HeadObjectOperation(
            region: region,
            baseUri: baseUri,
            s3ClientConfig: s3ClientConfig,
            credentialsProvider: credentialsProvider,
          ),
        );

  @override
  List<_i1.Acceptor<_i2.HeadObjectRequest, _i3.HeadObjectOutput>>
      get acceptors => const [
            _SucceedOnSuccess(),
            _RetryOnNotFound(),
          ];
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NotFound',
          ),
          _i1.ErrorKind.client,
          _i7.NotFound,
          builder: _i7.NotFound.fromResponse,
        )
      ];
}

class _SucceedOnSuccess
    extends _i1.Acceptor<_i2.HeadObjectRequest, _i3.HeadObjectOutput> {
  const _SucceedOnSuccess();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.success;
  @override
  bool matches({
    required _i2.HeadObjectRequest input,
    _i3.HeadObjectOutput? output,
    _i1.SmithyException? exception,
  }) {
    return output != null;
  }
}

class _RetryOnNotFound
    extends _i1.Acceptor<_i2.HeadObjectRequest, _i3.HeadObjectOutput> {
  const _RetryOnNotFound();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.retry;
  @override
  bool matches({
    required _i2.HeadObjectRequest input,
    _i3.HeadObjectOutput? output,
    _i1.SmithyException? exception,
  }) {
    return exception is _i7.NotFound;
  }
}

class ObjectNotExistsWaiter
    extends _i1.Waiter<_i2.HeadObjectRequest, _i3.HeadObjectOutput> {
  ObjectNotExistsWaiter({
    required Duration timeout,
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
  }) : super(
          timeout: timeout,
          operationBuilder: () => _i6.HeadObjectOperation(
            region: region,
            baseUri: baseUri,
            s3ClientConfig: s3ClientConfig,
            credentialsProvider: credentialsProvider,
          ),
        );

  @override
  List<_i1.Acceptor<_i2.HeadObjectRequest, _i3.HeadObjectOutput>>
      get acceptors => const [_SucceedOnNotFound()];
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NotFound',
          ),
          _i1.ErrorKind.client,
          _i7.NotFound,
          builder: _i7.NotFound.fromResponse,
        )
      ];
}

class _SucceedOnNotFound
    extends _i1.Acceptor<_i2.HeadObjectRequest, _i3.HeadObjectOutput> {
  const _SucceedOnNotFound();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.success;
  @override
  bool matches({
    required _i2.HeadObjectRequest input,
    _i3.HeadObjectOutput? output,
    _i1.SmithyException? exception,
  }) {
    return exception is _i7.NotFound;
  }
}
