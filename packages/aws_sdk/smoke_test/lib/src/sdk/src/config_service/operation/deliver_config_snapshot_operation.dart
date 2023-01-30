// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.operation.deliver_config_snapshot_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/deliver_config_snapshot_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/no_running_configuration_recorder_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_delivery_channel_exception.dart'
    as _i11;

/// Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, Config sends the following notifications using an Amazon SNS topic that you have specified.
///
/// *   Notification of the start of the delivery.
///
/// *   Notification of the completion of the delivery, if the delivery was successfully completed.
///
/// *   Notification of delivery failure, if the delivery failed.
class DeliverConfigSnapshotOperation extends _i1.HttpOperation<
    _i2.DeliverConfigSnapshotRequest,
    _i2.DeliverConfigSnapshotRequest,
    _i3.DeliverConfigSnapshotResponse,
    _i3.DeliverConfigSnapshotResponse> {
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
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
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
          _i2.DeliverConfigSnapshotRequest,
          _i2.DeliverConfigSnapshotRequest,
          _i3.DeliverConfigSnapshotResponse,
          _i3.DeliverConfigSnapshotResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DeliverConfigSnapshot',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.DeliverConfigSnapshotRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DeliverConfigSnapshotResponse? output]) => 200;
  @override
  _i3.DeliverConfigSnapshotResponse buildOutput(
    _i3.DeliverConfigSnapshotResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DeliverConfigSnapshotResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoAvailableConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          _i9.NoAvailableConfigurationRecorderException,
          builder: _i9.NoAvailableConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoRunningConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          _i10.NoRunningConfigurationRecorderException,
          builder: _i10.NoRunningConfigurationRecorderException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchDeliveryChannelException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchDeliveryChannelException,
          builder: _i11.NoSuchDeliveryChannelException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DeliverConfigSnapshot';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DeliverConfigSnapshotResponse> run(
    _i2.DeliverConfigSnapshotRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
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
