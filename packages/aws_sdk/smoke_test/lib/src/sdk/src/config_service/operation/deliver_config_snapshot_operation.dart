// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.deliver_config_snapshot_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_running_configuration_recorder_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_delivery_channel_exception.dart';

/// Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, Config sends the following notifications using an Amazon SNS topic that you have specified.
///
/// *   Notification of the start of the delivery.
///
/// *   Notification of the completion of the delivery, if the delivery was successfully completed.
///
/// *   Notification of delivery failure, if the delivery failed.
class DeliverConfigSnapshotOperation extends _i1.HttpOperation<
    DeliverConfigSnapshotRequest,
    DeliverConfigSnapshotRequest,
    DeliverConfigSnapshotResponse,
    DeliverConfigSnapshotResponse> {
  /// Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, Config sends the following notifications using an Amazon SNS topic that you have specified.
  ///
  /// *   Notification of the start of the delivery.
  ///
  /// *   Notification of the completion of the delivery, if the delivery was successfully completed.
  ///
  /// *   Notification of delivery failure, if the delivery failed.
  DeliverConfigSnapshotOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          DeliverConfigSnapshotRequest,
          DeliverConfigSnapshotRequest,
          DeliverConfigSnapshotResponse,
          DeliverConfigSnapshotResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DeliverConfigSnapshot',
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
  _i1.HttpRequest buildRequest(DeliverConfigSnapshotRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DeliverConfigSnapshotResponse? output]) => 200;
  @override
  DeliverConfigSnapshotResponse buildOutput(
    DeliverConfigSnapshotResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      DeliverConfigSnapshotResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
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
        _i1.SmithyError<NoRunningConfigurationRecorderException,
            NoRunningConfigurationRecorderException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoRunningConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          NoRunningConfigurationRecorderException,
          builder: NoRunningConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError<NoSuchDeliveryChannelException,
            NoSuchDeliveryChannelException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchDeliveryChannelException',
          ),
          _i1.ErrorKind.client,
          NoSuchDeliveryChannelException,
          builder: NoSuchDeliveryChannelException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DeliverConfigSnapshot';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DeliverConfigSnapshotResponse> run(
    DeliverConfigSnapshotRequest input, {
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
