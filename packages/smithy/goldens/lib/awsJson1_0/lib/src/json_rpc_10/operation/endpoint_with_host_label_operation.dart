// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_0_v1.json_rpc_10.operation.endpoint_with_host_label_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_0_v1/src/json_rpc_10/common/endpoint_resolver.dart'
    as _i5;
import 'package:aws_json1_0_v1/src/json_rpc_10/common/serializers.dart' as _i4;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class EndpointWithHostLabelOperation extends _i1.HttpOperation<
    _i2.EndpointWithHostLabelOperationInput,
    _i2.EndpointWithHostLabelOperationInput,
    _i1.Unit,
    _i1.Unit> {
  EndpointWithHostLabelOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.EndpointWithHostLabelOperationInput,
          _i2.EndpointWithHostLabelOperationInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.AwsJson1_0Protocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'JsonRpc10.EndpointWithHostLabelOperation',
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i3.WithSdkInvocationId(),
        const _i3.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.EndpointWithHostLabelOperationInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
        b.hostPrefix = 'foo.{label}.';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSStreamedHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(
    _i2.EndpointWithHostLabelOperationInput input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i7.runZoned(
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
