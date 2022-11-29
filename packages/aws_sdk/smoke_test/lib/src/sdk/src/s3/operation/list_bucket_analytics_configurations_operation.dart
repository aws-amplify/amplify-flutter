// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.operation.list_bucket_analytics_configurations_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_analytics_configurations_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/list_bucket_analytics_configurations_request.dart'
    as _i2;

/// Lists the analytics configurations for the bucket. You can have up to 1,000 analytics configurations per bucket.
///
/// This action supports list pagination and does not return more than 100 configurations at a time. You should always check the `IsTruncated` element in the response. If there are no more configurations to list, `IsTruncated` is set to false. If there are more configurations to list, `IsTruncated` is set to true, and there will be a value in `NextContinuationToken`. You use the `NextContinuationToken` value to continue the pagination of the list by passing the value in continuation-token in the request to `GET` the next page.
///
/// To use this operation, you must have permissions to perform the `s3:GetAnalyticsConfiguration` action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
///
/// For information about Amazon S3 analytics feature, see [Amazon S3 Analytics – Storage Class Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).
///
/// The following operations are related to `ListBucketAnalyticsConfigurations`:
///
/// *   [GetBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)
///
/// *   [DeleteBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)
///
/// *   [PutBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)
class ListBucketAnalyticsConfigurationsOperation extends _i1.HttpOperation<
    _i2.ListBucketAnalyticsConfigurationsRequestPayload,
    _i2.ListBucketAnalyticsConfigurationsRequest,
    _i3.ListBucketAnalyticsConfigurationsOutput,
    _i3.ListBucketAnalyticsConfigurationsOutput> {
  /// Lists the analytics configurations for the bucket. You can have up to 1,000 analytics configurations per bucket.
  ///
  /// This action supports list pagination and does not return more than 100 configurations at a time. You should always check the `IsTruncated` element in the response. If there are no more configurations to list, `IsTruncated` is set to false. If there are more configurations to list, `IsTruncated` is set to true, and there will be a value in `NextContinuationToken`. You use the `NextContinuationToken` value to continue the pagination of the list by passing the value in continuation-token in the request to `GET` the next page.
  ///
  /// To use this operation, you must have permissions to perform the `s3:GetAnalyticsConfiguration` action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see [Permissions Related to Bucket Subresource Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources) and [Managing Access Permissions to Your Amazon S3 Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).
  ///
  /// For information about Amazon S3 analytics feature, see [Amazon S3 Analytics – Storage Class Analysis](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html).
  ///
  /// The following operations are related to `ListBucketAnalyticsConfigurations`:
  ///
  /// *   [GetBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html)
  ///
  /// *   [DeleteBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html)
  ///
  /// *   [PutBucketAnalyticsConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html)
  ListBucketAnalyticsConfigurationsOperation({
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
          _i2.ListBucketAnalyticsConfigurationsRequestPayload,
          _i2.ListBucketAnalyticsConfigurationsRequest,
          _i3.ListBucketAnalyticsConfigurationsOutput,
          _i3.ListBucketAnalyticsConfigurationsOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(
          _i2.ListBucketAnalyticsConfigurationsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?analytics&x-id=ListBucketAnalyticsConfigurations'
            : r'/?analytics&x-id=ListBucketAnalyticsConfigurations';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.continuationToken != null) {
          b.queryParameters.add(
            'continuation-token',
            input.continuationToken!,
          );
        }
      });
  @override
  int successCode([_i3.ListBucketAnalyticsConfigurationsOutput? output]) => 200;
  @override
  _i3.ListBucketAnalyticsConfigurationsOutput buildOutput(
    _i3.ListBucketAnalyticsConfigurationsOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListBucketAnalyticsConfigurationsOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ListBucketAnalyticsConfigurations';
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
  _i1.SmithyOperation<_i3.ListBucketAnalyticsConfigurationsOutput> run(
    _i2.ListBucketAnalyticsConfigurationsRequest input, {
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
