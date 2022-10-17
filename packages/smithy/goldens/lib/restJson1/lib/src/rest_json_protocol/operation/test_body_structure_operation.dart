// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.operation.test_body_structure_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1_v1/src/rest_json_protocol/model/test_body_structure_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example operation serializes a structure in the HTTP body. It should ensure Content-Type: application/json is used in all requests and that an "empty" body is an empty JSON document ({}).
class TestBodyStructureOperation extends _i1.HttpOperation<
    _i2.TestBodyStructureInputOutputPayload,
    _i2.TestBodyStructureInputOutput,
    _i2.TestBodyStructureInputOutputPayload,
    _i2.TestBodyStructureInputOutput> {
  /// This example operation serializes a structure in the HTTP body. It should ensure Content-Type: application/json is used in all requests and that an "empty" body is an empty JSON document ({}).
  TestBodyStructureOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.TestBodyStructureInputOutputPayload,
          _i2.TestBodyStructureInputOutput,
          _i2.TestBodyStructureInputOutputPayload,
          _i2.TestBodyStructureInputOutput>> protocols = [
    _i3.RestJson1Protocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
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
  _i1.HttpRequest buildRequest(_i2.TestBodyStructureInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/body';
        if (input.testId != null) {
          if (input.testId!.isNotEmpty) {
            b.headers['x-amz-test-id'] = input.testId!;
          }
        }
      });
  @override
  int successCode([_i2.TestBodyStructureInputOutput? output]) => 200;
  @override
  _i2.TestBodyStructureInputOutput buildOutput(
    _i2.TestBodyStructureInputOutputPayload payload,
    _i6.AWSStreamedHttpResponse response,
  ) =>
      _i2.TestBodyStructureInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.TestBodyStructureInputOutput> run(
    _i2.TestBodyStructureInputOutput input, {
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
