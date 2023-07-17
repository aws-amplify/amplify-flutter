// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.operation.http_payload_with_xml_namespace_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_with_xml_namespace_input_output.dart'
    as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/payload_with_xml_namespace.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// The following example serializes a payload that uses an XML namespace.
class HttpPayloadWithXmlNamespaceOperation extends _i1.HttpOperation<
    _i2.PayloadWithXmlNamespace,
    _i3.HttpPayloadWithXmlNamespaceInputOutput,
    _i2.PayloadWithXmlNamespace,
    _i3.HttpPayloadWithXmlNamespaceInputOutput> {
  /// The following example serializes a payload that uses an XML namespace.
  HttpPayloadWithXmlNamespaceOperation({
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
      _i1.HttpProtocol<
          _i2.PayloadWithXmlNamespace,
          _i3.HttpPayloadWithXmlNamespaceInputOutput,
          _i2.PayloadWithXmlNamespace,
          _i3.HttpPayloadWithXmlNamespaceInputOutput>> protocols = [
    _i4.RestXmlProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: false,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i6.endpointResolver.resolve(
    _i6.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(
          _i3.HttpPayloadWithXmlNamespaceInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/HttpPayloadWithXmlNamespace';
      });
  @override
  int successCode([_i3.HttpPayloadWithXmlNamespaceInputOutput? output]) => 200;
  @override
  _i3.HttpPayloadWithXmlNamespaceInputOutput buildOutput(
    _i2.PayloadWithXmlNamespace? payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.HttpPayloadWithXmlNamespaceInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'HttpPayloadWithXmlNamespace';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.HttpPayloadWithXmlNamespaceInputOutput> run(
    _i3.HttpPayloadWithXmlNamespaceInputOutput input, {
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
