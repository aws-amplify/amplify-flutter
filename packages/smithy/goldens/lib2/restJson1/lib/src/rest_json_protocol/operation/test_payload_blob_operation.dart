// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.operation.test_payload_blob_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_blob_input_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example operation serializes a payload targeting a blob. The Blob shape is not structured content and we cannot make assumptions about what data will be sent. This test ensures only a generic "Content-Type: application/octet-stream" header is used, and that we are not treating an empty body as an empty JSON document.
class TestPayloadBlobOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.TestPayloadBlobInputOutput,
    _i2.Uint8List,
    _i3.TestPayloadBlobInputOutput> {
  /// This example operation serializes a payload targeting a blob. The Blob shape is not structured content and we cannot make assumptions about what data will be sent. This test ensures only a generic "Content-Type: application/octet-stream" header is used, and that we are not treating an empty body as an empty JSON document.
  TestPayloadBlobOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, _i3.TestPayloadBlobInputOutput,
          _i2.Uint8List, _i3.TestPayloadBlobInputOutput>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.TestPayloadBlobInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/blob_payload';
        if (input.contentType != null) {
          if (input.contentType!.isNotEmpty) {
            b.headers['Content-Type'] = input.contentType!;
          }
        }
      });
  @override
  int successCode([_i3.TestPayloadBlobInputOutput? output]) => 200;
  @override
  _i3.TestPayloadBlobInputOutput buildOutput(
    _i2.Uint8List? payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.TestPayloadBlobInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'TestPayloadBlob';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.TestPayloadBlobInputOutput> run(
    _i3.TestPayloadBlobInputOutput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
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
