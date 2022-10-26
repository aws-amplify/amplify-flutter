// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_method_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMethodResponseRequest extends UpdateMethodResponseRequest {
  @override
  final String httpMethod;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String resourceId;
  @override
  final String restApiId;
  @override
  final String statusCode;

  factory _$UpdateMethodResponseRequest(
          [void Function(UpdateMethodResponseRequestBuilder)? updates]) =>
      (new UpdateMethodResponseRequestBuilder()..update(updates))._build();

  _$UpdateMethodResponseRequest._(
      {required this.httpMethod,
      this.patchOperations,
      required this.resourceId,
      required this.restApiId,
      required this.statusCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'UpdateMethodResponseRequest', 'httpMethod');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateMethodResponseRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateMethodResponseRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'UpdateMethodResponseRequest', 'statusCode');
  }

  @override
  UpdateMethodResponseRequest rebuild(
          void Function(UpdateMethodResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMethodResponseRequestBuilder toBuilder() =>
      new UpdateMethodResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMethodResponseRequest &&
        httpMethod == other.httpMethod &&
        patchOperations == other.patchOperations &&
        resourceId == other.resourceId &&
        restApiId == other.restApiId &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, httpMethod.hashCode), patchOperations.hashCode),
                resourceId.hashCode),
            restApiId.hashCode),
        statusCode.hashCode));
  }
}

class UpdateMethodResponseRequestBuilder
    implements
        Builder<UpdateMethodResponseRequest,
            UpdateMethodResponseRequestBuilder> {
  _$UpdateMethodResponseRequest? _$v;

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

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  UpdateMethodResponseRequestBuilder() {
    UpdateMethodResponseRequest._init(this);
  }

  UpdateMethodResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpMethod = $v.httpMethod;
      _patchOperations = $v.patchOperations?.toBuilder();
      _resourceId = $v.resourceId;
      _restApiId = $v.restApiId;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMethodResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateMethodResponseRequest;
  }

  @override
  void update(void Function(UpdateMethodResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMethodResponseRequest build() => _build();

  _$UpdateMethodResponseRequest _build() {
    _$UpdateMethodResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateMethodResponseRequest._(
              httpMethod: BuiltValueNullFieldError.checkNotNull(
                  httpMethod, r'UpdateMethodResponseRequest', 'httpMethod'),
              patchOperations: _patchOperations?.build(),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'UpdateMethodResponseRequest', 'resourceId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateMethodResponseRequest', 'restApiId'),
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, r'UpdateMethodResponseRequest', 'statusCode'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateMethodResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateMethodResponseRequestPayload
    extends UpdateMethodResponseRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateMethodResponseRequestPayload(
          [void Function(UpdateMethodResponseRequestPayloadBuilder)?
              updates]) =>
      (new UpdateMethodResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateMethodResponseRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateMethodResponseRequestPayload rebuild(
          void Function(UpdateMethodResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMethodResponseRequestPayloadBuilder toBuilder() =>
      new UpdateMethodResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMethodResponseRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateMethodResponseRequestPayloadBuilder
    implements
        Builder<UpdateMethodResponseRequestPayload,
            UpdateMethodResponseRequestPayloadBuilder> {
  _$UpdateMethodResponseRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateMethodResponseRequestPayloadBuilder() {
    UpdateMethodResponseRequestPayload._init(this);
  }

  UpdateMethodResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMethodResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateMethodResponseRequestPayload;
  }

  @override
  void update(
      void Function(UpdateMethodResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMethodResponseRequestPayload build() => _build();

  _$UpdateMethodResponseRequestPayload _build() {
    _$UpdateMethodResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateMethodResponseRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateMethodResponseRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
