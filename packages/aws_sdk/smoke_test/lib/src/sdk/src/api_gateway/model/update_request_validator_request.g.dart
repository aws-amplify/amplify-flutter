// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_request_validator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRequestValidatorRequest extends UpdateRequestValidatorRequest {
  @override
  final String restApiId;
  @override
  final String requestValidatorId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateRequestValidatorRequest(
          [void Function(UpdateRequestValidatorRequestBuilder)? updates]) =>
      (new UpdateRequestValidatorRequestBuilder()..update(updates))._build();

  _$UpdateRequestValidatorRequest._(
      {required this.restApiId,
      required this.requestValidatorId,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateRequestValidatorRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(requestValidatorId,
        r'UpdateRequestValidatorRequest', 'requestValidatorId');
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
        restApiId == other.restApiId &&
        requestValidatorId == other.requestValidatorId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, requestValidatorId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateRequestValidatorRequestBuilder
    implements
        Builder<UpdateRequestValidatorRequest,
            UpdateRequestValidatorRequestBuilder> {
  _$UpdateRequestValidatorRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _requestValidatorId;
  String? get requestValidatorId => _$this._requestValidatorId;
  set requestValidatorId(String? requestValidatorId) =>
      _$this._requestValidatorId = requestValidatorId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateRequestValidatorRequestBuilder() {
    UpdateRequestValidatorRequest._init(this);
  }

  UpdateRequestValidatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _requestValidatorId = $v.requestValidatorId;
      _patchOperations = $v.patchOperations?.toBuilder();
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
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateRequestValidatorRequest', 'restApiId'),
              requestValidatorId: BuiltValueNullFieldError.checkNotNull(
                  requestValidatorId,
                  r'UpdateRequestValidatorRequest',
                  'requestValidatorId'),
              patchOperations: _patchOperations?.build());
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
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
