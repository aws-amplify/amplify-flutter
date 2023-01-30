// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.operation.delete_bucket_cors_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/delete_bucket_cors_request.dart'
    as _i2;

/// Deletes the `cors` configuration information set for the bucket.
///
/// To use this operation, you must have permission to perform the `s3:PutBucketCORS` action. The bucket owner has this permission by default and can grant this permission to others.
///
/// For information about `cors`, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the _Amazon S3 User Guide_.
///
/// **Related Resources:**
///
/// *   [PutBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html)
///
/// *   [RESTOPTIONSobject](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)
class DeleteBucketCorsOperation extends _i1.HttpOperation<
    _i2.DeleteBucketCorsRequestPayload,
    _i2.DeleteBucketCorsRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Deletes the `cors` configuration information set for the bucket.
  ///
  /// To use this operation, you must have permission to perform the `s3:PutBucketCORS` action. The bucket owner has this permission by default and can grant this permission to others.
  ///
  /// For information about `cors`, see [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) in the _Amazon S3 User Guide_.
  ///
  /// **Related Resources:**
  ///
  /// *   [PutBucketCors](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html)
  ///
  /// *   [RESTOPTIONSobject](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html)
  DeleteBucketCorsOperation({
    required String region,
    Uri? baseUri,
    _i3.S3ClientConfig s3ClientConfig = const _i3.S3ClientConfig(),
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
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
      _i1.HttpProtocol<_i2.DeleteBucketCorsRequestPayload,
          _i2.DeleteBucketCorsRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestXmlProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i3.WithSigV4(
              region: _region,
              service: _i6.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i4.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.DeleteBucketCorsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'DELETE';
        b.path = _s3ClientConfig.usePathStyle ? r'/{Bucket}?cors' : r'/?cors';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 204;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DeleteBucketCors';
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
    _i2.DeleteBucketCorsRequest input, {
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
