// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAuthorizerRequest extends UpdateAuthorizerRequest {
  @override
  final String authorizerId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String restApiId;

  factory _$UpdateAuthorizerRequest(
          [void Function(UpdateAuthorizerRequestBuilder)? updates]) =>
      (new UpdateAuthorizerRequestBuilder()..update(updates))._build();

  _$UpdateAuthorizerRequest._(
      {required this.authorizerId,
      this.patchOperations,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authorizerId, r'UpdateAuthorizerRequest', 'authorizerId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateAuthorizerRequest', 'restApiId');
  }

  @override
  UpdateAuthorizerRequest rebuild(
          void Function(UpdateAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAuthorizerRequestBuilder toBuilder() =>
      new UpdateAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAuthorizerRequest &&
        authorizerId == other.authorizerId &&
        patchOperations == other.patchOperations &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, authorizerId.hashCode), patchOperations.hashCode),
        restApiId.hashCode));
  }
}

class UpdateAuthorizerRequestBuilder
    implements
        Builder<UpdateAuthorizerRequest, UpdateAuthorizerRequestBuilder> {
  _$UpdateAuthorizerRequest? _$v;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateAuthorizerRequestBuilder() {
    UpdateAuthorizerRequest._init(this);
  }

  UpdateAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizerId = $v.authorizerId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAuthorizerRequest;
  }

  @override
  void update(void Function(UpdateAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAuthorizerRequest build() => _build();

  _$UpdateAuthorizerRequest _build() {
    _$UpdateAuthorizerRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateAuthorizerRequest._(
              authorizerId: BuiltValueNullFieldError.checkNotNull(
                  authorizerId, r'UpdateAuthorizerRequest', 'authorizerId'),
              patchOperations: _patchOperations?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateAuthorizerRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAuthorizerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateAuthorizerRequestPayload extends UpdateAuthorizerRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateAuthorizerRequestPayload(
          [void Function(UpdateAuthorizerRequestPayloadBuilder)? updates]) =>
      (new UpdateAuthorizerRequestPayloadBuilder()..update(updates))._build();

  _$UpdateAuthorizerRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateAuthorizerRequestPayload rebuild(
          void Function(UpdateAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAuthorizerRequestPayloadBuilder toBuilder() =>
      new UpdateAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAuthorizerRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateAuthorizerRequestPayloadBuilder
    implements
        Builder<UpdateAuthorizerRequestPayload,
            UpdateAuthorizerRequestPayloadBuilder> {
  _$UpdateAuthorizerRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateAuthorizerRequestPayloadBuilder() {
    UpdateAuthorizerRequestPayload._init(this);
  }

  UpdateAuthorizerRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAuthorizerRequestPayload;
  }

  @override
  void update(void Function(UpdateAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAuthorizerRequestPayload build() => _build();

  _$UpdateAuthorizerRequestPayload _build() {
    _$UpdateAuthorizerRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateAuthorizerRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAuthorizerRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
