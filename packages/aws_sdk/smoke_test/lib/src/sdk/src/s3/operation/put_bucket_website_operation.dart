// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.operation.put_bucket_website_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/put_bucket_website_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/website_configuration.dart'
    as _i2;

/// Sets the configuration of the website that is specified in the `website` subresource. To configure a bucket as a website, you can add this subresource on the bucket with website configuration information such as the file name of the index document and any redirect rules. For more information, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).
///
/// This PUT action requires the `S3:PutBucketWebsite` permission. By default, only the bucket owner can configure the website attached to a bucket; however, bucket owners can allow other users to set the website configuration by writing a bucket policy that grants them the `S3:PutBucketWebsite` permission.
///
/// To redirect all website requests sent to the bucket's website endpoint, you add a website configuration with the following elements. Because all requests are sent to another website, you don't need to provide index document name for the bucket.
///
/// *   `WebsiteConfiguration`
///
/// *   `RedirectAllRequestsTo`
///
/// *   `HostName`
///
/// *   `Protocol`
///
///
/// If you want granular control over redirects, you can use the following elements to add routing rules that describe conditions for redirecting requests and information about the redirect destination. In this case, the website configuration must provide an index document for the bucket, because some requests might not be redirected.
///
/// *   `WebsiteConfiguration`
///
/// *   `IndexDocument`
///
/// *   `Suffix`
///
/// *   `ErrorDocument`
///
/// *   `Key`
///
/// *   `RoutingRules`
///
/// *   `RoutingRule`
///
/// *   `Condition`
///
/// *   `HttpErrorCodeReturnedEquals`
///
/// *   `KeyPrefixEquals`
///
/// *   `Redirect`
///
/// *   `Protocol`
///
/// *   `HostName`
///
/// *   `ReplaceKeyPrefixWith`
///
/// *   `ReplaceKeyWith`
///
/// *   `HttpRedirectCode`
///
///
/// Amazon S3 has a limitation of 50 routing rules per website configuration. If you require more than 50 routing rules, you can use object redirect. For more information, see [Configuring an Object Redirect](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html) in the _Amazon S3 User Guide_.
class PutBucketWebsiteOperation extends _i1.HttpOperation<
    _i2.WebsiteConfiguration, _i3.PutBucketWebsiteRequest, _i1.Unit, _i1.Unit> {
  /// Sets the configuration of the website that is specified in the `website` subresource. To configure a bucket as a website, you can add this subresource on the bucket with website configuration information such as the file name of the index document and any redirect rules. For more information, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).
  ///
  /// This PUT action requires the `S3:PutBucketWebsite` permission. By default, only the bucket owner can configure the website attached to a bucket; however, bucket owners can allow other users to set the website configuration by writing a bucket policy that grants them the `S3:PutBucketWebsite` permission.
  ///
  /// To redirect all website requests sent to the bucket's website endpoint, you add a website configuration with the following elements. Because all requests are sent to another website, you don't need to provide index document name for the bucket.
  ///
  /// *   `WebsiteConfiguration`
  ///
  /// *   `RedirectAllRequestsTo`
  ///
  /// *   `HostName`
  ///
  /// *   `Protocol`
  ///
  ///
  /// If you want granular control over redirects, you can use the following elements to add routing rules that describe conditions for redirecting requests and information about the redirect destination. In this case, the website configuration must provide an index document for the bucket, because some requests might not be redirected.
  ///
  /// *   `WebsiteConfiguration`
  ///
  /// *   `IndexDocument`
  ///
  /// *   `Suffix`
  ///
  /// *   `ErrorDocument`
  ///
  /// *   `Key`
  ///
  /// *   `RoutingRules`
  ///
  /// *   `RoutingRule`
  ///
  /// *   `Condition`
  ///
  /// *   `HttpErrorCodeReturnedEquals`
  ///
  /// *   `KeyPrefixEquals`
  ///
  /// *   `Redirect`
  ///
  /// *   `Protocol`
  ///
  /// *   `HostName`
  ///
  /// *   `ReplaceKeyPrefixWith`
  ///
  /// *   `ReplaceKeyWith`
  ///
  /// *   `HttpRedirectCode`
  ///
  ///
  /// Amazon S3 has a limitation of 50 routing rules per website configuration. If you require more than 50 routing rules, you can use object redirect. For more information, see [Configuring an Object Redirect](https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html) in the _Amazon S3 User Guide_.
  PutBucketWebsiteOperation({
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
      _i1.HttpProtocol<_i2.WebsiteConfiguration, _i3.PutBucketWebsiteRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        _i4.WithSigV4(
          region: _region,
          service: _i7.AWSService.s3,
          credentialsProvider: _credentialsProvider,
          serviceConfiguration: _s3ClientConfig.signerConfiguration ??
              _i5.S3ServiceConfiguration(),
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
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
  _i1.HttpRequest buildRequest(_i3.PutBucketWebsiteRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path =
            _s3ClientConfig.usePathStyle ? r'/{Bucket}?website' : r'/?website';
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
    _i7.AWSStreamedHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
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
  _i9.Future<_i1.Unit> run(
    _i3.PutBucketWebsiteRequest input, {
    _i1.HttpClient? client,
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
