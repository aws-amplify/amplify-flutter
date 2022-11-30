// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.operation.get_bucket_logging_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_logging_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_logging_request.dart'
    as _i2;

/// Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.
///
/// The following operations are related to `GetBucketLogging`:
///
/// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
///
/// *   [PutBucketLogging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLogging.html)
class GetBucketLoggingOperation extends _i1.HttpOperation<
    _i2.GetBucketLoggingRequestPayload,
    _i2.GetBucketLoggingRequest,
    _i3.GetBucketLoggingOutput,
    _i3.GetBucketLoggingOutput> {
  /// Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.
  ///
  /// The following operations are related to `GetBucketLogging`:
  ///
  /// *   [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
  ///
  /// *   [PutBucketLogging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLogging.html)
  GetBucketLoggingOperation({
    required String region,
    Uri? baseUri,
    _i4.S3ClientConfig s3ClientConfig = const _i4.S3ClientConfig(),
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GetBucketLoggingRequestPayload,
          _i2.GetBucketLoggingRequest,
          _i3.GetBucketLoggingOutput,
          _i3.GetBucketLoggingOutput>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        _i4.WithSigV4(
          region: _region,
          service: _i7.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i5.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
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

  @override
  _i1.HttpRequest buildRequest(_i2.GetBucketLoggingRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path =
            _s3ClientConfig.usePathStyle ? r'/{Bucket}?logging' : r'/?logging';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
      });
  @override
  int successCode([_i3.GetBucketLoggingOutput? output]) => 200;
  @override
  _i3.GetBucketLoggingOutput buildOutput(
    _i3.GetBucketLoggingOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetBucketLoggingOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetBucketLogging';
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
  _i1.SmithyOperation<_i3.GetBucketLoggingOutput> run(
    _i2.GetBucketLoggingRequest input, {
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
