// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_stage_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStageRequest extends UpdateStageRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String restApiId;
  @override
  final String stageName;

  factory _$UpdateStageRequest(
          [void Function(UpdateStageRequestBuilder)? updates]) =>
      (new UpdateStageRequestBuilder()..update(updates))._build();

  _$UpdateStageRequest._(
      {this.patchOperations, required this.restApiId, required this.stageName})
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
        patchOperations == other.patchOperations &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, patchOperations.hashCode), restApiId.hashCode),
        stageName.hashCode));
  }
}

class UpdateStageRequestBuilder
    implements Builder<UpdateStageRequest, UpdateStageRequestBuilder> {
  _$UpdateStageRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  UpdateStageRequestBuilder() {
    UpdateStageRequest._init(this);
  }

  UpdateStageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
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
              patchOperations: _patchOperations?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateStageRequest', 'restApiId'),
              stageName: BuiltValueNullFieldError.checkNotNull(
                  stageName, r'UpdateStageRequest', 'stageName'));
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
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

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
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateStageRequestPayloadBuilder
    implements
        Builder<UpdateStageRequestPayload, UpdateStageRequestPayloadBuilder> {
  _$UpdateStageRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateStageRequestPayloadBuilder() {
    UpdateStageRequestPayload._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
