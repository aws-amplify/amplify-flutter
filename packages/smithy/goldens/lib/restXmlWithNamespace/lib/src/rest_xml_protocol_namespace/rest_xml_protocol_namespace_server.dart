// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_with_namespace_v1.rest_xml_protocol_namespace.rest_xml_protocol_namespace_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/common/serializers.dart';
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestXmlProtocolNamespaceServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final Router _router = () {
    final service = _RestXmlProtocolNamespaceServer(this);
    final router = Router();
    router.add(
      'PUT',
      r'/SimpleScalarProperties',
      service.simpleScalarProperties,
    );
    return router;
  }();

  _i3.Future<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _RestXmlProtocolNamespaceServer
    extends _i1.HttpServer<RestXmlProtocolNamespaceServerBase> {
  _RestXmlProtocolNamespaceServer(this.service);

  @override
  final RestXmlProtocolNamespaceServerBase service;

  late final _i1.HttpProtocol<
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutputPayload,
          SimpleScalarPropertiesInputOutput> _simpleScalarPropertiesProtocol =
      _i2.RestXmlProtocol(
    serializers: serializers,
    builderFactories: builderFactories,
    noErrorWrapping: false,
  );

  _i3.Future<_i4.Response> simpleScalarProperties(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(SimpleScalarPropertiesInputOutputPayload),
      ) as SimpleScalarPropertiesInputOutputPayload);
      final input = SimpleScalarPropertiesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.simpleScalarProperties(
        input,
        context,
      );
      if (output.foo != null) {
        context.response.headers['X-Foo'] = output.foo!;
      }
      const statusCode = 200;
      final body =
          await _simpleScalarPropertiesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          SimpleScalarPropertiesInputOutput,
          [FullType(SimpleScalarPropertiesInputOutputPayload)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on Object catch (e, st) {
      return service.handleUncaughtError(
        e,
        st,
      );
    }
  }
}
