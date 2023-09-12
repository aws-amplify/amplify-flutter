// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_usage_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUsageRequest extends UpdateUsageRequest {
  @override
  final String usagePlanId;
  @override
  final String keyId;
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateUsageRequest(
          [void Function(UpdateUsageRequestBuilder)? updates]) =>
      (new UpdateUsageRequestBuilder()..update(updates))._build();

  _$UpdateUsageRequest._(
      {required this.usagePlanId, required this.keyId, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'UpdateUsageRequest', 'usagePlanId');
    BuiltValueNullFieldError.checkNotNull(
        keyId, r'UpdateUsageRequest', 'keyId');
  }

  @override
  UpdateUsageRequest rebuild(
          void Function(UpdateUsageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUsageRequestBuilder toBuilder() =>
      new UpdateUsageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUsageRequest &&
        usagePlanId == other.usagePlanId &&
        keyId == other.keyId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateUsageRequestBuilder
    implements Builder<UpdateUsageRequest, UpdateUsageRequestBuilder> {
  _$UpdateUsageRequest? _$v;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateUsageRequestBuilder();

  UpdateUsageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usagePlanId = $v.usagePlanId;
      _keyId = $v.keyId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUsageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUsageRequest;
  }

  @override
  void update(void Function(UpdateUsageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUsageRequest build() => _build();

  _$UpdateUsageRequest _build() {
    _$UpdateUsageRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateUsageRequest._(
              usagePlanId: BuiltValueNullFieldError.checkNotNull(
                  usagePlanId, r'UpdateUsageRequest', 'usagePlanId'),
              keyId: BuiltValueNullFieldError.checkNotNull(
                  keyId, r'UpdateUsageRequest', 'keyId'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUsageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateUsageRequestPayload extends UpdateUsageRequestPayload {
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateUsageRequestPayload(
          [void Function(UpdateUsageRequestPayloadBuilder)? updates]) =>
      (new UpdateUsageRequestPayloadBuilder()..update(updates))._build();

  _$UpdateUsageRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateUsageRequestPayload rebuild(
          void Function(UpdateUsageRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUsageRequestPayloadBuilder toBuilder() =>
      new UpdateUsageRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUsageRequestPayload &&
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

class UpdateUsageRequestPayloadBuilder
    implements
        Builder<UpdateUsageRequestPayload, UpdateUsageRequestPayloadBuilder> {
  _$UpdateUsageRequestPayload? _$v;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateUsageRequestPayloadBuilder();

  UpdateUsageRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUsageRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUsageRequestPayload;
  }

  @override
  void update(void Function(UpdateUsageRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUsageRequestPayload build() => _build();

  _$UpdateUsageRequestPayload _build() {
    _$UpdateUsageRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateUsageRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUsageRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint