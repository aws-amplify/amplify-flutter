// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_gateway_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGatewayResponseRequest extends UpdateGatewayResponseRequest {
  @override
  final _i5.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final _i4.GatewayResponseType responseType;
  @override
  final String restApiId;

  factory _$UpdateGatewayResponseRequest(
          [void Function(UpdateGatewayResponseRequestBuilder)? updates]) =>
      (new UpdateGatewayResponseRequestBuilder()..update(updates))._build();

  _$UpdateGatewayResponseRequest._(
      {this.patchOperations,
      required this.responseType,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseType, r'UpdateGatewayResponseRequest', 'responseType');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateGatewayResponseRequest', 'restApiId');
  }

  @override
  UpdateGatewayResponseRequest rebuild(
          void Function(UpdateGatewayResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGatewayResponseRequestBuilder toBuilder() =>
      new UpdateGatewayResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGatewayResponseRequest &&
        patchOperations == other.patchOperations &&
        responseType == other.responseType &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, patchOperations.hashCode), responseType.hashCode),
        restApiId.hashCode));
  }
}

class UpdateGatewayResponseRequestBuilder
    implements
        Builder<UpdateGatewayResponseRequest,
            UpdateGatewayResponseRequestBuilder> {
  _$UpdateGatewayResponseRequest? _$v;

  _i5.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i5.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i5.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i5.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  _i4.GatewayResponseType? _responseType;
  _i4.GatewayResponseType? get responseType => _$this._responseType;
  set responseType(_i4.GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateGatewayResponseRequestBuilder() {
    UpdateGatewayResponseRequest._init(this);
  }

  UpdateGatewayResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _responseType = $v.responseType;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGatewayResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGatewayResponseRequest;
  }

  @override
  void update(void Function(UpdateGatewayResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGatewayResponseRequest build() => _build();

  _$UpdateGatewayResponseRequest _build() {
    _$UpdateGatewayResponseRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateGatewayResponseRequest._(
              patchOperations: _patchOperations?.build(),
              responseType: BuiltValueNullFieldError.checkNotNull(responseType,
                  r'UpdateGatewayResponseRequest', 'responseType'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateGatewayResponseRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGatewayResponseRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateGatewayResponseRequestPayload
    extends UpdateGatewayResponseRequestPayload {
  @override
  final _i5.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateGatewayResponseRequestPayload(
          [void Function(UpdateGatewayResponseRequestPayloadBuilder)?
              updates]) =>
      (new UpdateGatewayResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateGatewayResponseRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateGatewayResponseRequestPayload rebuild(
          void Function(UpdateGatewayResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGatewayResponseRequestPayloadBuilder toBuilder() =>
      new UpdateGatewayResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGatewayResponseRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateGatewayResponseRequestPayloadBuilder
    implements
        Builder<UpdateGatewayResponseRequestPayload,
            UpdateGatewayResponseRequestPayloadBuilder> {
  _$UpdateGatewayResponseRequestPayload? _$v;

  _i5.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i5.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i5.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i5.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateGatewayResponseRequestPayloadBuilder() {
    UpdateGatewayResponseRequestPayload._init(this);
  }

  UpdateGatewayResponseRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGatewayResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGatewayResponseRequestPayload;
  }

  @override
  void update(
      void Function(UpdateGatewayResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGatewayResponseRequestPayload build() => _build();

  _$UpdateGatewayResponseRequestPayload _build() {
    _$UpdateGatewayResponseRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateGatewayResponseRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGatewayResponseRequestPayload',
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
