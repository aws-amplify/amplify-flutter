// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v1.json_rpc_10.json_rpc10_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_json1_0_v1/src/json_rpc_10/common/serializers.dart' as _i3;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_error.dart'
    as _i17;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/empty_input_and_empty_output_input.dart'
    as _i6;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/empty_input_and_empty_output_output.dart'
    as _i5;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/endpoint_with_host_label_operation_input.dart'
    as _i7;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/foo_error.dart' as _i18;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i9;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i8;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/invalid_greeting.dart'
    as _i19;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_input.dart'
    as _i11;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/json_unions_output.dart'
    as _i10;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/no_input_and_output_output.dart'
    as _i12;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/put_with_content_encoding_input.dart'
    as _i13;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_input.dart'
    as _i15;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/simple_scalar_properties_output.dart'
    as _i14;
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i16;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class JsonRpc10ServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
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

  _i4.Future<_i5.EmptyInputAndEmptyOutputOutput> emptyInputAndEmptyOutput(
    _i6.EmptyInputAndEmptyOutputInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i7.EndpointWithHostLabelOperationInput input,
    _i1.Context context,
  );
  _i4.Future<_i8.GreetingWithErrorsOutput> greetingWithErrors(
    _i9.GreetingWithErrorsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i10.JsonUnionsOutput> jsonUnions(
    _i11.JsonUnionsInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> noInputAndNoOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i12.NoInputAndOutputOutput> noInputAndOutput(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> putWithContentEncoding(
    _i13.PutWithContentEncodingInput input,
    _i1.Context context,
  );
  _i4.Future<_i14.SimpleScalarPropertiesOutput> simpleScalarProperties(
    _i15.SimpleScalarPropertiesInput input,
    _i1.Context context,
  );
  _i4.Future<_i16.Response> call(_i16.Request request) => _router(request);
}

class _JsonRpc10Server extends _i1.HttpServer<JsonRpc10ServerBase> {
  _JsonRpc10Server(this.service);

  @override
  final JsonRpc10ServerBase service;

  late final _i1.HttpProtocol<
          _i6.EmptyInputAndEmptyOutputInput,
          _i6.EmptyInputAndEmptyOutputInput,
          _i5.EmptyInputAndEmptyOutputOutput,
          _i5.EmptyInputAndEmptyOutputOutput>
      _emptyInputAndEmptyOutputProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i7.EndpointWithHostLabelOperationInput,
          _i7.EndpointWithHostLabelOperationInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelOperationProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i9.GreetingWithErrorsInput,
          _i9.GreetingWithErrorsInput,
          _i8.GreetingWithErrorsOutput,
          _i8.GreetingWithErrorsOutput> _greetingWithErrorsProtocol =
      _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _hostWithPathOperationProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i11.JsonUnionsInput,
      _i11.JsonUnionsInput,
      _i10.JsonUnionsOutput,
      _i10.JsonUnionsOutput> _jsonUnionsProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _noInputAndNoOutputProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i12.NoInputAndOutputOutput,
          _i12.NoInputAndOutputOutput> _noInputAndOutputProtocol =
      _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i13.PutWithContentEncodingInput,
      _i13.PutWithContentEncodingInput,
      _i1.Unit,
      _i1.Unit> _putWithContentEncodingProtocol = _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i15.SimpleScalarPropertiesInput,
          _i15.SimpleScalarPropertiesInput,
          _i14.SimpleScalarPropertiesOutput,
          _i14.SimpleScalarPropertiesOutput> _simpleScalarPropertiesProtocol =
      _i2.AwsJson1_0Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i16.Response> emptyInputAndEmptyOutput(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyInputAndEmptyOutputProtocol.contentType;
    try {
      final payload =
          (await _emptyInputAndEmptyOutputProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i6.EmptyInputAndEmptyOutputInput),
      ) as _i6.EmptyInputAndEmptyOutputInput);
      final input = _i6.EmptyInputAndEmptyOutputInput.fromRequest(
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
          _i5.EmptyInputAndEmptyOutputOutput,
          [FullType(_i5.EmptyInputAndEmptyOutputOutput)],
        ),
      );
      return _i16.Response(
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

  _i4.Future<_i16.Response> endpointOperation(_i16.Request request) async {
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
      return _i16.Response(
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

  _i4.Future<_i16.Response> endpointWithHostLabelOperation(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i7.EndpointWithHostLabelOperationInput),
      ) as _i7.EndpointWithHostLabelOperationInput);
      final input = _i7.EndpointWithHostLabelOperationInput.fromRequest(
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
      return _i16.Response(
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

  _i4.Future<_i16.Response> greetingWithErrors(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _greetingWithErrorsProtocol.contentType;
    try {
      final payload =
          (await _greetingWithErrorsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i9.GreetingWithErrorsInput),
      ) as _i9.GreetingWithErrorsInput);
      final input = _i9.GreetingWithErrorsInput.fromRequest(
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
          _i8.GreetingWithErrorsOutput,
          [FullType(_i8.GreetingWithErrorsOutput)],
        ),
      );
      return _i16.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i17.ComplexError catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i17.ComplexError,
          [FullType(_i17.ComplexError)],
        ),
      );
      const statusCode = 400;
      return _i16.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i18.FooError catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i18.FooError,
          [FullType(_i18.FooError)],
        ),
      );
      const statusCode = 500;
      return _i16.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i19.InvalidGreeting catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i19.InvalidGreeting,
          [FullType(_i19.InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i16.Response(
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

  _i4.Future<_i16.Response> hostWithPathOperation(_i16.Request request) async {
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
      return _i16.Response(
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

  _i4.Future<_i16.Response> jsonUnions(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonUnionsProtocol.contentType;
    try {
      final payload = (await _jsonUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i11.JsonUnionsInput),
      ) as _i11.JsonUnionsInput);
      final input = _i11.JsonUnionsInput.fromRequest(
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
          _i10.JsonUnionsOutput,
          [FullType(_i10.JsonUnionsOutput)],
        ),
      );
      return _i16.Response(
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

  _i4.Future<_i16.Response> noInputAndNoOutput(_i16.Request request) async {
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
      return _i16.Response(
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

  _i4.Future<_i16.Response> noInputAndOutput(_i16.Request request) async {
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
          _i12.NoInputAndOutputOutput,
          [FullType(_i12.NoInputAndOutputOutput)],
        ),
      );
      return _i16.Response(
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

  _i4.Future<_i16.Response> putWithContentEncoding(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _putWithContentEncodingProtocol.contentType;
    try {
      final payload =
          (await _putWithContentEncodingProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i13.PutWithContentEncodingInput),
      ) as _i13.PutWithContentEncodingInput);
      final input = _i13.PutWithContentEncodingInput.fromRequest(
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
      return _i16.Response(
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

  _i4.Future<_i16.Response> simpleScalarProperties(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i15.SimpleScalarPropertiesInput),
      ) as _i15.SimpleScalarPropertiesInput);
      final input = _i15.SimpleScalarPropertiesInput.fromRequest(
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
          _i14.SimpleScalarPropertiesOutput,
          [FullType(_i14.SimpleScalarPropertiesOutput)],
        ),
      );
      return _i16.Response(
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
