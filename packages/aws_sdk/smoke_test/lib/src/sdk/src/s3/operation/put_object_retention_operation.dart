// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.operation.put_object_retention_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_retention_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/put_object_retention_request.dart';

/// Places an Object Retention configuration on an object. For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). Users or accounts require the `s3:PutObjectRetention` permission in order to place an Object Retention configuration on objects. Bypassing a Governance Retention configuration requires the `s3:BypassGovernanceRetention` permission.
///
/// This action is not supported by Amazon S3 on Outposts.
class PutObjectRetentionOperation extends _i1.HttpOperation<
    ObjectLockRetention,
    PutObjectRetentionRequest,
    PutObjectRetentionOutputPayload,
    PutObjectRetentionOutput> {
  /// Places an Object Retention configuration on an object. For more information, see [Locking Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html). Users or accounts require the `s3:PutObjectRetention` permission in order to place an Object Retention configuration on objects. Bypassing a Governance Retention configuration requires the `s3:BypassGovernanceRetention` permission.
  ///
  /// This action is not supported by Amazon S3 on Outposts.
  PutObjectRetentionOperation({
    required String region,
    Uri? baseUri,
    _i2.S3ClientConfig s3ClientConfig = const _i2.S3ClientConfig(),
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
      _i1.HttpProtocol<
          ObjectLockRetention,
          PutObjectRetentionRequest,
          PutObjectRetentionOutputPayload,
          PutObjectRetentionOutput>> protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i2.WithSigV4(
              region: _region,
              service: _i4.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i3.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: true,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.S3ClientConfig _s3ClientConfig;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(PutObjectRetentionRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?retention'
            : r'/{Key+}?retention';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.bypassGovernanceRetention != null) {
          b.headers['x-amz-bypass-governance-retention'] =
              input.bypassGovernanceRetention!.toString();
        }
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
        if (input.versionId != null) {
          b.queryParameters.add(
            'versionId',
            input.versionId!,
          );
        }
        b.requestInterceptors
            .add(_i2.WithChecksum(input.checksumAlgorithm?.value));
      });
  @override
  int successCode([PutObjectRetentionOutput? output]) => 200;
  @override
  PutObjectRetentionOutput buildOutput(
    PutObjectRetentionOutputPayload payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutObjectRetentionOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'PutObjectRetention';
  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();
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
  _i1.SmithyOperation<PutObjectRetentionOutput> run(
    PutObjectRetentionRequest input, {
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
