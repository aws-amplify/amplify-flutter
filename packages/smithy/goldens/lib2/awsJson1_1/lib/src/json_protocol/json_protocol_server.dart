// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_json1_1_v2/src/json_protocol/common/serializers.dart'
    as _i3;
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart'
    as _i19;
import 'package:aws_json1_1_v2/src/json_protocol/model/datetime_offsets_output.dart'
    as _i5;
import 'package:aws_json1_1_v2/src/json_protocol/model/error_with_members.dart'
    as _i22;
import 'package:aws_json1_1_v2/src/json_protocol/model/error_without_members.dart'
    as _i23;
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart' as _i20;
import 'package:aws_json1_1_v2/src/json_protocol/model/fractional_seconds_output.dart'
    as _i7;
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i8;
import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart'
    as _i21;
import 'package:aws_json1_1_v2/src/json_protocol/model/json_enums_input_output.dart'
    as _i9;
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart'
    as _i10;
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart'
    as _i12;
import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart'
    as _i13;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i15;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i14;
import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i16;
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i17;
import 'package:aws_json1_1_v2/src/json_protocol/model/union_input_output.dart'
    as _i11;
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i18;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class JsonProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final Router _router = () {
    final service = _JsonProtocolServer(this);
    final router = Router();
    router.add(
      'POST',
      '/',
      _i1.RpcRouter(
        'X-Amz-Target',
        {
          'JsonProtocol.DatetimeOffsets': service.datetimeOffsets,
          'JsonProtocol.EmptyOperation': service.emptyOperation,
          'JsonProtocol.EndpointOperation': service.endpointOperation,
          'JsonProtocol.EndpointWithHostLabelOperation':
              service.endpointWithHostLabelOperation,
          'JsonProtocol.FractionalSeconds': service.fractionalSeconds,
          'JsonProtocol.GreetingWithErrors': service.greetingWithErrors,
          'JsonProtocol.HostWithPathOperation': service.hostWithPathOperation,
          'JsonProtocol.JsonEnums': service.jsonEnums,
          'JsonProtocol.JsonIntEnums': service.jsonIntEnums,
          'JsonProtocol.JsonUnions': service.jsonUnions,
          'JsonProtocol.KitchenSinkOperation': service.kitchenSinkOperation,
          'JsonProtocol.NullOperation': service.nullOperation,
          'JsonProtocol.OperationWithOptionalInputOutput':
              service.operationWithOptionalInputOutput,
          'JsonProtocol.PutAndGetInlineDocuments':
              service.putAndGetInlineDocuments,
          'JsonProtocol.SimpleScalarProperties': service.simpleScalarProperties,
        },
      ),
    );
    return router;
  }();

  _i4.Future<_i5.DatetimeOffsetsOutput> datetimeOffsets(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> emptyOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i6.HostLabelInput input,
    _i1.Context context,
  );
  _i4.Future<_i7.FractionalSecondsOutput> fractionalSeconds(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i8.GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i9.JsonEnumsInputOutput> jsonEnums(
    _i9.JsonEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i10.JsonIntEnumsInputOutput> jsonIntEnums(
    _i10.JsonIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i11.UnionInputOutput> jsonUnions(
    _i11.UnionInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i12.KitchenSink> kitchenSinkOperation(
    _i12.KitchenSink input,
    _i1.Context context,
  );
  _i4.Future<_i13.NullOperationInputOutput> nullOperation(
    _i13.NullOperationInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i14.OperationWithOptionalInputOutputOutput>
      operationWithOptionalInputOutput(
    _i15.OperationWithOptionalInputOutputInput input,
    _i1.Context context,
  );
  _i4.Future<_i16.PutAndGetInlineDocumentsInputOutput> putAndGetInlineDocuments(
    _i16.PutAndGetInlineDocumentsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i17.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    _i17.SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i18.Response> call(_i18.Request request) => _router(request);
}

class _JsonProtocolServer extends _i1.HttpServer<JsonProtocolServerBase> {
  _JsonProtocolServer(this.service);

  @override
  final JsonProtocolServerBase service;

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i5.DatetimeOffsetsOutput,
          _i5.DatetimeOffsetsOutput> _datetimeOffsetsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _emptyOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i6.HostLabelInput, _i6.HostLabelInput, _i1.Unit,
          _i1.Unit> _endpointWithHostLabelOperationProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i7.FractionalSecondsOutput,
          _i7.FractionalSecondsOutput> _fractionalSecondsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i8.GreetingWithErrorsOutput,
          _i8.GreetingWithErrorsOutput> _greetingWithErrorsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _hostWithPathOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i9.JsonEnumsInputOutput,
      _i9.JsonEnumsInputOutput,
      _i9.JsonEnumsInputOutput,
      _i9.JsonEnumsInputOutput> _jsonEnumsProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i10.JsonIntEnumsInputOutput,
          _i10.JsonIntEnumsInputOutput,
          _i10.JsonIntEnumsInputOutput,
          _i10.JsonIntEnumsInputOutput> _jsonIntEnumsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i11.UnionInputOutput,
      _i11.UnionInputOutput,
      _i11.UnionInputOutput,
      _i11.UnionInputOutput> _jsonUnionsProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i12.KitchenSink,
      _i12.KitchenSink,
      _i12.KitchenSink,
      _i12.KitchenSink> _kitchenSinkOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i13.NullOperationInputOutput,
          _i13.NullOperationInputOutput,
          _i13.NullOperationInputOutput,
          _i13.NullOperationInputOutput> _nullOperationProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i15.OperationWithOptionalInputOutputInput,
          _i15.OperationWithOptionalInputOutputInput,
          _i14.OperationWithOptionalInputOutputOutput,
          _i14.OperationWithOptionalInputOutputOutput>
      _operationWithOptionalInputOutputProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i16.PutAndGetInlineDocumentsInputOutput,
          _i16.PutAndGetInlineDocumentsInputOutput,
          _i16.PutAndGetInlineDocumentsInputOutput,
          _i16.PutAndGetInlineDocumentsInputOutput>
      _putAndGetInlineDocumentsProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i17.SimpleScalarPropertiesInputOutput,
          _i17.SimpleScalarPropertiesInputOutput,
          _i17.SimpleScalarPropertiesInputOutput,
          _i17.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i18.Response> datetimeOffsets(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _datetimeOffsetsProtocol.contentType;
    try {
      final payload =
          (await _datetimeOffsetsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.datetimeOffsets(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _datetimeOffsetsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i5.DatetimeOffsetsOutput,
          [FullType(_i5.DatetimeOffsetsOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> emptyOperation(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyOperationProtocol.contentType;
    try {
      final payload = (await _emptyOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.emptyOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _emptyOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i1.Unit,
          [FullType(_i1.Unit)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> endpointOperation(_i18.Request request) async {
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
      return _i18.Response(
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

  _i4.Future<_i18.Response> endpointWithHostLabelOperation(
      _i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointWithHostLabelOperationProtocol.contentType;
    try {
      final payload = (await _endpointWithHostLabelOperationProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i6.HostLabelInput),
      ) as _i6.HostLabelInput);
      final input = _i6.HostLabelInput.fromRequest(
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
      return _i18.Response(
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

  _i4.Future<_i18.Response> fractionalSeconds(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _fractionalSecondsProtocol.contentType;
    try {
      final payload =
          (await _fractionalSecondsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.fractionalSeconds(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _fractionalSecondsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i7.FractionalSecondsOutput,
          [FullType(_i7.FractionalSecondsOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> greetingWithErrors(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _greetingWithErrorsProtocol.contentType;
    try {
      final payload =
          (await _greetingWithErrorsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
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
      return _i18.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i19.ComplexError catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i19.ComplexError,
          [FullType(_i19.ComplexError)],
        ),
      );
      const statusCode = 400;
      return _i18.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i20.FooError catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i20.FooError,
          [FullType(_i20.FooError)],
        ),
      );
      const statusCode = 500;
      return _i18.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i21.InvalidGreeting catch (e) {
      final body = _greetingWithErrorsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i21.InvalidGreeting,
          [FullType(_i21.InvalidGreeting)],
        ),
      );
      const statusCode = 400;
      return _i18.Response(
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

  _i4.Future<_i18.Response> hostWithPathOperation(_i18.Request request) async {
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
      return _i18.Response(
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

  _i4.Future<_i18.Response> jsonEnums(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonEnumsProtocol.contentType;
    try {
      final payload = (await _jsonEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i9.JsonEnumsInputOutput),
      ) as _i9.JsonEnumsInputOutput);
      final input = _i9.JsonEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonEnumsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i9.JsonEnumsInputOutput,
          [FullType(_i9.JsonEnumsInputOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> jsonIntEnums(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonIntEnumsProtocol.contentType;
    try {
      final payload = (await _jsonIntEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i10.JsonIntEnumsInputOutput),
      ) as _i10.JsonIntEnumsInputOutput);
      final input = _i10.JsonIntEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonIntEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _jsonIntEnumsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i10.JsonIntEnumsInputOutput,
          [FullType(_i10.JsonIntEnumsInputOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> jsonUnions(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonUnionsProtocol.contentType;
    try {
      final payload = (await _jsonUnionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i11.UnionInputOutput),
      ) as _i11.UnionInputOutput);
      final input = _i11.UnionInputOutput.fromRequest(
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
          _i11.UnionInputOutput,
          [FullType(_i11.UnionInputOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> kitchenSinkOperation(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _kitchenSinkOperationProtocol.contentType;
    try {
      final payload =
          (await _kitchenSinkOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i12.KitchenSink),
      ) as _i12.KitchenSink);
      final input = _i12.KitchenSink.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.kitchenSinkOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _kitchenSinkOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i12.KitchenSink,
          [FullType(_i12.KitchenSink)],
        ),
      );
      return _i18.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i22.ErrorWithMembers catch (e) {
      final body = _kitchenSinkOperationProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i22.ErrorWithMembers,
          [FullType(_i22.ErrorWithMembers)],
        ),
      );
      const statusCode = 400;
      return _i18.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i23.ErrorWithoutMembers catch (e) {
      final body = _kitchenSinkOperationProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          _i23.ErrorWithoutMembers,
          [FullType(_i23.ErrorWithoutMembers)],
        ),
      );
      const statusCode = 500;
      return _i18.Response(
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

  _i4.Future<_i18.Response> nullOperation(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullOperationProtocol.contentType;
    try {
      final payload = (await _nullOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i13.NullOperationInputOutput),
      ) as _i13.NullOperationInputOutput);
      final input = _i13.NullOperationInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nullOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _nullOperationProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i13.NullOperationInputOutput,
          [FullType(_i13.NullOperationInputOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> operationWithOptionalInputOutput(
      _i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _operationWithOptionalInputOutputProtocol.contentType;
    try {
      final payload = (await _operationWithOptionalInputOutputProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType:
            const FullType(_i15.OperationWithOptionalInputOutputInput),
      ) as _i15.OperationWithOptionalInputOutputInput);
      final input = _i15.OperationWithOptionalInputOutputInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.operationWithOptionalInputOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _operationWithOptionalInputOutputProtocol
          .wireSerializer
          .serialize(
        output,
        specifiedType: const FullType(
          _i14.OperationWithOptionalInputOutputOutput,
          [FullType(_i14.OperationWithOptionalInputOutputOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> putAndGetInlineDocuments(
      _i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _putAndGetInlineDocumentsProtocol.contentType;
    try {
      final payload =
          (await _putAndGetInlineDocumentsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i16.PutAndGetInlineDocumentsInputOutput),
      ) as _i16.PutAndGetInlineDocumentsInputOutput);
      final input = _i16.PutAndGetInlineDocumentsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.putAndGetInlineDocuments(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _putAndGetInlineDocumentsProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          _i16.PutAndGetInlineDocumentsInputOutput,
          [FullType(_i16.PutAndGetInlineDocumentsInputOutput)],
        ),
      );
      return _i18.Response(
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

  _i4.Future<_i18.Response> simpleScalarProperties(_i18.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _simpleScalarPropertiesProtocol.contentType;
    try {
      final payload =
          (await _simpleScalarPropertiesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i17.SimpleScalarPropertiesInputOutput),
      ) as _i17.SimpleScalarPropertiesInputOutput);
      final input = _i17.SimpleScalarPropertiesInputOutput.fromRequest(
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
          _i17.SimpleScalarPropertiesInputOutput,
          [FullType(_i17.SimpleScalarPropertiesInputOutput)],
        ),
      );
      return _i18.Response(
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
