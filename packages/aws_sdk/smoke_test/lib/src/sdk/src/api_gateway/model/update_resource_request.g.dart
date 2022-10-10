// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateResourceRequest extends UpdateResourceRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$UpdateResourceRequest(
          [void Function(UpdateResourceRequestBuilder)? updates]) =>
      (new UpdateResourceRequestBuilder()..update(updates))._build();

  _$UpdateResourceRequest._(
      {this.patchOperations, required this.resourceId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateResourceRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateResourceRequest', 'restApiId');
  }

  @override
  UpdateResourceRequest rebuild(
          void Function(UpdateResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateResourceRequestBuilder toBuilder() =>
      new UpdateResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateResourceRequest &&
        patchOperations == other.patchOperations &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, patchOperations.hashCode), resourceId.hashCode),
        restApiId.hashCode));
  }
}

class UpdateResourceRequestBuilder
    implements Builder<UpdateResourceRequest, UpdateResourceRequestBuilder> {
  _$UpdateResourceRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateResourceRequestBuilder() {
    UpdateResourceRequest._init(this);
  }

  UpdateResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateResourceRequest;
  }

  @override
  void update(void Function(UpdateResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateResourceRequest build() => _build();

  _$UpdateResourceRequest _build() {
    _$UpdateResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateResourceRequest._(
              patchOperations: _patchOperations?.build(),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'UpdateResourceRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateResourceRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateResourceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateResourceRequestPayload extends UpdateResourceRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateResourceRequestPayload(
          [void Function(UpdateResourceRequestPayloadBuilder)? updates]) =>
      (new UpdateResourceRequestPayloadBuilder()..update(updates))._build();

  _$UpdateResourceRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateResourceRequestPayload rebuild(
          void Function(UpdateResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateResourceRequestPayloadBuilder toBuilder() =>
      new UpdateResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateResourceRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateResourceRequestPayloadBuilder
    implements
        Builder<UpdateResourceRequestPayload,
            UpdateResourceRequestPayloadBuilder> {
  _$UpdateResourceRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateResourceRequestPayloadBuilder() {
    UpdateResourceRequestPayload._init(this);
  }

  UpdateResourceRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateResourceRequestPayload;
  }

  @override
  void update(void Function(UpdateResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateResourceRequestPayload build() => _build();

  _$UpdateResourceRequestPayload _build() {
    _$UpdateResourceRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateResourceRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateResourceRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
