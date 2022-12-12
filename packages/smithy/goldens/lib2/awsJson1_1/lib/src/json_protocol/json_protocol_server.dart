// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.json_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_json1_1_v2/src/json_protocol/common/serializers.dart'
    as _i3;
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart'
    as _i17;
import 'package:aws_json1_1_v2/src/json_protocol/model/error_with_members.dart'
    as _i20;
import 'package:aws_json1_1_v2/src/json_protocol/model/error_without_members.dart'
    as _i21;
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart' as _i18;
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart'
    as _i6;
import 'package:aws_json1_1_v2/src/json_protocol/model/host_label_input.dart'
    as _i5;
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart'
    as _i19;
import 'package:aws_json1_1_v2/src/json_protocol/model/json_enums_input_output.dart'
    as _i7;
import 'package:aws_json1_1_v2/src/json_protocol/model/json_int_enums_input_output.dart'
    as _i8;
import 'package:aws_json1_1_v2/src/json_protocol/model/kitchen_sink.dart'
    as _i10;
import 'package:aws_json1_1_v2/src/json_protocol/model/null_operation_input_output.dart'
    as _i11;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_input.dart'
    as _i13;
import 'package:aws_json1_1_v2/src/json_protocol/model/operation_with_optional_input_output_output.dart'
    as _i12;
import 'package:aws_json1_1_v2/src/json_protocol/model/put_and_get_inline_documents_input_output.dart'
    as _i14;
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_scalar_properties_input_output.dart'
    as _i15;
import 'package:aws_json1_1_v2/src/json_protocol/model/union_input_output.dart'
    as _i9;
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart' as _i16;
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
          'JsonProtocol.EmptyOperation': service.emptyOperation,
          'JsonProtocol.EndpointOperation': service.endpointOperation,
          'JsonProtocol.EndpointWithHostLabelOperation':
              service.endpointWithHostLabelOperation,
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

  _i4.Future<_i1.Unit> emptyOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> endpointWithHostLabelOperation(
    _i5.HostLabelInput input,
    _i1.Context context,
  );
  _i4.Future<_i6.GreetingWithErrorsOutput> greetingWithErrors(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> hostWithPathOperation(
    _i1.Unit input,
    _i1.Context context,
  );
  _i4.Future<_i7.JsonEnumsInputOutput> jsonEnums(
    _i7.JsonEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i8.JsonIntEnumsInputOutput> jsonIntEnums(
    _i8.JsonIntEnumsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i9.UnionInputOutput> jsonUnions(
    _i9.UnionInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i10.KitchenSink> kitchenSinkOperation(
    _i10.KitchenSink input,
    _i1.Context context,
  );
  _i4.Future<_i11.NullOperationInputOutput> nullOperation(
    _i11.NullOperationInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i12.OperationWithOptionalInputOutputOutput>
      operationWithOptionalInputOutput(
    _i13.OperationWithOptionalInputOutputInput input,
    _i1.Context context,
  );
  _i4.Future<_i14.PutAndGetInlineDocumentsInputOutput> putAndGetInlineDocuments(
    _i14.PutAndGetInlineDocumentsInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i15.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
    _i15.SimpleScalarPropertiesInputOutput input,
    _i1.Context context,
  );
  _i4.Future<_i16.Response> call(_i16.Request request) => _router(request);
}

class _JsonProtocolServer extends _i1.HttpServer<JsonProtocolServerBase> {
  _JsonProtocolServer(this.service);

  @override
  final JsonProtocolServerBase service;

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

  late final _i1.HttpProtocol<_i5.HostLabelInput, _i5.HostLabelInput, _i1.Unit,
          _i1.Unit> _endpointWithHostLabelOperationProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i6.GreetingWithErrorsOutput,
          _i6.GreetingWithErrorsOutput> _greetingWithErrorsProtocol =
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
      _i7.JsonEnumsInputOutput,
      _i7.JsonEnumsInputOutput,
      _i7.JsonEnumsInputOutput,
      _i7.JsonEnumsInputOutput> _jsonEnumsProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i8.JsonIntEnumsInputOutput,
          _i8.JsonIntEnumsInputOutput,
          _i8.JsonIntEnumsInputOutput,
          _i8.JsonIntEnumsInputOutput> _jsonIntEnumsProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i9.UnionInputOutput,
      _i9.UnionInputOutput,
      _i9.UnionInputOutput,
      _i9.UnionInputOutput> _jsonUnionsProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i10.KitchenSink,
      _i10.KitchenSink,
      _i10.KitchenSink,
      _i10.KitchenSink> _kitchenSinkOperationProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i11.NullOperationInputOutput,
          _i11.NullOperationInputOutput,
          _i11.NullOperationInputOutput,
          _i11.NullOperationInputOutput> _nullOperationProtocol =
      _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i13.OperationWithOptionalInputOutputInput,
          _i13.OperationWithOptionalInputOutputInput,
          _i12.OperationWithOptionalInputOutputOutput,
          _i12.OperationWithOptionalInputOutputOutput>
      _operationWithOptionalInputOutputProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i14.PutAndGetInlineDocumentsInputOutput,
          _i14.PutAndGetInlineDocumentsInputOutput,
          _i14.PutAndGetInlineDocumentsInputOutput,
          _i14.PutAndGetInlineDocumentsInputOutput>
      _putAndGetInlineDocumentsProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
          _i15.SimpleScalarPropertiesInputOutput,
          _i15.SimpleScalarPropertiesInputOutput,
          _i15.SimpleScalarPropertiesInputOutput,
          _i15.SimpleScalarPropertiesInputOutput>
      _simpleScalarPropertiesProtocol = _i2.AwsJson1_1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i16.Response> emptyOperation(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _emptyOperationProtocol.contentType;
    try {
      final payload = (await _emptyOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.emptyOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _emptyOperationProtocol.serialize(
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

  _i4.Future<_i16.Response> endpointOperation(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _endpointOperationProtocol.contentType;
    try {
      final payload = (await _endpointOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.endpointOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _endpointOperationProtocol.serialize(
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
      final payload =
          (await _endpointWithHostLabelOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i5.HostLabelInput),
      ) as _i5.HostLabelInput);
      final input = _i5.HostLabelInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.endpointWithHostLabelOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _endpointWithHostLabelOperationProtocol.serialize(
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
      final payload = (await _greetingWithErrorsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.greetingWithErrors(
        input,
        context,
      );
      const statusCode = 200;
      final body = _greetingWithErrorsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i6.GreetingWithErrorsOutput,
          [FullType(_i6.GreetingWithErrorsOutput)],
        ),
      );
      return _i16.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i17.ComplexError catch (e) {
      final body = _greetingWithErrorsProtocol.serialize(
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
      final body = _greetingWithErrorsProtocol.serialize(
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
      final body = _greetingWithErrorsProtocol.serialize(
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
      final payload = (await _hostWithPathOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i1.Unit),
      ) as _i1.Unit);
      final input = payload;
      final output = await service.hostWithPathOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _hostWithPathOperationProtocol.serialize(
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

  _i4.Future<_i16.Response> jsonEnums(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _jsonEnumsProtocol.contentType;
    try {
      final payload = (await _jsonEnumsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i7.JsonEnumsInputOutput),
      ) as _i7.JsonEnumsInputOutput);
      final input = _i7.JsonEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonEnumsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i7.JsonEnumsInputOutput,
          [FullType(_i7.JsonEnumsInputOutput)],
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

  _i4.Future<_i16.Response> jsonIntEnums(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _jsonIntEnumsProtocol.contentType;
    try {
      final payload = (await _jsonIntEnumsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i8.JsonIntEnumsInputOutput),
      ) as _i8.JsonIntEnumsInputOutput);
      final input = _i8.JsonIntEnumsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonIntEnums(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonIntEnumsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i8.JsonIntEnumsInputOutput,
          [FullType(_i8.JsonIntEnumsInputOutput)],
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
      final payload = (await _jsonUnionsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i9.UnionInputOutput),
      ) as _i9.UnionInputOutput);
      final input = _i9.UnionInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.jsonUnions(
        input,
        context,
      );
      const statusCode = 200;
      final body = _jsonUnionsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i9.UnionInputOutput,
          [FullType(_i9.UnionInputOutput)],
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

  _i4.Future<_i16.Response> kitchenSinkOperation(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _kitchenSinkOperationProtocol.contentType;
    try {
      final payload = (await _kitchenSinkOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i10.KitchenSink),
      ) as _i10.KitchenSink);
      final input = _i10.KitchenSink.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.kitchenSinkOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _kitchenSinkOperationProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i10.KitchenSink,
          [FullType(_i10.KitchenSink)],
        ),
      );
      return _i16.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i20.ErrorWithMembers catch (e) {
      final body = _kitchenSinkOperationProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i20.ErrorWithMembers,
          [FullType(_i20.ErrorWithMembers)],
        ),
      );
      const statusCode = 400;
      return _i16.Response(
        statusCode,
        body: body,
        headers: context.response.build().headers.toMap(),
      );
    } on _i21.ErrorWithoutMembers catch (e) {
      final body = _kitchenSinkOperationProtocol.serialize(
        e,
        specifiedType: const FullType(
          _i21.ErrorWithoutMembers,
          [FullType(_i21.ErrorWithoutMembers)],
        ),
      );
      const statusCode = 500;
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

  _i4.Future<_i16.Response> nullOperation(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nullOperationProtocol.contentType;
    try {
      final payload = (await _nullOperationProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i11.NullOperationInputOutput),
      ) as _i11.NullOperationInputOutput);
      final input = _i11.NullOperationInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nullOperation(
        input,
        context,
      );
      const statusCode = 200;
      final body = _nullOperationProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i11.NullOperationInputOutput,
          [FullType(_i11.NullOperationInputOutput)],
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

  _i4.Future<_i16.Response> operationWithOptionalInputOutput(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _operationWithOptionalInputOutputProtocol.contentType;
    try {
      final payload =
          (await _operationWithOptionalInputOutputProtocol.deserialize(
        awsRequest.split(),
        specifiedType:
            const FullType(_i13.OperationWithOptionalInputOutputInput),
      ) as _i13.OperationWithOptionalInputOutputInput);
      final input = _i13.OperationWithOptionalInputOutputInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.operationWithOptionalInputOutput(
        input,
        context,
      );
      const statusCode = 200;
      final body = _operationWithOptionalInputOutputProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i12.OperationWithOptionalInputOutputOutput,
          [FullType(_i12.OperationWithOptionalInputOutputOutput)],
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

  _i4.Future<_i16.Response> putAndGetInlineDocuments(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _putAndGetInlineDocumentsProtocol.contentType;
    try {
      final payload = (await _putAndGetInlineDocumentsProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i14.PutAndGetInlineDocumentsInputOutput),
      ) as _i14.PutAndGetInlineDocumentsInputOutput);
      final input = _i14.PutAndGetInlineDocumentsInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.putAndGetInlineDocuments(
        input,
        context,
      );
      const statusCode = 200;
      final body = _putAndGetInlineDocumentsProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i14.PutAndGetInlineDocumentsInputOutput,
          [FullType(_i14.PutAndGetInlineDocumentsInputOutput)],
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
      final payload = (await _simpleScalarPropertiesProtocol.deserialize(
        awsRequest.split(),
        specifiedType: const FullType(_i15.SimpleScalarPropertiesInputOutput),
      ) as _i15.SimpleScalarPropertiesInputOutput);
      final input = _i15.SimpleScalarPropertiesInputOutput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.simpleScalarProperties(
        input,
        context,
      );
      const statusCode = 200;
      final body = _simpleScalarPropertiesProtocol.serialize(
        output,
        specifiedType: const FullType(
          _i15.SimpleScalarPropertiesInputOutput,
          [FullType(_i15.SimpleScalarPropertiesInputOutput)],
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
