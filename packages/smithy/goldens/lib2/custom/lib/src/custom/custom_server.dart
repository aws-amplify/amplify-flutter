// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.custom_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;
import 'dart:typed_data' as _i14;

import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/common/serializers.dart' as _i3;
import 'package:custom_v2/src/custom/model/default_values_input.dart' as _i6;
import 'package:custom_v2/src/custom/model/default_values_output.dart' as _i5;
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart'
    as _i7;
import 'package:custom_v2/src/custom/model/http_checksum_really_not_required_input.dart'
    as _i8;
import 'package:custom_v2/src/custom/model/http_checksum_really_required_input.dart'
    as _i9;
import 'package:custom_v2/src/custom/model/http_checksum_required_input.dart'
    as _i10;
import 'package:custom_v2/src/custom/model/http_checksum_required_with_member_input.dart'
    as _i11;
import 'package:custom_v2/src/custom/model/nested_collections_input.dart'
    as _i12;
import 'package:shelf/shelf.dart' as _i13;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

abstract class CustomServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
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

  _i4.Future<_i5.DefaultValuesOutput> defaultValues(
    _i6.DefaultValuesInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpChecksumNotRequiredWithMember(
    _i7.HttpChecksumNotRequiredWithMemberInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpChecksumReallyNotRequired(
    _i8.HttpChecksumReallyNotRequiredInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpChecksumReallyRequired(
    _i9.HttpChecksumReallyRequiredInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpChecksumRequired(
    _i10.HttpChecksumRequiredInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> httpChecksumRequiredWithMember(
    _i11.HttpChecksumRequiredWithMemberInput input,
    _i1.Context context,
  );
  _i4.Future<_i1.Unit> nestedCollections(
    _i12.NestedCollectionsInput input,
    _i1.Context context,
  );
  _i4.Future<_i13.Response> call(_i13.Request request) => _router(request);
}

class _CustomServer extends _i1.HttpServer<CustomServerBase> {
  _CustomServer(this.service);

  @override
  final CustomServerBase service;

  late final _i1.HttpProtocol<
      _i6.DefaultValuesInput,
      _i6.DefaultValuesInput,
      _i5.DefaultValuesOutput,
      _i5.DefaultValuesOutput> _defaultValuesProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i14.Uint8List,
          _i7.HttpChecksumNotRequiredWithMemberInput, _i1.Unit, _i1.Unit>
      _httpChecksumNotRequiredWithMemberProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i14.Uint8List,
      _i8.HttpChecksumReallyNotRequiredInput,
      _i1.Unit,
      _i1.Unit> _httpChecksumReallyNotRequiredProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i14.Uint8List,
      _i9.HttpChecksumReallyRequiredInput,
      _i1.Unit,
      _i1.Unit> _httpChecksumReallyRequiredProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<_i14.Uint8List, _i10.HttpChecksumRequiredInput,
      _i1.Unit, _i1.Unit> _httpChecksumRequiredProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i14.Uint8List,
      _i11.HttpChecksumRequiredWithMemberInput,
      _i1.Unit,
      _i1.Unit> _httpChecksumRequiredWithMemberProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  late final _i1.HttpProtocol<
      _i12.NestedCollectionsInput,
      _i12.NestedCollectionsInput,
      _i1.Unit,
      _i1.Unit> _nestedCollectionsProtocol = _i2.RestJson1Protocol(
    serializers: _i3.serializers,
    builderFactories: _i3.builderFactories,
  );

  _i4.Future<_i13.Response> defaultValues(_i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _defaultValuesProtocol.contentType;
    try {
      final payload = (await _defaultValuesProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i6.DefaultValuesInput),
      ) as _i6.DefaultValuesInput);
      final input = _i6.DefaultValuesInput.fromRequest(
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
          _i5.DefaultValuesOutput,
          [FullType(_i5.DefaultValuesOutput)],
        ),
      );
      return _i13.Response(
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

  _i4.Future<_i13.Response> httpChecksumNotRequiredWithMember(
      _i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumNotRequiredWithMemberProtocol.contentType;
    try {
      final payload = (await _httpChecksumNotRequiredWithMemberProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i14.Uint8List),
      ) as _i14.Uint8List?);
      final input = _i7.HttpChecksumNotRequiredWithMemberInput.fromRequest(
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
      return _i13.Response(
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

  _i4.Future<_i13.Response> httpChecksumReallyNotRequired(
      _i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumReallyNotRequiredProtocol.contentType;
    try {
      final payload = (await _httpChecksumReallyNotRequiredProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i14.Uint8List),
      ) as _i14.Uint8List?);
      final input = _i8.HttpChecksumReallyNotRequiredInput.fromRequest(
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
      return _i13.Response(
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

  _i4.Future<_i13.Response> httpChecksumReallyRequired(
      _i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumReallyRequiredProtocol.contentType;
    try {
      final payload =
          (await _httpChecksumReallyRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i14.Uint8List),
      ) as _i14.Uint8List?);
      final input = _i9.HttpChecksumReallyRequiredInput.fromRequest(
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
      return _i13.Response(
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

  _i4.Future<_i13.Response> httpChecksumRequired(_i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredProtocol.contentType;
    try {
      final payload =
          (await _httpChecksumRequiredProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i14.Uint8List),
      ) as _i14.Uint8List?);
      final input = _i10.HttpChecksumRequiredInput.fromRequest(
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
      return _i13.Response(
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

  _i4.Future<_i13.Response> httpChecksumRequiredWithMember(
      _i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _httpChecksumRequiredWithMemberProtocol.contentType;
    try {
      final payload = (await _httpChecksumRequiredWithMemberProtocol
          .wireSerializer
          .deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType.nullable(_i14.Uint8List),
      ) as _i14.Uint8List?);
      final input = _i11.HttpChecksumRequiredWithMemberInput.fromRequest(
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
      return _i13.Response(
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

  _i4.Future<_i13.Response> nestedCollections(_i13.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _nestedCollectionsProtocol.contentType;
    try {
      final payload =
          (await _nestedCollectionsProtocol.wireSerializer.deserialize(
        await awsRequest.bodyBytes,
        specifiedType: const FullType(_i12.NestedCollectionsInput),
      ) as _i12.NestedCollectionsInput);
      final input = _i12.NestedCollectionsInput.fromRequest(
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
      return _i13.Response(
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
