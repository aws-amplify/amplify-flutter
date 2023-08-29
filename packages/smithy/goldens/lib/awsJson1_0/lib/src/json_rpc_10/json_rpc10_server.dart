// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v1.json_rpc_10.json_rpc10_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_json1_0_v1/src/json_rpc_10/common/serializers.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_error.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/empty_input_and_empty_output_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/empty_input_and_empty_output_output.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/foo_error.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_output.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/invalid_greeting.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_output.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/no_input_and_output_output.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/put_with_content_encoding_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_input.dart';
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_output.dart';
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class JsonRpc10ServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final Router _router = () {
    final service = _JsonRpc10Server(this);
    final router = Router();
    router.add(
      'POST',
      '/',
      _i1.RpcRouter(
        'X-Amz-Target',
        {
          'JsonRpc10.EmptyInputAndEmptyOutput':
              service.emptyInputAndEmptyOutput,
          'JsonRpc10.EndpointOperation': service.endpointOperation,
          'JsonRpc10.EndpointWithHostLabelOperation':
              service.endpointWithHostLabelOperation,
          'JsonRpc10.GreetingWithErrors': service.greetingWithErrors,
          'JsonRpc10.HostWithPathOperation': service.hostWithPathOperation,
          'JsonRpc10.JsonUnions': service.jsonUnions,
          'JsonRpc10.NoInputAndNoOutput': service.noInputAndNoOutput,
          'JsonRpc10.NoInputAndOutput': service.noInputAndOutput,
          'JsonRpc10.PutWithContentEncoding': service.putWithContentEncoding,
          'JsonRpc10.SimpleScalarProperties': service.simpleScalarProperties,
        },
      ),
    );
    return router;
  }();

  _i3.Future<EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointWithHostLabelOperation(
    EndpointWithHostLabelOperationInput input,
    _i1.Context context,
  );
  _i3.Future<GreetingWithErrorsOutput> greetingWithErrors(
    GreetingWithErrorsInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<JsonUnionsOutput> jsonUnions(
    JsonUnionsInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> putWithContentEncoding(
    PutWithContentEncodingInput input,
    _i1.Context context,
  );
  _i3.Future<SimpleScalarPropertiesOutput> simpleScalarProperties(
    SimpleScalarPropertiesInput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _JsonRpc10Server extends _i1.HttpServer<JsonRpc10ServerBase> {
  _JsonRpc10Server(this.service);

  @override
  final JsonRpc10ServerBase service;

  late final _i1.HttpProtocol<
          EmptyInputAndEmptyOutputInput,
          EmptyInputAndEmptyOutputInput,
          EmptyInputAndEmptyOutputOutput,
          EmptyInputAndEmptyOutputOutput> _emptyInputAndEmptyOutputProtocol =
      _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<EndpointWithHostLabelOperationInput,
          EndpointWithHostLabelOperationInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelOperationProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<GreetingWithErrorsInput, GreetingWithErrorsInput,
          GreetingWithErrorsOutput, GreetingWithErrorsOutput>
      _greetingWithErrorsProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _hostWithPathOperationProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonUnionsInput,
      JsonUnionsInput,
      JsonUnionsOutput,
      JsonUnionsOutput> _jsonUnionsProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, NoInputAndOutputOutput,
          NoInputAndOutputOutput> _noInputAndOutputProtocol =
      _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      PutWithContentEncodingInput,
      PutWithContentEncodingInput,
      _i1.Unit,
      _i1.Unit> _putWithContentEncodingProtocol = _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          SimpleScalarPropertiesInput,
          SimpleScalarPropertiesInput,
          SimpleScalarPropertiesOutput,
          SimpleScalarPropertiesOutput> _simpleScalarPropertiesProtocol =
      _i2.AwsJson1_0Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> emptyInputAndEmptyOutput(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload =
          (await _emptyInputAndEmptyOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(EmptyInputAndEmptyOutputInput),
      ) as EmptyInputAndEmptyOutputInput);
      final input = EmptyInputAndEmptyOutputInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.emptyInputAndEmptyOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _emptyInputAndEmptyOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          EmptyInputAndEmptyOutputOutput,
          [FullType(EmptyInputAndEmptyOutputOutput)],
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

  _i3.Future<_i4.Response> endpointOperation(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointOperationProtocol.contentType;
    try {
      final payload =
          (await _endpointOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.endpointOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _endpointOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
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

  _i3.Future<_i4.Response> endpointWithHostLabelOperation(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(EndpointWithHostLabelOperationInput),
      ) as EndpointWithHostLabelOperationInput);
      final input = EndpointWithHostLabelOperationInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.endpointWithHostLabelOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _endpointWithHostLabelOperationProtocol.wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
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

  _i3.Future<_i4.Response> greetingWithErrors(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _greetingWithErrorsProtocol.contentType;
    try {
      final payload =
          (await _greetingWithErrorsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(GreetingWithErrorsInput),
      ) as GreetingWithErrorsInput);
      final input = GreetingWithErrorsInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.greetingWithErrors(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _greetingWithErrorsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          GreetingWithErrorsOutput,
          [FullType(GreetingWithErrorsOutput)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ComplexError catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ComplexError,
          [FullType(ComplexError)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on FooError catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          FooError,
          [FullType(FooError)],
        ),
      );
      const statusCode = 500;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on InvalidGreeting catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          InvalidGreeting,
          [FullType(InvalidGreeting)],
        ),
      );
      const statusCode = 400;
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

  _i3.Future<_i4.Response> hostWithPathOperation(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _hostWithPathOperationProtocol.contentType;
    try {
      final payload =
          (await _hostWithPathOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.hostWithPathOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _hostWithPathOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
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

  _i3.Future<_i4.Response> jsonUnions(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonUnionsProtocol.contentType;
    try {
      final payload = (await _jsonUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonUnionsInput),
      ) as JsonUnionsInput);
      final input = JsonUnionsInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonUnions(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonUnionsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          JsonUnionsOutput,
          [FullType(JsonUnionsOutput)],
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

  _i3.Future<_i4.Response> noInputAndNoOutput(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _noInputAndNoOutputProtocol.contentType;
    try {
      final payload =
          (await _noInputAndNoOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.noInputAndNoOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _noInputAndNoOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
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

  _i3.Future<_i4.Response> noInputAndOutput(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _noInputAndOutputProtocol.contentType;
    try {
      final payload =
          (await _noInputAndOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.noInputAndOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _noInputAndOutputProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          NoInputAndOutputOutput,
          [FullType(NoInputAndOutputOutput)],
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

  _i3.Future<_i4.Response> putWithContentEncoding(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _putWithContentEncodingProtocol.contentType;
    try {
      final payload =
          (await _putWithContentEncodingProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(PutWithContentEncodingInput),
      ) as PutWithContentEncodingInput);
      final input = PutWithContentEncodingInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.putWithContentEncoding(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _putWithContentEncodingProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
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

  _i3.Future<_i4.Response> simpleScalarProperties(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(SimpleScalarPropertiesInput),
      ) as SimpleScalarPropertiesInput);
      final input = SimpleScalarPropertiesInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.simpleScalarProperties(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _simpleScalarPropertiesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          SimpleScalarPropertiesOutput,
          [FullType(SimpleScalarPropertiesOutput)],
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
