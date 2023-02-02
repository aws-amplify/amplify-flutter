// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_rest_api_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRestApiRequest extends UpdateRestApiRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String restApiId;

  factory _$UpdateRestApiRequest(
          [void Function(UpdateRestApiRequestBuilder)? updates]) =>
      (new UpdateRestApiRequestBuilder()..update(updates))._build();

  _$UpdateRestApiRequest._({this.patchOperations, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateRestApiRequest', 'restApiId');
  }

  @override
  UpdateRestApiRequest rebuild(
          void Function(UpdateRestApiRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRestApiRequestBuilder toBuilder() =>
      new UpdateRestApiRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRestApiRequest &&
        patchOperations == other.patchOperations &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateRestApiRequestBuilder
    implements Builder<UpdateRestApiRequest, UpdateRestApiRequestBuilder> {
  _$UpdateRestApiRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateRestApiRequestBuilder() {
    UpdateRestApiRequest._init(this);
  }

  UpdateRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRestApiRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRestApiRequest;
  }

  @override
  void update(void Function(UpdateRestApiRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRestApiRequest build() => _build();

  _$UpdateRestApiRequest _build() {
    _$UpdateRestApiRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateRestApiRequest._(
              patchOperations: _patchOperations?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateRestApiRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateRestApiRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateRestApiRequestPayload extends UpdateRestApiRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateRestApiRequestPayload(
          [void Function(UpdateRestApiRequestPayloadBuilder)? updates]) =>
      (new UpdateRestApiRequestPayloadBuilder()..update(updates))._build();

  _$UpdateRestApiRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateRestApiRequestPayload rebuild(
          void Function(UpdateRestApiRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRestApiRequestPayloadBuilder toBuilder() =>
      new UpdateRestApiRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRestApiRequestPayload &&
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

class UpdateRestApiRequestPayloadBuilder
    implements
        Builder<UpdateRestApiRequestPayload,
            UpdateRestApiRequestPayloadBuilder> {
  _$UpdateRestApiRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateRestApiRequestPayloadBuilder() {
    UpdateRestApiRequestPayload._init(this);
  }

  UpdateRestApiRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRestApiRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRestApiRequestPayload;
  }

  @override
  void update(void Function(UpdateRestApiRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRestApiRequestPayload build() => _build();

  _$UpdateRestApiRequestPayload _build() {
    _$UpdateRestApiRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateRestApiRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateRestApiRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
