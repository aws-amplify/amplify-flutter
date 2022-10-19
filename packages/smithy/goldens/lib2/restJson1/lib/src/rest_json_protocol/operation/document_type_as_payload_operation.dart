// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.operation.document_type_as_payload_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:built_value/json_object.dart' as _i2;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/document_type_as_payload_input_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This example serializes a document as the entire HTTP payload.
class DocumentTypeAsPayloadOperation extends _i1.HttpOperation<
    _i2.JsonObject,
    _i3.DocumentTypeAsPayloadInputOutput,
    _i2.JsonObject,
    _i3.DocumentTypeAsPayloadInputOutput> {
  /// This example serializes a document as the entire HTTP payload.
  DocumentTypeAsPayloadOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonObject, _i3.DocumentTypeAsPayloadInputOutput,
          _i2.JsonObject, _i3.DocumentTypeAsPayloadInputOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i3.DocumentTypeAsPayloadInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/DocumentTypeAsPayload';
      });
  @override
  int successCode([_i3.DocumentTypeAsPayloadInputOutput? output]) => 200;
  @override
  _i3.DocumentTypeAsPayloadInputOutput buildOutput(
    _i2.JsonObject? payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DocumentTypeAsPayloadInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DocumentTypeAsPayload';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DocumentTypeAsPayloadInputOutput> run(
    _i3.DocumentTypeAsPayloadInputOutput input, {
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
