// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_validation_protocol.rest_json_validation_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/common/serializers.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_enum_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_override_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_override_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_required_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_unique_items_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestJsonValidationProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final Router _router = () {
    final service = _RestJsonValidationProtocolServer(this);
    final router = Router();
    router.add(
      'POST',
      r'/MalformedEnum',
      service.malformedEnum,
    );
    router.add(
      'POST',
      r'/MalformedLength',
      service.malformedLength,
    );
    router.add(
      'POST',
      r'/MalformedLengthOverride',
      service.malformedLengthOverride,
    );
    router.add(
      'POST',
      r'/MalformedLengthQueryString',
      service.malformedLengthQueryString,
    );
    router.add(
      'POST',
      r'/MalformedPattern',
      service.malformedPattern,
    );
    router.add(
      'POST',
      r'/MalformedPatternOverride',
      service.malformedPatternOverride,
    );
    router.add(
      'POST',
      r'/MalformedRange',
      service.malformedRange,
    );
    router.add(
      'POST',
      r'/MalformedRangeOverride',
      service.malformedRangeOverride,
    );
    router.add(
      'POST',
      r'/MalformedRequired',
      service.malformedRequired,
    );
    router.add(
      'POST',
      r'/MalformedUniqueItems',
      service.malformedUniqueItems,
    );
    router.add(
      'POST',
      r'/RecursiveStructures',
      service.recursiveStructures,
    );
    router.add(
      'POST',
      r'/SensitiveValidation',
      service.sensitiveValidation,
    );
    return router;
  }();

  _i3.Future<_i1.Unit> malformedEnum(
    MalformedEnumInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedLength(
    MalformedLengthInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedLengthOverride(
    MalformedLengthOverrideInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedLengthQueryString(
    MalformedLengthQueryStringInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedPattern(
    MalformedPatternInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedPatternOverride(
    MalformedPatternOverrideInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedRange(
    MalformedRangeInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedRangeOverride(
    MalformedRangeOverrideInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedRequired(
    MalformedRequiredInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> malformedUniqueItems(
    MalformedUniqueItemsInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> recursiveStructures(
    RecursiveStructuresInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> sensitiveValidation(
    SensitiveValidationInput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _RestJsonValidationProtocolServer
    extends _i1.HttpServer<RestJsonValidationProtocolServerBase> {
  _RestJsonValidationProtocolServer(this.service);

  @override
  final RestJsonValidationProtocolServerBase service;

  late final _i1
      .HttpProtocol<MalformedEnumInput, MalformedEnumInput, _i1.Unit, _i1.Unit>
      _malformedEnumProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedLengthInput, MalformedLengthInput,
      _i1.Unit, _i1.Unit> _malformedLengthProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedLengthOverrideInput,
      MalformedLengthOverrideInput,
      _i1.Unit,
      _i1.Unit> _malformedLengthOverrideProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedLengthQueryStringInputPayload,
      MalformedLengthQueryStringInput,
      _i1.Unit,
      _i1.Unit> _malformedLengthQueryStringProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedPatternInput, MalformedPatternInput,
      _i1.Unit, _i1.Unit> _malformedPatternProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedPatternOverrideInput,
      MalformedPatternOverrideInput,
      _i1.Unit,
      _i1.Unit> _malformedPatternOverrideProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<MalformedRangeInput, MalformedRangeInput,
      _i1.Unit, _i1.Unit> _malformedRangeProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedRangeOverrideInput,
      MalformedRangeOverrideInput,
      _i1.Unit,
      _i1.Unit> _malformedRangeOverrideProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedRequiredInputPayload,
      MalformedRequiredInput,
      _i1.Unit,
      _i1.Unit> _malformedRequiredProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      MalformedUniqueItemsInput,
      MalformedUniqueItemsInput,
      _i1.Unit,
      _i1.Unit> _malformedUniqueItemsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      RecursiveStructuresInput,
      RecursiveStructuresInput,
      _i1.Unit,
      _i1.Unit> _recursiveStructuresProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      SensitiveValidationInput,
      SensitiveValidationInput,
      _i1.Unit,
      _i1.Unit> _sensitiveValidationProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> malformedEnum(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedEnumProtocol.contentType;
    try {
      final payload = (await _malformedEnumProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedEnumInput),
      ) as MalformedEnumInput);
      final input = MalformedEnumInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedEnum(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedEnumProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedEnumProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedLength(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLengthProtocol.contentType;
    try {
      final payload =
          (await _malformedLengthProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedLengthInput),
      ) as MalformedLengthInput);
      final input = MalformedLengthInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedLength(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedLengthProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedLengthProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedLengthOverride(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLengthOverrideProtocol.contentType;
    try {
      final payload =
          (await _malformedLengthOverrideProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedLengthOverrideInput),
      ) as MalformedLengthOverrideInput);
      final input = MalformedLengthOverrideInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedLengthOverride(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedLengthOverrideProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedLengthOverrideProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedLengthQueryString(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLengthQueryStringProtocol.contentType;
    try {
      final payload =
          (await _malformedLengthQueryStringProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedLengthQueryStringInputPayload),
      ) as MalformedLengthQueryStringInputPayload);
      final input = MalformedLengthQueryStringInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedLengthQueryString(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedLengthQueryStringProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedLengthQueryStringProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedPattern(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedPatternProtocol.contentType;
    try {
      final payload =
          (await _malformedPatternProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedPatternInput),
      ) as MalformedPatternInput);
      final input = MalformedPatternInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedPattern(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedPatternProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedPatternProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedPatternOverride(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedPatternOverrideProtocol.contentType;
    try {
      final payload =
          (await _malformedPatternOverrideProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedPatternOverrideInput),
      ) as MalformedPatternOverrideInput);
      final input = MalformedPatternOverrideInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedPatternOverride(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedPatternOverrideProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedPatternOverrideProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedRange(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRangeProtocol.contentType;
    try {
      final payload = (await _malformedRangeProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedRangeInput),
      ) as MalformedRangeInput);
      final input = MalformedRangeInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedRange(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedRangeProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedRangeProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedRangeOverride(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRangeOverrideProtocol.contentType;
    try {
      final payload =
          (await _malformedRangeOverrideProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedRangeOverrideInput),
      ) as MalformedRangeOverrideInput);
      final input = MalformedRangeOverrideInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedRangeOverride(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _malformedRangeOverrideProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedRangeOverrideProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedRequired(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRequiredProtocol.contentType;
    try {
      final payload =
          (await _malformedRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedRequiredInputPayload),
      ) as MalformedRequiredInputPayload);
      final input = MalformedRequiredInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedRequiredProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedRequiredProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> malformedUniqueItems(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedUniqueItemsProtocol.contentType;
    try {
      final payload =
          (await _malformedUniqueItemsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(MalformedUniqueItemsInput),
      ) as MalformedUniqueItemsInput);
      final input = MalformedUniqueItemsInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.malformedUniqueItems(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _malformedUniqueItemsProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedUniqueItemsProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> recursiveStructures(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveStructuresProtocol.contentType;
    try {
      final payload =
          (await _recursiveStructuresProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(RecursiveStructuresInput),
      ) as RecursiveStructuresInput);
      final input = RecursiveStructuresInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.recursiveStructures(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _recursiveStructuresProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _recursiveStructuresProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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

  _i3.Future<_i4.Response> sensitiveValidation(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _sensitiveValidationProtocol.contentType;
    try {
      final payload =
          (await _sensitiveValidationProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(SensitiveValidationInput),
      ) as SensitiveValidationInput);
      final input = SensitiveValidationInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.sensitiveValidation(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _sensitiveValidationProtocol.wireSerializer.serialize(
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
    } on ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _sensitiveValidationProtocol.wireSerializer.serialize(
        e,
        specifiedType: const FullType(
          ValidationException,
          [FullType(ValidationException)],
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
}
