// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.operation.get_bucket_notification_configuration_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_bucket_notification_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration.dart';

/// Returns the notification configuration of a bucket.
///
/// If notifications are not enabled on the bucket, the action returns an empty `NotificationConfiguration` element.
///
/// By default, you must be the bucket owner to read the notification configuration of a bucket. However, the bucket owner can use a bucket policy to grant permission to other users to read this configuration with the `s3:GetBucketNotification` permission.
///
/// To use this API operation against an access point, provide the alias of the access point in place of the bucket name.
///
/// To use this API operation against an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name. If the Object Lambda access point alias in a request is not valid, the error code `InvalidAccessPointAliasError` is returned. For more information about `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).
///
/// For more information about setting and reading the notification configuration on a bucket, see [Setting Up Notification of Bucket Events](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html). For more information about bucket policies, see [Using Bucket Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).
///
/// The following action is related to `GetBucketNotification`:
///
/// *   [PutBucketNotification](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotification.html)
class GetBucketNotificationConfigurationOperation extends _i1.HttpOperation<
    GetBucketNotificationConfigurationRequestPayload,
    GetBucketNotificationConfigurationRequest,
    NotificationConfiguration,
    NotificationConfiguration> {
  /// Returns the notification configuration of a bucket.
  ///
  /// If notifications are not enabled on the bucket, the action returns an empty `NotificationConfiguration` element.
  ///
  /// By default, you must be the bucket owner to read the notification configuration of a bucket. However, the bucket owner can use a bucket policy to grant permission to other users to read this configuration with the `s3:GetBucketNotification` permission.
  ///
  /// To use this API operation against an access point, provide the alias of the access point in place of the bucket name.
  ///
  /// To use this API operation against an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name. If the Object Lambda access point alias in a request is not valid, the error code `InvalidAccessPointAliasError` is returned. For more information about `InvalidAccessPointAliasError`, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList).
  ///
  /// For more information about setting and reading the notification configuration on a bucket, see [Setting Up Notification of Bucket Events](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html). For more information about bucket policies, see [Using Bucket Policies](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html).
  ///
  /// The following action is related to `GetBucketNotification`:
  ///
  /// *   [PutBucketNotification](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotification.html)
  GetBucketNotificationConfigurationOperation({
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
          GetBucketNotificationConfigurationRequestPayload,
          GetBucketNotificationConfigurationRequest,
          NotificationConfiguration,
          NotificationConfiguration>> protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
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
  _i1.HttpRequest buildRequest(
          GetBucketNotificationConfigurationRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}?notification'
            : r'/?notification';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
      });
  @override
  int successCode([NotificationConfiguration? output]) => 200;
  @override
  NotificationConfiguration buildOutput(
    NotificationConfiguration payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      NotificationConfiguration.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetBucketNotificationConfiguration';
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
  _i1.SmithyOperation<NotificationConfiguration> run(
    GetBucketNotificationConfigurationRequest input, {
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
