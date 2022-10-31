// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_method_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMethodRequest extends UpdateMethodRequest {
  @override
  final String httpMethod;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String resourceId;
  @override
  final String restApiId;

  factory _$UpdateMethodRequest(
          [void Function(UpdateMethodRequestBuilder)? updates]) =>
      (new UpdateMethodRequestBuilder()..update(updates))._build();

  _$UpdateMethodRequest._(
      {required this.httpMethod,
      this.patchOperations,
      required this.resourceId,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'UpdateMethodRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateMethodRequest', 'restApiId');
  }

  @override
  UpdateMethodRequest rebuild(
          void Function(UpdateMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMethodRequestBuilder toBuilder() =>
      new UpdateMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMethodRequest &&
        httpMethod == other.httpMethod &&
        patchOperations == other.patchOperations &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, httpMethod.hashCode), patchOperations.hashCode),
            resourceId.hashCode),
        restApiId.hashCode));
  }
}

class UpdateMethodRequestBuilder
    implements Builder<UpdateMethodRequest, UpdateMethodRequestBuilder> {
  _$UpdateMethodRequest? _$v;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

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

  UpdateMethodRequestBuilder() {
    UpdateMethodRequest._init(this);
  }

  UpdateMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _patchOperations = $v.patchOperations?.toBuilder();
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateMethodRequest;
  }

  @override
  void update(void Function(UpdateMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMethodRequest build() => _build();

  _$UpdateMethodRequest _build() {
    _$UpdateMethodRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateMethodRequest._(
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'UpdateMethodRequest', 'httpMethod'),
              patchOperations: _patchOperations?.build(),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'UpdateMethodRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateMethodRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateMethodRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateMethodRequestPayload extends UpdateMethodRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateMethodRequestPayload(
          [void Function(UpdateMethodRequestPayloadBuilder)? updates]) =>
      (new UpdateMethodRequestPayloadBuilder()..update(updates))._build();

  _$UpdateMethodRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateMethodRequestPayload rebuild(
          void Function(UpdateMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMethodRequestPayloadBuilder toBuilder() =>
      new UpdateMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMethodRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateMethodRequestPayloadBuilder
    implements
        Builder<UpdateMethodRequestPayload, UpdateMethodRequestPayloadBuilder> {
  _$UpdateMethodRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateMethodRequestPayloadBuilder() {
    UpdateMethodRequestPayload._init(this);
  }

  UpdateMethodRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateMethodRequestPayload;
  }

  @override
  void update(void Function(UpdateMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMethodRequestPayload build() => _build();

  _$UpdateMethodRequestPayload _build() {
    _$UpdateMethodRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateMethodRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateMethodRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
