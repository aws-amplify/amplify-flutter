// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.put_delivery_channel_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_delivery_policy_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_delivery_channel_name_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_key_prefix_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_kms_key_arn_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_sns_topic_arn_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_delivery_channels_exceeded_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_bucket_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/config_service/model/put_delivery_channel_request.dart'
    as _i2;

/// Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.
///
/// Before you can create a delivery channel, you must create a configuration recorder.
///
/// You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.
///
/// You can have only one delivery channel per region in your account.
class PutDeliveryChannelOperation extends _i1.HttpOperation<
    _i2.PutDeliveryChannelRequest,
    _i2.PutDeliveryChannelRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.
  ///
  /// Before you can create a delivery channel, you must create a configuration recorder.
  ///
  /// You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.
  ///
  /// You can have only one delivery channel per region in your account.
  PutDeliveryChannelOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PutDeliveryChannelRequest,
          _i2.PutDeliveryChannelRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.PutDeliveryChannel',
        ),
        _i4.WithSigV4(
          region: _region,
          service: _i6.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.PutDeliveryChannelRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
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
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientDeliveryPolicyException',
          ),
          _i1.ErrorKind.client,
          _i8.InsufficientDeliveryPolicyException,
          builder: _i8.InsufficientDeliveryPolicyException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidDeliveryChannelNameException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidDeliveryChannelNameException,
          builder: _i9.InvalidDeliveryChannelNameException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidS3KeyPrefixException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidS3KeyPrefixException,
          builder: _i10.InvalidS3KeyPrefixException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidS3KmsKeyArnException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidS3KmsKeyArnException,
          builder: _i11.InvalidS3KmsKeyArnException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidSNSTopicARNException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidSnsTopicArnException,
          builder: _i12.InvalidSnsTopicArnException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfDeliveryChannelsExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.MaxNumberOfDeliveryChannelsExceededException,
          builder:
              _i13.MaxNumberOfDeliveryChannelsExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          _i14.NoAvailableConfigurationRecorderException,
          builder: _i14.NoAvailableConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchBucketException',
          ),
          _i1.ErrorKind.client,
          _i15.NoSuchBucketException,
          builder: _i15.NoSuchBucketException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutDeliveryChannel';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.PutDeliveryChannelRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
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
