// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.operation.head_bucket_operation_waiters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/head_bucket_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/not_found.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/operation/head_bucket_operation.dart'
    as _i5;

class BucketExistsWaiter extends _i1.Waiter<_i2.HeadBucketRequest, _i1.Unit> {
  BucketExistsWaiter({
    required Duration timeout,
    required String region,
    Uri? baseUri,
    _i3.S3ClientConfig s3ClientConfig = const _i3.S3ClientConfig(),
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  }) : super(
          timeout: timeout,
          operationBuilder: () => _i5.HeadBucketOperation(
            region: region,
            baseUri: baseUri,
            s3ClientConfig: s3ClientConfig,
            credentialsProvider: credentialsProvider,
          ),
        );

  @override
  List<_i1.Acceptor<_i2.HeadBucketRequest, _i1.Unit>> get acceptors => const [
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
          _i6.NotFound,
          builder: _i6.NotFound.fromResponse,
        )
      ];
}

class _SucceedOnSuccess extends _i1.Acceptor<_i2.HeadBucketRequest, _i1.Unit> {
  const _SucceedOnSuccess();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.success;
  @override
  bool matches({
    required _i2.HeadBucketRequest input,
    _i1.Unit? output,
    _i1.SmithyException? exception,
  }) {
    return output != null;
  }
}

class _RetryOnNotFound extends _i1.Acceptor<_i2.HeadBucketRequest, _i1.Unit> {
  const _RetryOnNotFound();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.retry;
  @override
  bool matches({
    required _i2.HeadBucketRequest input,
    _i1.Unit? output,
    _i1.SmithyException? exception,
  }) {
    return exception is _i6.NotFound;
  }
}

class BucketNotExistsWaiter
    extends _i1.Waiter<_i2.HeadBucketRequest, _i1.Unit> {
  BucketNotExistsWaiter({
    required Duration timeout,
    required String region,
    Uri? baseUri,
    _i3.S3ClientConfig s3ClientConfig = const _i3.S3ClientConfig(),
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  }) : super(
          timeout: timeout,
          operationBuilder: () => _i5.HeadBucketOperation(
            region: region,
            baseUri: baseUri,
            s3ClientConfig: s3ClientConfig,
            credentialsProvider: credentialsProvider,
          ),
        );

  @override
  List<_i1.Acceptor<_i2.HeadBucketRequest, _i1.Unit>> get acceptors =>
      const [_SucceedOnNotFound()];
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NotFound',
          ),
          _i1.ErrorKind.client,
          _i6.NotFound,
          builder: _i6.NotFound.fromResponse,
        )
      ];
}

class _SucceedOnNotFound extends _i1.Acceptor<_i2.HeadBucketRequest, _i1.Unit> {
  const _SucceedOnNotFound();

  @override
  _i1.AcceptorState get state => _i1.AcceptorState.success;
  @override
  bool matches({
    required _i2.HeadBucketRequest input,
    _i1.Unit? output,
    _i1.SmithyException? exception,
  }) {
    return exception is _i6.NotFound;
  }
}
