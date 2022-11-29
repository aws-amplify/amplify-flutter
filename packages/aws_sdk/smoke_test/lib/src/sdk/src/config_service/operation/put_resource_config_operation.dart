// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.operation.put_resource_config_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/max_active_resources_exceeded_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/no_running_configuration_recorder_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/put_resource_config_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i11;

/// Records the configuration state for the resource provided in the request. The configuration state of a resource is represented in Config as Configuration Items. Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing Config APIs.
///
/// The custom resource type must be registered with CloudFormation. This API accepts the configuration item registered with CloudFormation.
///
/// When you call this API, Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource.
///
/// Write-only schema properites are not recorded as part of the published configuration item.
class PutResourceConfigOperation extends _i1.HttpOperation<
    _i2.PutResourceConfigRequest,
    _i2.PutResourceConfigRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Records the configuration state for the resource provided in the request. The configuration state of a resource is represented in Config as Configuration Items. Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing Config APIs.
  ///
  /// The custom resource type must be registered with CloudFormation. This API accepts the configuration item registered with CloudFormation.
  ///
  /// When you call this API, Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource.
  ///
  /// Write-only schema properites are not recorded as part of the published configuration item.
  PutResourceConfigOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PutResourceConfigRequest,
          _i2.PutResourceConfigRequest, _i1.Unit, _i1.Unit>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.PutResourceConfig',
        ),
        _i4.WithSigV4(
          region: _region,
          service: _i6.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
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
  _i1.HttpRequest buildRequest(_i2.PutResourceConfigRequest input) =>
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
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          _i8.InsufficientPermissionsException,
          builder: _i8.InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxActiveResourcesExceededException',
          ),
          _i1.ErrorKind.client,
          _i9.MaxActiveResourcesExceededException,
          builder: _i9.MaxActiveResourcesExceededException.fromResponse,
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
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i11.ValidationException,
          builder: _i11.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutResourceConfig';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.PutResourceConfigRequest input, {
    _i6.AWSHttpClient? client,
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
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}
