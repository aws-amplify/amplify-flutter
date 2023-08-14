// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_delivery_channel_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_delivery_policy_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_delivery_channel_name_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_key_prefix_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_s3_kms_key_arn_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_sns_topic_arn_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_delivery_channels_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_bucket_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_delivery_channel_request.dart';

/// Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.
///
/// Before you can create a delivery channel, you must create a configuration recorder.
///
/// You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.
///
/// You can have only one delivery channel per region in your account.
class PutDeliveryChannelOperation extends _i1.HttpOperation<
    PutDeliveryChannelRequest, PutDeliveryChannelRequest, _i1.Unit, _i1.Unit> {
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
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<PutDeliveryChannelRequest, PutDeliveryChannelRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutDeliveryChannel',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(PutDeliveryChannelRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InsufficientDeliveryPolicyException,
            InsufficientDeliveryPolicyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientDeliveryPolicyException',
          ),
          _i1.ErrorKind.client,
          InsufficientDeliveryPolicyException,
          builder: InsufficientDeliveryPolicyException.fromResponse,
        ),
        _i1.SmithyError<InvalidDeliveryChannelNameException,
            InvalidDeliveryChannelNameException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidDeliveryChannelNameException',
          ),
          _i1.ErrorKind.client,
          InvalidDeliveryChannelNameException,
          builder: InvalidDeliveryChannelNameException.fromResponse,
        ),
        _i1.SmithyError<InvalidS3KeyPrefixException,
            InvalidS3KeyPrefixException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidS3KeyPrefixException',
          ),
          _i1.ErrorKind.client,
          InvalidS3KeyPrefixException,
          builder: InvalidS3KeyPrefixException.fromResponse,
        ),
        _i1.SmithyError<InvalidS3KmsKeyArnException,
            InvalidS3KmsKeyArnException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidS3KmsKeyArnException',
          ),
          _i1.ErrorKind.client,
          InvalidS3KmsKeyArnException,
          builder: InvalidS3KmsKeyArnException.fromResponse,
        ),
        _i1.SmithyError<InvalidSnsTopicArnException,
            InvalidSnsTopicArnException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidSNSTopicARNException',
          ),
          _i1.ErrorKind.client,
          InvalidSnsTopicArnException,
          builder: InvalidSnsTopicArnException.fromResponse,
        ),
        _i1.SmithyError<MaxNumberOfDeliveryChannelsExceededException,
            MaxNumberOfDeliveryChannelsExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfDeliveryChannelsExceededException',
          ),
          _i1.ErrorKind.client,
          MaxNumberOfDeliveryChannelsExceededException,
          builder: MaxNumberOfDeliveryChannelsExceededException.fromResponse,
        ),
        _i1.SmithyError<NoAvailableConfigurationRecorderException,
            NoAvailableConfigurationRecorderException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          NoAvailableConfigurationRecorderException,
          builder: NoAvailableConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError<NoSuchBucketException, NoSuchBucketException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchBucketException',
          ),
          _i1.ErrorKind.client,
          NoSuchBucketException,
          builder: NoSuchBucketException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutDeliveryChannel';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    PutDeliveryChannelRequest input, {
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
