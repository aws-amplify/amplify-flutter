// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.json_protocol.json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:aws_json1_1_v2/src/json_protocol/common/serializers.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/datetime_offsets_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/error_with_members.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/error_without_members.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/fractional_seconds_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/put_with_content_encoding_input.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_scalar_properties_input_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/union_input_output.dart';
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class JsonProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
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
          'JsonProtocol.PutWithContentEncoding': service.putWithContentEncoding,
          'JsonProtocol.SimpleScalarProperties': service.simpleScalarProperties,
        },
      ),
    );
    return router;
  }();

  _i3.Future<DatetimeOffsetsOutput> datetimeOffsets(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> emptyOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> endpointWithHostLabelOperation(
    HostLabelInput input,
    _i1.Context context,
  );
  _i3.Future<FractionalSecondsOutput> fractionalSeconds(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i3.Future<JsonEnumsInputOutput> jsonEnums(
    JsonEnumsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<JsonIntEnumsInputOutput> jsonIntEnums(
    JsonIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<UnionInputOutput> jsonUnions(
    UnionInputOutput input,
    _i1.Context context,
  );
  _i3.Future<KitchenSink> kitchenSinkOperation(
    KitchenSink input,
    _i1.Context context,
  );
  _i3.Future<NullOperationInputOutput> nullOperation(
    NullOperationInputOutput input,
    _i1.Context context,
  );
  _i3.Future<OperationWithOptionalInputOutputOutput>
      operationWithOptionalInputOutput(
    OperationWithOptionalInputOutputInput input,
    _i1.Context context,
  );
  _i3.Future<PutAndGetInlineDocumentsInputOutput> putAndGetInlineDocuments(
    PutAndGetInlineDocumentsInputOutput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> putWithContentEncoding(
    PutWithContentEncodingInput input,
    _i1.Context context,
  );
  _i3.Future<SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _JsonProtocolServer extends _i1.HttpServer<JsonProtocolServerBase> {
  _JsonProtocolServer(this.service);

  @override
  final JsonProtocolServerBase service;

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, DatetimeOffsetsOutput,
      DatetimeOffsetsOutput> _datetimeOffsetsProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _emptyOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _endpointOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<HostLabelInput, HostLabelInput, _i1.Unit, _i1.Unit>
      _endpointWithHostLabelOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, FractionalSecondsOutput,
          FractionalSecondsOutput> _fractionalSecondsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, GreetingWithErrorsOutput,
          GreetingWithErrorsOutput> _greetingWithErrorsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _hostWithPathOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonEnumsInputOutput,
      JsonEnumsInputOutput,
      JsonEnumsInputOutput,
      JsonEnumsInputOutput> _jsonEnumsProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      JsonIntEnumsInputOutput,
      JsonIntEnumsInputOutput,
      JsonIntEnumsInputOutput,
      JsonIntEnumsInputOutput> _jsonIntEnumsProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      UnionInputOutput,
      UnionInputOutput,
      UnionInputOutput,
      UnionInputOutput> _jsonUnionsProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1
      .HttpProtocol<KitchenSink, KitchenSink, KitchenSink, KitchenSink>
      _kitchenSinkOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      NullOperationInputOutput,
      NullOperationInputOutput,
      NullOperationInputOutput,
      NullOperationInputOutput> _nullOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          OperationWithOptionalInputOutputInput,
          OperationWithOptionalInputOutputInput,
          OperationWithOptionalInputOutputOutput,
          OperationWithOptionalInputOutputOutput>
      _operationWithOptionalInputOutputProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          PutAndGetInlineDocumentsInputOutput,
          PutAndGetInlineDocumentsInputOutput,
          PutAndGetInlineDocumentsInputOutput,
          PutAndGetInlineDocumentsInputOutput>
      _putAndGetInlineDocumentsProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      PutWithContentEncodingInput,
      PutWithContentEncodingInput,
      _i1.Unit,
      _i1.Unit> _putWithContentEncodingProtocol = _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutput,
          SimpleScalarPropertiesInputOutput> _simpleScalarPropertiesProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> datetimeOffsets(_i4.Request request) async {
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
          DatetimeOffsetsOutput,
          [FullType(DatetimeOffsetsOutput)],
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

  _i3.Future<_i4.Response> emptyOperation(_i4.Request request) async {
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
        specifiedType: const FullType(HostLabelInput),
      ) as HostLabelInput);
      final input = HostLabelInput.fromRequest(
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

  _i3.Future<_i4.Response> fractionalSeconds(_i4.Request request) async {
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
          FractionalSecondsOutput,
          [FullType(FractionalSecondsOutput)],
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

  _i3.Future<_i4.Response> jsonEnums(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonEnumsProtocol.contentType;
    try {
      final payload = (await _jsonEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonEnumsInputOutput),
      ) as JsonEnumsInputOutput);
      final input = JsonEnumsInputOutput.fromRequest(
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
          JsonEnumsInputOutput,
          [FullType(JsonEnumsInputOutput)],
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

  _i3.Future<_i4.Response> jsonIntEnums(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonIntEnumsProtocol.contentType;
    try {
      final payload = (await _jsonIntEnumsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(JsonIntEnumsInputOutput),
      ) as JsonIntEnumsInputOutput);
      final input = JsonIntEnumsInputOutput.fromRequest(
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
          JsonIntEnumsInputOutput,
          [FullType(JsonIntEnumsInputOutput)],
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
        specifiedType: const FullType(UnionInputOutput),
      ) as UnionInputOutput);
      final input = UnionInputOutput.fromRequest(
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
          UnionInputOutput,
          [FullType(UnionInputOutput)],
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

  _i3.Future<_i4.Response> kitchenSinkOperation(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _kitchenSinkOperationProtocol.contentType;
    try {
      final payload =
          (await _kitchenSinkOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(KitchenSink),
      ) as KitchenSink);
      final input = KitchenSink.fromRequest(
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
          KitchenSink,
          [FullType(KitchenSink)],
        ),
      );
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ErrorWithMembers catch (e) {
      final body = _kitchenSinkOperationProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ErrorWithMembers,
          [FullType(ErrorWithMembers)],
        ),
      );
      const statusCode = 400;
      return _i4.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on ErrorWithoutMembers catch (e) {
      final body = _kitchenSinkOperationProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ErrorWithoutMembers,
          [FullType(ErrorWithoutMembers)],
        ),
      );
      const statusCode = 500;
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

  _i3.Future<_i4.Response> nullOperation(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullOperationProtocol.contentType;
    try {
      final payload = (await _nullOperationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(NullOperationInputOutput),
      ) as NullOperationInputOutput);
      final input = NullOperationInputOutput.fromRequest(
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
          NullOperationInputOutput,
          [FullType(NullOperationInputOutput)],
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

  _i3.Future<_i4.Response> operationWithOptionalInputOutput(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _operationWithOptionalInputOutputProtocol.contentType;
    try {
      final payload = (await _operationWithOptionalInputOutputProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(OperationWithOptionalInputOutputInput),
      ) as OperationWithOptionalInputOutputInput);
      final input = OperationWithOptionalInputOutputInput.fromRequest(
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
          OperationWithOptionalInputOutputOutput,
          [FullType(OperationWithOptionalInputOutputOutput)],
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

  _i3.Future<_i4.Response> putAndGetInlineDocuments(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _putAndGetInlineDocumentsProtocol.contentType;
    try {
      final payload =
          (await _putAndGetInlineDocumentsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(PutAndGetInlineDocumentsInputOutput),
      ) as PutAndGetInlineDocumentsInputOutput);
      final input = PutAndGetInlineDocumentsInputOutput.fromRequest(
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
          PutAndGetInlineDocumentsInputOutput,
          [FullType(PutAndGetInlineDocumentsInputOutput)],
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
        specifiedType: const FullType(SimpleScalarPropertiesInputOutput),
      ) as SimpleScalarPropertiesInputOutput);
      final input = SimpleScalarPropertiesInputOutput.fromRequest(
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
          SimpleScalarPropertiesInputOutput,
          [FullType(SimpleScalarPropertiesInputOutput)],
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
