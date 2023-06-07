// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.operation.null_and_empty_headers_server_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Null and empty headers are not sent over the wire.
class NullAndEmptyHeadersServerOperation extends _i1.HttpOperation<
    _i2.NullAndEmptyHeadersIoPayload,
    _i2.NullAndEmptyHeadersIo,
    _i2.NullAndEmptyHeadersIoPayload,
    _i2.NullAndEmptyHeadersIo> {
  /// Null and empty headers are not sent over the wire.
  NullAndEmptyHeadersServerOperation({
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
          _i2.NullAndEmptyHeadersIoPayload,
          _i2.NullAndEmptyHeadersIo,
          _i2.NullAndEmptyHeadersIoPayload,
          _i2.NullAndEmptyHeadersIo>> protocols = [
    _i3.RestXmlProtocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: false,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.NullAndEmptyHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/NullAndEmptyHeadersServer';
        if (input.a != null) {
          if (input.a!.isNotEmpty) {
            b.headers['X-A'] = input.a!;
          }
        }
        if (input.b != null) {
          if (input.b!.isNotEmpty) {
            b.headers['X-B'] = input.b!;
          }
        }
        if (input.c != null) {
          if (input.c!.isNotEmpty) {
            b.headers['X-C'] =
                input.c!.map((el) => _i1.sanitizeHeader(el)).join(', ');
          }
        }
      });
  @override
  int successCode([_i2.NullAndEmptyHeadersIo? output]) => 200;
  @override
  _i2.NullAndEmptyHeadersIo buildOutput(
    _i2.NullAndEmptyHeadersIoPayload payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      _i2.NullAndEmptyHeadersIo.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'NullAndEmptyHeadersServer';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i2.NullAndEmptyHeadersIo> run(
    _i2.NullAndEmptyHeadersIo input, {
    _i6.AWSHttpClient? client,
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
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
