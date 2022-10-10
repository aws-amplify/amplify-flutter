// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.operation.get_bucket_encryption_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_encryption_output.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_encryption_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption_configuration.dart'
    as _i3;

/// Returns the default encryption configuration for an Amazon S3 bucket. If the bucket does not have a default encryption configuration, GetBucketEncryption returns `ServerSideEncryptionConfigurationNotFoundError`.
///
/// For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Bucket Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html).
///
/// To use this operation, you must have permission to perform the `s3:GetEncryptionConfiguration` action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
///
/// The following operations are related to `GetBucketEncryption`:
///
/// *   [PutBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html)
///
/// *   [DeleteBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html)
class GetBucketEncryptionOperation extends _i1.HttpOperation<
    _i2.GetBucketEncryptionRequestPayload,
    _i2.GetBucketEncryptionRequest,
    _i3.ServerSideEncryptionConfiguration,
    _i4.GetBucketEncryptionOutput> {
  /// Returns the default encryption configuration for an Amazon S3 bucket. If the bucket does not have a default encryption configuration, GetBucketEncryption returns `ServerSideEncryptionConfigurationNotFoundError`.
  ///
  /// For information about the Amazon S3 default encryption feature, see [Amazon S3 Default Bucket Encryption](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html).
  ///
  /// To use this operation, you must have permission to perform the `s3:GetEncryptionConfiguration` action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
  ///
  /// The following operations are related to `GetBucketEncryption`:
  ///
  /// *   [PutBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html)
  ///
  /// *   [DeleteBucketEncryption](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html)
  GetBucketEncryptionOperation({
    required String region,
    Uri? baseUri,
    _i5.S3ClientConfig s3ClientConfig = const _i5.S3ClientConfig(),
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GetBucketEncryptionRequestPayload,
          _i2.GetBucketEncryptionRequest,
          _i3.ServerSideEncryptionConfiguration,
          _i4.GetBucketEncryptionOutput>> protocols = [
    _i5.RestXmlProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        _i5.WithSigV4(
          region: _region,
          service: _i8.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i6.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
      noErrorWrapping: true,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.S3ClientConfig _s3ClientConfig;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetBucketEncryptionRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?encryption'
            : r'/?encryption';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
      });
  @override
  int successCode([_i4.GetBucketEncryptionOutput? output]) => 200;
  @override
  _i4.GetBucketEncryptionOutput buildOutput(
    _i3.ServerSideEncryptionConfiguration? payload,
    _i8.AWSStreamedHttpResponse response,
  ) =>
      _i4.GetBucketEncryptionOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
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
  _i10.Future<_i4.GetBucketEncryptionOutput> run(
    _i2.GetBucketEncryptionRequest input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)}
      },
    );
  }
}
