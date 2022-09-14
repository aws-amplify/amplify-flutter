// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.rest_json_validation_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/common/serializers.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_input.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_override_input.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_length_query_string_input.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_input.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_pattern_override_input.dart'
    as _i10;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_input.dart'
    as _i11;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_range_override_input.dart'
    as _i12;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/malformed_required_input.dart'
    as _i13;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i14;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i15;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i17;
import 'package:shelf/shelf.dart' as _i16;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class RestJsonValidationProtocolServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
      serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final Router _router = () {
    final service = _RestJsonValidationProtocolServer(this);
    final router = Router();
    router.add('POST', r'/MalformedEnum', service.malformedEnum);
    router.add('POST', r'/MalformedLength', service.malformedLength);
    router.add(
        'POST', r'/MalformedLengthOverride', service.malformedLengthOverride);
    router.add('POST', r'/MalformedLengthQueryString',
        service.malformedLengthQueryString);
    router.add('POST', r'/MalformedPattern', service.malformedPattern);
    router.add(
        'POST', r'/MalformedPatternOverride', service.malformedPatternOverride);
    router.add('POST', r'/MalformedRange', service.malformedRange);
    router.add(
        'POST', r'/MalformedRangeOverride', service.malformedRangeOverride);
    router.add('POST', r'/MalformedRequired', service.malformedRequired);
    router.add('POST', r'/RecursiveStructures', service.recursiveStructures);
    router.add('POST', r'/SensitiveValidation', service.sensitiveValidation);
    return router;
  }();

  _i4.Future<_i1.Unit> malformedEnum(
      _i5.MalformedEnumInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedLength(
      _i6.MalformedLengthInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedLengthOverride(
      _i7.MalformedLengthOverrideInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedLengthQueryString(
      _i8.MalformedLengthQueryStringInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedPattern(
      _i9.MalformedPatternInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedPatternOverride(
      _i10.MalformedPatternOverrideInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedRange(
      _i11.MalformedRangeInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedRangeOverride(
      _i12.MalformedRangeOverrideInput input, _i1.Context context);
  _i4.Future<_i1.Unit> malformedRequired(
      _i13.MalformedRequiredInput input, _i1.Context context);
  _i4.Future<_i1.Unit> recursiveStructures(
      _i14.RecursiveStructuresInput input, _i1.Context context);
  _i4.Future<_i1.Unit> sensitiveValidation(
      _i15.SensitiveValidationInput input, _i1.Context context);
  _i4.Future<_i16.Response> call(_i16.Request request) => _router(request);
}

class _RestJsonValidationProtocolServer
    extends _i1.HttpServer<RestJsonValidationProtocolServerBase> {
  _RestJsonValidationProtocolServer(this.service);

  @override
  final RestJsonValidationProtocolServerBase service;

  late final _i1.HttpProtocol<_i5.MalformedEnumInput, _i5.MalformedEnumInput,
          _i1.Unit, _i1.Unit> _malformedEnumProtocol =
      _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i6.MalformedLengthInput,
          _i6.MalformedLengthInput, _i1.Unit, _i1.Unit>
      _malformedLengthProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i7.MalformedLengthOverrideInput,
          _i7.MalformedLengthOverrideInput, _i1.Unit, _i1.Unit>
      _malformedLengthOverrideProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i8.MalformedLengthQueryStringInputPayload,
          _i8.MalformedLengthQueryStringInput, _i1.Unit, _i1.Unit>
      _malformedLengthQueryStringProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i9.MalformedPatternInput,
          _i9.MalformedPatternInput, _i1.Unit, _i1.Unit>
      _malformedPatternProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i10.MalformedPatternOverrideInput,
          _i10.MalformedPatternOverrideInput, _i1.Unit, _i1.Unit>
      _malformedPatternOverrideProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i11.MalformedRangeInput,
          _i11.MalformedRangeInput, _i1.Unit, _i1.Unit>
      _malformedRangeProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i12.MalformedRangeOverrideInput,
          _i12.MalformedRangeOverrideInput, _i1.Unit, _i1.Unit>
      _malformedRangeOverrideProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i13.MalformedRequiredInputPayload,
          _i13.MalformedRequiredInput, _i1.Unit, _i1.Unit>
      _malformedRequiredProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i14.RecursiveStructuresInput,
          _i14.RecursiveStructuresInput, _i1.Unit, _i1.Unit>
      _recursiveStructuresProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  late final _i1.HttpProtocol<_i15.SensitiveValidationInput,
          _i15.SensitiveValidationInput, _i1.Unit, _i1.Unit>
      _sensitiveValidationProtocol = _i2.RestJson1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  _i4.Future<_i16.Response> malformedEnum(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedEnumProtocol.contentType;
    try {
      final payload = (await _malformedEnumProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i5.MalformedEnumInput))
          as _i5.MalformedEnumInput);
      final input =
          _i5.MalformedEnumInput.fromRequest(payload, awsRequest, labels: {});
      final output = await service.malformedEnum(input, context);
      const statusCode = 200;
      final body = _malformedEnumProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedEnumProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedLength(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLengthProtocol.contentType;
    try {
      final payload = (await _malformedLengthProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i6.MalformedLengthInput))
          as _i6.MalformedLengthInput);
      final input =
          _i6.MalformedLengthInput.fromRequest(payload, awsRequest, labels: {});
      final output = await service.malformedLength(input, context);
      const statusCode = 200;
      final body = _malformedLengthProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedLengthProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedLengthOverride(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLengthOverrideProtocol.contentType;
    try {
      final payload = (await _malformedLengthOverrideProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i7.MalformedLengthOverrideInput))
          as _i7.MalformedLengthOverrideInput);
      final input = _i7.MalformedLengthOverrideInput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.malformedLengthOverride(input, context);
      const statusCode = 200;
      final body = _malformedLengthOverrideProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedLengthOverrideProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedLengthQueryString(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedLengthQueryStringProtocol.contentType;
    try {
      final payload = (await _malformedLengthQueryStringProtocol.deserialize(
              awsRequest.split(),
              specifiedType:
                  const FullType(_i8.MalformedLengthQueryStringInputPayload))
          as _i8.MalformedLengthQueryStringInputPayload);
      final input = _i8.MalformedLengthQueryStringInput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.malformedLengthQueryString(input, context);
      const statusCode = 200;
      final body = _malformedLengthQueryStringProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedLengthQueryStringProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedPattern(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedPatternProtocol.contentType;
    try {
      final payload = (await _malformedPatternProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i9.MalformedPatternInput))
          as _i9.MalformedPatternInput);
      final input = _i9.MalformedPatternInput.fromRequest(payload, awsRequest,
          labels: {});
      final output = await service.malformedPattern(input, context);
      const statusCode = 200;
      final body = _malformedPatternProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedPatternProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedPatternOverride(
      _i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedPatternOverrideProtocol.contentType;
    try {
      final payload = (await _malformedPatternOverrideProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i10.MalformedPatternOverrideInput))
          as _i10.MalformedPatternOverrideInput);
      final input = _i10.MalformedPatternOverrideInput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.malformedPatternOverride(input, context);
      const statusCode = 200;
      final body = _malformedPatternOverrideProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedPatternOverrideProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedRange(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRangeProtocol.contentType;
    try {
      final payload = (await _malformedRangeProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i11.MalformedRangeInput))
          as _i11.MalformedRangeInput);
      final input =
          _i11.MalformedRangeInput.fromRequest(payload, awsRequest, labels: {});
      final output = await service.malformedRange(input, context);
      const statusCode = 200;
      final body = _malformedRangeProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedRangeProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedRangeOverride(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRangeOverrideProtocol.contentType;
    try {
      final payload = (await _malformedRangeOverrideProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i12.MalformedRangeOverrideInput))
          as _i12.MalformedRangeOverrideInput);
      final input = _i12.MalformedRangeOverrideInput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.malformedRangeOverride(input, context);
      const statusCode = 200;
      final body = _malformedRangeOverrideProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedRangeOverrideProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> malformedRequired(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _malformedRequiredProtocol.contentType;
    try {
      final payload = (await _malformedRequiredProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i13.MalformedRequiredInputPayload))
          as _i13.MalformedRequiredInputPayload);
      final input = _i13.MalformedRequiredInput.fromRequest(payload, awsRequest,
          labels: {});
      final output = await service.malformedRequired(input, context);
      const statusCode = 200;
      final body = _malformedRequiredProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _malformedRequiredProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> recursiveStructures(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _recursiveStructuresProtocol.contentType;
    try {
      final payload = (await _recursiveStructuresProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i14.RecursiveStructuresInput))
          as _i14.RecursiveStructuresInput);
      final input = _i14.RecursiveStructuresInput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.recursiveStructures(input, context);
      const statusCode = 200;
      final body = _recursiveStructuresProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _recursiveStructuresProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }

  _i4.Future<_i16.Response> sensitiveValidation(_i16.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _sensitiveValidationProtocol.contentType;
    try {
      final payload = (await _sensitiveValidationProtocol.deserialize(
              awsRequest.split(),
              specifiedType: const FullType(_i15.SensitiveValidationInput))
          as _i15.SensitiveValidationInput);
      final input = _i15.SensitiveValidationInput.fromRequest(
          payload, awsRequest,
          labels: {});
      final output = await service.sensitiveValidation(input, context);
      const statusCode = 200;
      final body = _sensitiveValidationProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i17.ValidationException catch (e) {
      context.response.headers['X-Amzn-Errortype'] = 'ValidationException';
      final body = _sensitiveValidationProtocol.serialize(e,
          specifiedType: const FullType(
              _i17.ValidationException, [FullType(_i17.ValidationException)]));
      const statusCode = 400;
      return _i16.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }
}
