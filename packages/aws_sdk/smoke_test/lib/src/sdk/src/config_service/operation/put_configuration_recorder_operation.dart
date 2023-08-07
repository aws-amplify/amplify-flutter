// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_configuration_recorder_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_configuration_recorder_name_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_recording_group_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_role_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_configuration_recorders_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_configuration_recorder_request.dart';

/// Creates a new configuration recorder to record configuration changes for specified resource types.
///
/// You can also use this action to change the `roleARN` or the `recordingGroup` of an existing recorder. For more information, see [**Managing the Configuration Recorder**](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html) in the _Config Developer Guide_.
///
/// You can specify only one configuration recorder for each Amazon Web Services Region for each account.
///
/// If the configuration recorder does not have the `recordingGroup` field specified, the default is to record all supported resource types.
class PutConfigurationRecorderOperation extends _i1.HttpOperation<
    PutConfigurationRecorderRequest,
    PutConfigurationRecorderRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Creates a new configuration recorder to record configuration changes for specified resource types.
  ///
  /// You can also use this action to change the `roleARN` or the `recordingGroup` of an existing recorder. For more information, see [**Managing the Configuration Recorder**](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html) in the _Config Developer Guide_.
  ///
  /// You can specify only one configuration recorder for each Amazon Web Services Region for each account.
  ///
  /// If the configuration recorder does not have the `recordingGroup` field specified, the default is to record all supported resource types.
  PutConfigurationRecorderOperation({
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
      _i1.HttpProtocol<PutConfigurationRecorderRequest,
          PutConfigurationRecorderRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutConfigurationRecorder',
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
  _i1.HttpRequest buildRequest(PutConfigurationRecorderRequest input) =>
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
        _i1.SmithyError<InvalidConfigurationRecorderNameException,
            InvalidConfigurationRecorderNameException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidConfigurationRecorderNameException',
          ),
          _i1.ErrorKind.client,
          InvalidConfigurationRecorderNameException,
          builder: InvalidConfigurationRecorderNameException.fromResponse,
        ),
        _i1.SmithyError<InvalidRecordingGroupException,
            InvalidRecordingGroupException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidRecordingGroupException',
          ),
          _i1.ErrorKind.client,
          InvalidRecordingGroupException,
          builder: InvalidRecordingGroupException.fromResponse,
        ),
        _i1.SmithyError<InvalidRoleException, InvalidRoleException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidRoleException',
          ),
          _i1.ErrorKind.client,
          InvalidRoleException,
          builder: InvalidRoleException.fromResponse,
        ),
        _i1.SmithyError<MaxNumberOfConfigurationRecordersExceededException,
            MaxNumberOfConfigurationRecordersExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfConfigurationRecordersExceededException',
          ),
          _i1.ErrorKind.client,
          MaxNumberOfConfigurationRecordersExceededException,
          builder:
              MaxNumberOfConfigurationRecordersExceededException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutConfigurationRecorder';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    PutConfigurationRecorderRequest input, {
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
