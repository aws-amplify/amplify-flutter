// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stage_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStageRequest extends UpdateStageRequest {
  @override
  final String restApiId;
  @override
  final String stageName;
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateStageRequest(
          [void Function(UpdateStageRequestBuilder)? updates]) =>
      (new UpdateStageRequestBuilder()..update(updates))._build();

  _$UpdateStageRequest._(
      {required this.restApiId, required this.stageName, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateStageRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'UpdateStageRequest', 'stageName');
  }

  @override
  UpdateStageRequest rebuild(
          void Function(UpdateStageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStageRequestBuilder toBuilder() =>
      new UpdateStageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStageRequest &&
        restApiId == other.restApiId &&
        stageName == other.stageName &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateStageRequestBuilder
    implements Builder<UpdateStageRequest, UpdateStageRequestBuilder> {
  _$UpdateStageRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateStageRequestBuilder();

  UpdateStageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStageRequest;
  }

  @override
  void update(void Function(UpdateStageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStageRequest build() => _build();

  _$UpdateStageRequest _build() {
    _$UpdateStageRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateStageRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateStageRequest', 'restApiId'),
              stageName: BuiltValueNullFieldError.checkNotNull(
                  stageName, r'UpdateStageRequest', 'stageName'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateStageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateStageRequestPayload extends UpdateStageRequestPayload {
  @override
  final _i3.BuiltList<PatchOperation>? patchOperations;

  factory _$UpdateStageRequestPayload(
          [void Function(UpdateStageRequestPayloadBuilder)? updates]) =>
      (new UpdateStageRequestPayloadBuilder()..update(updates))._build();

  _$UpdateStageRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateStageRequestPayload rebuild(
          void Function(UpdateStageRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateStageRequestPayloadBuilder toBuilder() =>
      new UpdateStageRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStageRequestPayload &&
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

class UpdateStageRequestPayloadBuilder
    implements
        Builder<UpdateStageRequestPayload, UpdateStageRequestPayloadBuilder> {
  _$UpdateStageRequestPayload? _$v;

  _i3.ListBuilder<PatchOperation>? _patchOperations;
  _i3.ListBuilder<PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i3.ListBuilder<PatchOperation>();
  set patchOperations(_i3.ListBuilder<PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateStageRequestPayloadBuilder();

  UpdateStageRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStageRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateStageRequestPayload;
  }

  @override
  void update(void Function(UpdateStageRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStageRequestPayload build() => _build();

  _$UpdateStageRequestPayload _build() {
    _$UpdateStageRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateStageRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateStageRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
