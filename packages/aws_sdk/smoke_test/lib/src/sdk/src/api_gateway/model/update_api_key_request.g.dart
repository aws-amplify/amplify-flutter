// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_api_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateApiKeyRequest extends UpdateApiKeyRequest {
  @override
  final String apiKey;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateApiKeyRequest(
          [void Function(UpdateApiKeyRequestBuilder)? updates]) =>
      (new UpdateApiKeyRequestBuilder()..update(updates))._build();

  _$UpdateApiKeyRequest._({required this.apiKey, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKey, r'UpdateApiKeyRequest', 'apiKey');
  }

  @override
  UpdateApiKeyRequest rebuild(
          void Function(UpdateApiKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateApiKeyRequestBuilder toBuilder() =>
      new UpdateApiKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateApiKeyRequest &&
        apiKey == other.apiKey &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateApiKeyRequestBuilder
    implements Builder<UpdateApiKeyRequest, UpdateApiKeyRequestBuilder> {
  _$UpdateApiKeyRequest? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateApiKeyRequestBuilder() {
    UpdateApiKeyRequest._init(this);
  }

  UpdateApiKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateApiKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateApiKeyRequest;
  }

  @override
  void update(void Function(UpdateApiKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateApiKeyRequest build() => _build();

  _$UpdateApiKeyRequest _build() {
    _$UpdateApiKeyRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateApiKeyRequest._(
              apiKey: BuiltValueNullFieldError.checkNotNull(
                  apiKey, r'UpdateApiKeyRequest', 'apiKey'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateApiKeyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateApiKeyRequestPayload extends UpdateApiKeyRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateApiKeyRequestPayload(
          [void Function(UpdateApiKeyRequestPayloadBuilder)? updates]) =>
      (new UpdateApiKeyRequestPayloadBuilder()..update(updates))._build();

  _$UpdateApiKeyRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateApiKeyRequestPayload rebuild(
          void Function(UpdateApiKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateApiKeyRequestPayloadBuilder toBuilder() =>
      new UpdateApiKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateApiKeyRequestPayload &&
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

class UpdateApiKeyRequestPayloadBuilder
    implements
        Builder<UpdateApiKeyRequestPayload, UpdateApiKeyRequestPayloadBuilder> {
  _$UpdateApiKeyRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateApiKeyRequestPayloadBuilder() {
    UpdateApiKeyRequestPayload._init(this);
  }

  UpdateApiKeyRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateApiKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateApiKeyRequestPayload;
  }

  @override
  void update(void Function(UpdateApiKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateApiKeyRequestPayload build() => _build();

  _$UpdateApiKeyRequestPayload _build() {
    _$UpdateApiKeyRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateApiKeyRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateApiKeyRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
