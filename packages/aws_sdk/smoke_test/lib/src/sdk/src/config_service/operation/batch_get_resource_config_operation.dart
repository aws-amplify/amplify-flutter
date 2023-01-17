// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.operation.batch_get_resource_config_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_resource_config_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/no_available_configuration_recorder_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i10;

/// Returns the `BaseConfigurationItem` for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.
///
/// *   The API does not return results for deleted resources.
///
/// *   The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.
class BatchGetResourceConfigOperation extends _i1.HttpOperation<
    _i2.BatchGetResourceConfigRequest,
    _i2.BatchGetResourceConfigRequest,
    _i3.BatchGetResourceConfigResponse,
    _i3.BatchGetResourceConfigResponse> {
  /// Returns the `BaseConfigurationItem` for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.
  ///
  /// *   The API does not return results for deleted resources.
  ///
  /// *   The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.
  BatchGetResourceConfigOperation({
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
          _i2.BatchGetResourceConfigRequest,
          _i2.BatchGetResourceConfigRequest,
          _i3.BatchGetResourceConfigResponse,
          _i3.BatchGetResourceConfigResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.BatchGetResourceConfig',
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
  _i1.HttpRequest buildRequest(_i2.BatchGetResourceConfigRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.BatchGetResourceConfigResponse? output]) => 200;
  @override
  _i3.BatchGetResourceConfigResponse buildOutput(
    _i3.BatchGetResourceConfigResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.BatchGetResourceConfigResponse.fromResponse(
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
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i10.ValidationException,
          builder: _i10.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'BatchGetResourceConfig';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.BatchGetResourceConfigResponse> run(
    _i2.BatchGetResourceConfigRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
