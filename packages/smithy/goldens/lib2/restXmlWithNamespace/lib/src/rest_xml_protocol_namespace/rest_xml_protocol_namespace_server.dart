// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_with_namespace_v2.rest_xml_protocol_namespace.rest_xml_protocol_namespace_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/common/serializers.dart'
    as _i3;
import 'package:rest_xml_with_namespace_v2/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart'
    as _i5;
import 'package:shelf/shelf.dart' as _i6;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestXmlProtocolNamespaceServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
      serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final Router _router = () {
    final service = _RestXmlProtocolNamespaceServer(this);
    final router = Router();
    router.add(
        'PUT', r'/SimpleScalarProperties', service.simpleScalarProperties);
    return router;
  }();

  _i4.Future<_i5.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
      _i5.SimpleScalarPropertiesInputOutput input, _i1.Context context);
  _i4.Future<_i6.Response> call(_i6.Request request) => _router(request);
}

class _RestXmlProtocolNamespaceServer
    extends _i1.HttpServer<RestXmlProtocolNamespaceServerBase> {
  _RestXmlProtocolNamespaceServer(this.service);

  @override
  final RestXmlProtocolNamespaceServerBase service;

  late final _i1.HttpProtocol<
          _i5.SimpleScalarPropertiesInputOutputPayload,
          _i5.SimpleScalarPropertiesInputOutput,
          _i5.SimpleScalarPropertiesInputOutputPayload,
          _i5.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.RestXmlProtocol(
          serializers: _i3.serializers,
          builderFactories: _i3.builderFactories,
          noErrorWrapping: false);

  _i4.Future<_i6.Response> simpleScalarProperties(_i6.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload = (await _simpleScalarPropertiesProtocol.deserialize(
              awsRequest.split(),
              specifiedType:
                  const FullType(_i5.SimpleScalarPropertiesInputOutputPayload))
          as _i5.SimpleScalarPropertiesInputOutputPayload);
      final input = _i5.SimpleScalarPropertiesInputOutput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.simpleScalarProperties(input, context);
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body = _simpleScalarPropertiesProtocol.serialize(output,
          specifiedType: const FullType(_i5.SimpleScalarPropertiesInputOutput,
              [FullType(_i5.SimpleScalarPropertiesInputOutputPayload)]));
      return _i6.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }
}
