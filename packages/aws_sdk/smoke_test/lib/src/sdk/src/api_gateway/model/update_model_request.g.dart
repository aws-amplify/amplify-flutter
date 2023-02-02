// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_model_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateModelRequest extends UpdateModelRequest {
  @override
  final String modelName;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String restApiId;

  factory _$UpdateModelRequest(
          [void Function(UpdateModelRequestBuilder)? updates]) =>
      (new UpdateModelRequestBuilder()..update(updates))._build();

  _$UpdateModelRequest._(
      {required this.modelName, this.patchOperations, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        modelName, r'UpdateModelRequest', 'modelName');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateModelRequest', 'restApiId');
  }

  @override
  UpdateModelRequest rebuild(
          void Function(UpdateModelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateModelRequestBuilder toBuilder() =>
      new UpdateModelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateModelRequest &&
        modelName == other.modelName &&
        patchOperations == other.patchOperations &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateModelRequestBuilder
    implements Builder<UpdateModelRequest, UpdateModelRequestBuilder> {
  _$UpdateModelRequest? _$v;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  UpdateModelRequestBuilder() {
    UpdateModelRequest._init(this);
  }

  UpdateModelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelName = $v.modelName;
      _patchOperations = $v.patchOperations?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateModelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateModelRequest;
  }

  @override
  void update(void Function(UpdateModelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateModelRequest build() => _build();

  _$UpdateModelRequest _build() {
    _$UpdateModelRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateModelRequest._(
              modelName: BuiltValueNullFieldError.checkNotNull(
                  modelName, r'UpdateModelRequest', 'modelName'),
              patchOperations: _patchOperations?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateModelRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateModelRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateModelRequestPayload extends UpdateModelRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateModelRequestPayload(
          [void Function(UpdateModelRequestPayloadBuilder)? updates]) =>
      (new UpdateModelRequestPayloadBuilder()..update(updates))._build();

  _$UpdateModelRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateModelRequestPayload rebuild(
          void Function(UpdateModelRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateModelRequestPayloadBuilder toBuilder() =>
      new UpdateModelRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateModelRequestPayload &&
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

class UpdateModelRequestPayloadBuilder
    implements
        Builder<UpdateModelRequestPayload, UpdateModelRequestPayloadBuilder> {
  _$UpdateModelRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateModelRequestPayloadBuilder() {
    UpdateModelRequestPayload._init(this);
  }

  UpdateModelRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateModelRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateModelRequestPayload;
  }

  @override
  void update(void Function(UpdateModelRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateModelRequestPayload build() => _build();

  _$UpdateModelRequestPayload _build() {
    _$UpdateModelRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateModelRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateModelRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
