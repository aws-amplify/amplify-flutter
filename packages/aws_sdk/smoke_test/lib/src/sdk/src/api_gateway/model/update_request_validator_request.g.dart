// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_request_validator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRequestValidatorRequest extends UpdateRequestValidatorRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String requestValidatorId;
  @override
  final String restApiId;

  factory _$UpdateRequestValidatorRequest(
          [void Function(UpdateRequestValidatorRequestBuilder)? updates]) =>
      (new UpdateRequestValidatorRequestBuilder()..update(updates))._build();

  _$UpdateRequestValidatorRequest._(
      {this.patchOperations,
      required this.requestValidatorId,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(requestValidatorId,
        r'UpdateRequestValidatorRequest', 'requestValidatorId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateRequestValidatorRequest', 'restApiId');
  }

  @override
  UpdateRequestValidatorRequest rebuild(
          void Function(UpdateRequestValidatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRequestValidatorRequestBuilder toBuilder() =>
      new UpdateRequestValidatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRequestValidatorRequest &&
        patchOperations == other.patchOperations &&
        requestValidatorId == other.requestValidatorId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, patchOperations.hashCode), requestValidatorId.hashCode),
        restApiId.hashCode));
  }
}

class UpdateRequestValidatorRequestBuilder
    implements
        Builder<UpdateRequestValidatorRequest,
            UpdateRequestValidatorRequestBuilder> {
  _$UpdateRequestValidatorRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateRequestValidatorRequestBuilder() {
    UpdateRequestValidatorRequest._init(this);
  }

  UpdateRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _requestValidatorId = $v.requestValidatorId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRequestValidatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRequestValidatorRequest;
  }

  @override
  void update(void Function(UpdateRequestValidatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRequestValidatorRequest build() => _build();

  _$UpdateRequestValidatorRequest _build() {
    _$UpdateRequestValidatorRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateRequestValidatorRequest._(
              patchOperations: _patchOperations?.build(),
              requestValidatorId: BuiltValueNullFieldError.checkNotNull(
                  requestValidatorId,
                  r'UpdateRequestValidatorRequest',
                  'requestValidatorId'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateRequestValidatorRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateRequestValidatorRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateRequestValidatorRequestPayload
    extends UpdateRequestValidatorRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateRequestValidatorRequestPayload(
          [void Function(UpdateRequestValidatorRequestPayloadBuilder)?
              updates]) =>
      (new UpdateRequestValidatorRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateRequestValidatorRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateRequestValidatorRequestPayload rebuild(
          void Function(UpdateRequestValidatorRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRequestValidatorRequestPayloadBuilder toBuilder() =>
      new UpdateRequestValidatorRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRequestValidatorRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateRequestValidatorRequestPayloadBuilder
    implements
        Builder<UpdateRequestValidatorRequestPayload,
            UpdateRequestValidatorRequestPayloadBuilder> {
  _$UpdateRequestValidatorRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateRequestValidatorRequestPayloadBuilder() {
    UpdateRequestValidatorRequestPayload._init(this);
  }

  UpdateRequestValidatorRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRequestValidatorRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRequestValidatorRequestPayload;
  }

  @override
  void update(
      void Function(UpdateRequestValidatorRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRequestValidatorRequestPayload build() => _build();

  _$UpdateRequestValidatorRequestPayload _build() {
    _$UpdateRequestValidatorRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateRequestValidatorRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateRequestValidatorRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
