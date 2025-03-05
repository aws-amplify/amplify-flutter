// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.operation.http_payload_traits_with_media_type_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_payload_traits_with_media_type_input_output.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
class HttpPayloadTraitsWithMediaTypeOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    HttpPayloadTraitsWithMediaTypeInputOutput,
    _i2.Uint8List,
    HttpPayloadTraitsWithMediaTypeInputOutput> {
  /// This examples uses a `@mediaType` trait on the payload to force a custom content-type to be serialized.
  HttpPayloadTraitsWithMediaTypeOperation({
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
          _i2.Uint8List,
          HttpPayloadTraitsWithMediaTypeInputOutput,
          _i2.Uint8List,
          HttpPayloadTraitsWithMediaTypeInputOutput>> protocols = [
    _i3.RestXmlProtocol(
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
      mediaType: 'text/plain',
      noErrorWrapping: false,
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
  _i1.HttpRequest buildRequest(
          HttpPayloadTraitsWithMediaTypeInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/HttpPayloadTraitsWithMediaType';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
      });

  @override
  int successCode([HttpPayloadTraitsWithMediaTypeInputOutput? output]) => 200;

  @override
  HttpPayloadTraitsWithMediaTypeInputOutput buildOutput(
    _i2.Uint8List? payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadTraitsWithMediaTypeInputOutput.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'HttpPayloadTraitsWithMediaType';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<HttpPayloadTraitsWithMediaTypeInputOutput> run(
    HttpPayloadTraitsWithMediaTypeInputOutput input, {
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
