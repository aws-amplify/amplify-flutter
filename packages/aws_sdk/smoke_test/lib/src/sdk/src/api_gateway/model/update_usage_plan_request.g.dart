// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_usage_plan_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUsagePlanRequest extends UpdateUsagePlanRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String usagePlanId;

  factory _$UpdateUsagePlanRequest(
          [void Function(UpdateUsagePlanRequestBuilder)? updates]) =>
      (new UpdateUsagePlanRequestBuilder()..update(updates))._build();

  _$UpdateUsagePlanRequest._({this.patchOperations, required this.usagePlanId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'UpdateUsagePlanRequest', 'usagePlanId');
  }

  @override
  UpdateUsagePlanRequest rebuild(
          void Function(UpdateUsagePlanRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUsagePlanRequestBuilder toBuilder() =>
      new UpdateUsagePlanRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUsagePlanRequest &&
        patchOperations == other.patchOperations &&
        usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateUsagePlanRequestBuilder
    implements Builder<UpdateUsagePlanRequest, UpdateUsagePlanRequestBuilder> {
  _$UpdateUsagePlanRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  UpdateUsagePlanRequestBuilder() {
    UpdateUsagePlanRequest._init(this);
  }

  UpdateUsagePlanRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUsagePlanRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUsagePlanRequest;
  }

  @override
  void update(void Function(UpdateUsagePlanRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUsagePlanRequest build() => _build();

  _$UpdateUsagePlanRequest _build() {
    _$UpdateUsagePlanRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateUsagePlanRequest._(
              patchOperations: _patchOperations?.build(),
              usagePlanId: BuiltValueNullFieldError.checkNotNull(
                  usagePlanId, r'UpdateUsagePlanRequest', 'usagePlanId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUsagePlanRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateUsagePlanRequestPayload extends UpdateUsagePlanRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateUsagePlanRequestPayload(
          [void Function(UpdateUsagePlanRequestPayloadBuilder)? updates]) =>
      (new UpdateUsagePlanRequestPayloadBuilder()..update(updates))._build();

  _$UpdateUsagePlanRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateUsagePlanRequestPayload rebuild(
          void Function(UpdateUsagePlanRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUsagePlanRequestPayloadBuilder toBuilder() =>
      new UpdateUsagePlanRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUsagePlanRequestPayload &&
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

class UpdateUsagePlanRequestPayloadBuilder
    implements
        Builder<UpdateUsagePlanRequestPayload,
            UpdateUsagePlanRequestPayloadBuilder> {
  _$UpdateUsagePlanRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateUsagePlanRequestPayloadBuilder() {
    UpdateUsagePlanRequestPayload._init(this);
  }

  UpdateUsagePlanRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUsagePlanRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUsagePlanRequestPayload;
  }

  @override
  void update(void Function(UpdateUsagePlanRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUsagePlanRequestPayload build() => _build();

  _$UpdateUsagePlanRequestPayload _build() {
    _$UpdateUsagePlanRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateUsagePlanRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUsagePlanRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
