// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.operation.put_bucket_policy_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_policy_request.dart'
    as _i2;

/// Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are using an identity other than the root user of the Amazon Web Services account that owns the bucket, the calling identity must have the `PutBucketPolicy` permissions on the specified bucket and belong to the bucket owner's account in order to use this operation.
///
/// If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a `403 Access Denied` error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a `405 Method Not Allowed` error.
///
/// As a security precaution, the root user of the Amazon Web Services account that owns a bucket can always use this operation, even if the policy explicitly denies the root user the ability to perform this action.
///
/// For more information, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html).
///
/// The following operations are related to `PutBucketPolicy`:
///
/// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
///
/// *   [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
class PutBucketPolicyOperation extends _i1
    .HttpOperation<String, _i2.PutBucketPolicyRequest, _i1.Unit, _i1.Unit> {
  /// Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are using an identity other than the root user of the Amazon Web Services account that owns the bucket, the calling identity must have the `PutBucketPolicy` permissions on the specified bucket and belong to the bucket owner's account in order to use this operation.
  ///
  /// If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a `403 Access Denied` error. If you have the correct permissions, but you're not using an identity that belongs to the bucket owner's account, Amazon S3 returns a `405 Method Not Allowed` error.
  ///
  /// As a security precaution, the root user of the Amazon Web Services account that owns a bucket can always use this operation, even if the policy explicitly denies the root user the ability to perform this action.
  ///
  /// For more information, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html).
  ///
  /// The following operations are related to `PutBucketPolicy`:
  ///
  /// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  ///
  /// *   [DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)
  PutBucketPolicyOperation({
    required String region,
    Uri? baseUri,
    _i3.S3ClientConfig s3ClientConfig = const _i3.S3ClientConfig(),
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<String, _i2.PutBucketPolicyRequest, _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestXmlProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        _i3.WithSigV4(
          region: _region,
          service: _i6.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i4.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i3.WithSdkInvocationId(),
        const _i3.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: true,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.S3ClientConfig _s3ClientConfig;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.PutBucketPolicyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path =
            _s3ClientConfig.usePathStyle ? r'/{Bucket}?policy' : r'/?policy';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.contentMd5 != null) {
          if (input.contentMd5!.isNotEmpty) {
            b.headers['Content-MD5'] = input.contentMd5!;
          }
        }
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-sdk-checksum-algorithm'] =
              input.checksumAlgorithm!.value;
        }
        if (input.confirmRemoveSelfBucketAccess != null) {
          b.headers['x-amz-confirm-remove-self-bucket-access'] =
              input.confirmRemoveSelfBucketAccess!.toString();
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        b.requestInterceptors
            .add(_i3.WithChecksum(input.checksumAlgorithm?.value));
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'PutBucketPolicy';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri {
    var baseUri = _baseUri ?? endpoint.uri;
    if (_s3ClientConfig.useDualStack) {
      baseUri = baseUri.replace(
        host: baseUri.host.replaceFirst(RegExp(r'^s3\.'), 's3.dualstack.'),
      );
    }
    if (_s3ClientConfig.useAcceleration) {
      baseUri = baseUri.replace(
        host: baseUri.host
            .replaceFirst(RegExp('$_region\\.'), '')
            .replaceFirst(RegExp(r'^s3\.'), 's3-accelerate.'),
      );
    }
    return baseUri;
  }

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.PutBucketPolicyRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}
