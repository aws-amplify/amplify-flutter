// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.operation.put_bucket_request_payment_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_request_payment_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_payment_configuration.dart'
    as _i2;

/// Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. For more information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
///
/// The following operations are related to `PutBucketRequestPayment`:
///
/// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
///
/// *   [GetBucketRequestPayment](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketRequestPayment.html)
class PutBucketRequestPaymentOperation extends _i1.HttpOperation<
    _i2.RequestPaymentConfiguration,
    _i3.PutBucketRequestPaymentRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. For more information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
  ///
  /// The following operations are related to `PutBucketRequestPayment`:
  ///
  /// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  ///
  /// *   [GetBucketRequestPayment](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketRequestPayment.html)
  PutBucketRequestPaymentOperation({
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.RequestPaymentConfiguration,
          _i3.PutBucketRequestPaymentRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i7.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i5.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: true,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.S3ClientConfig _s3ClientConfig;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i3.PutBucketRequestPaymentRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?requestPayment'
            : r'/?requestPayment';
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
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        b.requestInterceptors
            .add(_i4.WithChecksum(input.checksumAlgorithm?.value));
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'PutBucketRequestPayment';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
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
    _i3.PutBucketRequestPaymentRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
