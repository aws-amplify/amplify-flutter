// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.operation.test_payload_blob_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/test_payload_blob_input_output.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example operation serializes a payload targeting a blob. The Blob shape is not structured content and we cannot make assumptions about what data will be sent. This test ensures only a generic "Content-Type: application/octet-stream" header is used, and that we are not treating an empty body as an empty JSON document.
class TestPayloadBlobOperation extends _i1.HttpOperation<_i2.Uint8List,
    TestPayloadBlobInputOutput, _i2.Uint8List, TestPayloadBlobInputOutput> {
  /// This example operation serializes a payload targeting a blob. The Blob shape is not structured content and we cannot make assumptions about what data will be sent. This test ensures only a generic "Content-Type: application/octet-stream" header is used, and that we are not treating an empty body as an empty JSON document.
  TestPayloadBlobOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, TestPayloadBlobInputOutput, _i2.Uint8List,
          TestPayloadBlobInputOutput>> protocols = [
    _i3.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
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

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(TestPayloadBlobInputOutput input) =>
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
  int successCode([TestPayloadBlobInputOutput? output]) => 200;
  @override
  TestPayloadBlobInputOutput buildOutput(
    _i2.Uint8List? payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      TestPayloadBlobInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'TestPayloadBlob';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<TestPayloadBlobInputOutput> run(
    TestPayloadBlobInputOutput input, {
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
