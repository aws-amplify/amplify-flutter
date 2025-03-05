// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.custom_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;
import 'dart:typed_data' as _i5;

import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/common/serializers.dart';
import 'package:custom_v2/src/custom/model/default_values_input.dart';
import 'package:custom_v2/src/custom/model/default_values_output.dart';
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_really_not_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_really_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_required_input.dart';
import 'package:custom_v2/src/custom/model/http_checksum_required_with_member_input.dart';
import 'package:custom_v2/src/custom/model/nested_collections_input.dart';
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class CustomServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final Router _router = () {
    final service = _CustomServer(this);
    final router = Router();
    router.add(
      'POST',
      r'/default',
      service.defaultValues,
    );
    router.add(
      'POST',
      r'/notRequiredWithMember',
      service.httpChecksumNotRequiredWithMember,
    );
    router.add(
      'POST',
      r'/reallyNotRequired',
      service.httpChecksumReallyNotRequired,
    );
    router.add(
      'POST',
      r'/reallyRequired',
      service.httpChecksumReallyRequired,
    );
    router.add(
      'POST',
      r'/required',
      service.httpChecksumRequired,
    );
    router.add(
      'POST',
      r'/requiredWithMember',
      service.httpChecksumRequiredWithMember,
    );
    router.add(
      'POST',
      r'/nestedCollections',
      service.nestedCollections,
    );
    return router;
  }();

  _i3.Future<DefaultValuesOutput> defaultValues(
    DefaultValuesInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpChecksumNotRequiredWithMember(
    HttpChecksumNotRequiredWithMemberInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpChecksumReallyNotRequired(
    HttpChecksumReallyNotRequiredInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpChecksumReallyRequired(
    HttpChecksumReallyRequiredInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpChecksumRequired(
    HttpChecksumRequiredInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> httpChecksumRequiredWithMember(
    HttpChecksumRequiredWithMemberInput input,
    _i1.Context context,
  );
  _i3.Future<_i1.Unit> nestedCollections(
    NestedCollectionsInput input,
    _i1.Context context,
  );
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _CustomServer extends _i1.HttpServer<CustomServerBase> {
  _CustomServer(this.service);

  @override
  final CustomServerBase service;

  late final _i1.HttpProtocol<
      DefaultValuesInput,
      DefaultValuesInput,
      DefaultValuesOutput,
      DefaultValuesOutput> _defaultValuesProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i5.Uint8List,
          HttpChecksumNotRequiredWithMemberInput, _i1.Unit, _i1.Unit>
      _httpChecksumNotRequiredWithMemberProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      _i5.Uint8List,
      HttpChecksumReallyNotRequiredInput,
      _i1.Unit,
      _i1.Unit> _httpChecksumReallyNotRequiredProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      _i5.Uint8List,
      HttpChecksumReallyRequiredInput,
      _i1.Unit,
      _i1.Unit> _httpChecksumReallyRequiredProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<_i5.Uint8List, HttpChecksumRequiredInput,
      _i1.Unit, _i1.Unit> _httpChecksumRequiredProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<
      _i5.Uint8List,
      HttpChecksumRequiredWithMemberInput,
      _i1.Unit,
      _i1.Unit> _httpChecksumRequiredWithMemberProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  late final _i1.HttpProtocol<NestedCollectionsInput, NestedCollectionsInput,
      _i1.Unit, _i1.Unit> _nestedCollectionsProtocol = _i2.RestJson1Protocol(
    serializers: serializers,
    builderFactories: builderFactories,
  );

  _i3.Future<_i4.Response> defaultValues(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _defaultValuesProtocol.contentType;
    try {
      final payload = (await _defaultValuesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(DefaultValuesInput),
      ) as DefaultValuesInput);
      final input = DefaultValuesInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.defaultValues(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _defaultValuesProtocol.wireSerializer.serialize(
        output,
        specifiedType: const FullType(
          DefaultValuesOutput,
          [FullType(DefaultValuesOutput)],
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

  _i3.Future<_i4.Response> httpChecksumNotRequiredWithMember(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumNotRequiredWithMemberProtocol.contentType;
    try {
      final payload = (await _httpChecksumNotRequiredWithMemberProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
      final input = HttpChecksumNotRequiredWithMemberInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumNotRequiredWithMember(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpChecksumNotRequiredWithMemberProtocol
          .wireSerializer
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

  _i3.Future<_i4.Response> httpChecksumReallyNotRequired(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumReallyNotRequiredProtocol.contentType;
    try {
      final payload = (await _httpChecksumReallyNotRequiredProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
      final input = HttpChecksumReallyNotRequiredInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumReallyNotRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpChecksumReallyNotRequiredProtocol.wireSerializer.serialize(
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

  _i3.Future<_i4.Response> httpChecksumReallyRequired(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumReallyRequiredProtocol.contentType;
    try {
      final payload =
          (await _httpChecksumReallyRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
      final input = HttpChecksumReallyRequiredInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumReallyRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body =
          await _httpChecksumReallyRequiredProtocol.wireSerializer.serialize(
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

  _i3.Future<_i4.Response> httpChecksumRequired(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredProtocol.contentType;
    try {
      final payload =
          (await _httpChecksumRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
      final input = HttpChecksumRequiredInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumRequired(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpChecksumRequiredProtocol.wireSerializer.serialize(
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

  _i3.Future<_i4.Response> httpChecksumRequiredWithMember(
      _i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredWithMemberProtocol.contentType;
    try {
      final payload = (await _httpChecksumRequiredWithMemberProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i5.Uint8List),
      ) as _i5.Uint8List?);
      final input = HttpChecksumRequiredWithMemberInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.httpChecksumRequiredWithMember(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _httpChecksumRequiredWithMemberProtocol.wireSerializer
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

  _i3.Future<_i4.Response> nestedCollections(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nestedCollectionsProtocol.contentType;
    try {
      final payload =
          (await _nestedCollectionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(NestedCollectionsInput),
      ) as NestedCollectionsInput);
      final input = NestedCollectionsInput.fromRequest(
        payload,
        awsRequest,
        labels: {},
      );
      final output = await service.nestedCollections(
        input,
        context,
      );
      const statusCode = 200;
      final body = await _nestedCollectionsProtocol.wireSerializer.serialize(
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
}
