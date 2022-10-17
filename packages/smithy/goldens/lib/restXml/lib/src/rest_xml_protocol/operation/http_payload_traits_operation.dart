// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.operation.http_payload_traits_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_payload_traits_input_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples serializes a blob shape in the payload. In this example, no XML document is synthesized because the payload is not a structure or a union type.
class HttpPayloadTraitsOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.HttpPayloadTraitsInputOutput,
    _i2.Uint8List,
    _i3.HttpPayloadTraitsInputOutput> {
  /// This examples serializes a blob shape in the payload. In this example, no XML document is synthesized because the payload is not a structure or a union type.
  HttpPayloadTraitsOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, _i3.HttpPayloadTraitsInputOutput,
          _i2.Uint8List, _i3.HttpPayloadTraitsInputOutput>> protocols = [
    _i4.RestXmlProtocol(
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
      noErrorWrapping: false,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.HttpPayloadTraitsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/HttpPayloadTraits';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
      });
  @override
  int successCode([_i3.HttpPayloadTraitsInputOutput? output]) => 200;
  @override
  _i3.HttpPayloadTraitsInputOutput buildOutput(
    _i2.Uint8List? payload,
    _i7.AWSStreamedHttpResponse response,
  ) =>
      _i3.HttpPayloadTraitsInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.HttpPayloadTraitsInputOutput> run(
    _i3.HttpPayloadTraitsInputOutput input, {
    _i1.HttpClient? client,
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
