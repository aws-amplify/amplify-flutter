// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_gateway_response_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGatewayResponseRequest extends UpdateGatewayResponseRequest {
  @override
  final String restApiId;
  @override
  final GatewayResponseType responseType;
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateGatewayResponseRequest(
          [void Function(UpdateGatewayResponseRequestBuilder)? updates]) =>
      (new UpdateGatewayResponseRequestBuilder()..update(updates))._build();

  _$UpdateGatewayResponseRequest._(
      {required this.restApiId,
      required this.responseType,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateGatewayResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        responseType, r'UpdateGatewayResponseRequest', 'responseType');
  }

  @override
  UpdateGatewayResponseRequest rebuild(
          void Function(UpdateGatewayResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGatewayResponseRequestBuilder toBuilder() =>
      new UpdateGatewayResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGatewayResponseRequest &&
        restApiId == other.restApiId &&
        responseType == other.responseType &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, responseType.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGatewayResponseRequestBuilder
    implements
        Builder<UpdateGatewayResponseRequest,
            UpdateGatewayResponseRequestBuilder> {
  _$UpdateGatewayResponseRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GatewayResponseType? _responseType;
  GatewayResponseType? get responseType => _$this._responseType;
  set responseType(GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateGatewayResponseRequestBuilder();

  UpdateGatewayResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _responseType = $v.responseType;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGatewayResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGatewayResponseRequest;
  }

  @override
  void update(void Function(UpdateGatewayResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGatewayResponseRequest build() => _build();

  _$UpdateGatewayResponseRequest _build() {
    _$UpdateGatewayResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateGatewayResponseRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateGatewayResponseRequest', 'restApiId'),
              responseType: BuiltValueNullFieldError.checkNotNull(responseType,
                  r'UpdateGatewayResponseRequest', 'responseType'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGatewayResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateGatewayResponseRequestPayload
    extends UpdateGatewayResponseRequestPayload {
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateGatewayResponseRequestPayload(
          [void Function(UpdateGatewayResponseRequestPayloadBuilder)?
              updates]) =>
      (new UpdateGatewayResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateGatewayResponseRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateGatewayResponseRequestPayload rebuild(
          void Function(UpdateGatewayResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGatewayResponseRequestPayloadBuilder toBuilder() =>
      new UpdateGatewayResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGatewayResponseRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGatewayResponseRequestPayloadBuilder
    implements
        Builder<UpdateGatewayResponseRequestPayload,
            UpdateGatewayResponseRequestPayloadBuilder> {
  _$UpdateGatewayResponseRequestPayload? _$v;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateGatewayResponseRequestPayloadBuilder();

  UpdateGatewayResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGatewayResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGatewayResponseRequestPayload;
  }

  @override
  void update(
      void Function(UpdateGatewayResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGatewayResponseRequestPayload build() => _build();

  _$UpdateGatewayResponseRequestPayload _build() {
    _$UpdateGatewayResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateGatewayResponseRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGatewayResponseRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
