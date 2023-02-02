// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_model_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteModelRequest extends DeleteModelRequest {
  @override
  final String modelName;
  @override
  final String restApiId;

  factory _$DeleteModelRequest(
          [void Function(DeleteModelRequestBuilder)? updates]) =>
      (new DeleteModelRequestBuilder()..update(updates))._build();

  _$DeleteModelRequest._({required this.modelName, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        modelName, r'DeleteModelRequest', 'modelName');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteModelRequest', 'restApiId');
  }

  @override
  DeleteModelRequest rebuild(
          void Function(DeleteModelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteModelRequestBuilder toBuilder() =>
      new DeleteModelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteModelRequest &&
        modelName == other.modelName &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modelName.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteModelRequestBuilder
    implements Builder<DeleteModelRequest, DeleteModelRequestBuilder> {
  _$DeleteModelRequest? _$v;

  String? _modelName;
  String? get modelName => _$this._modelName;
  set modelName(String? modelName) => _$this._modelName = modelName;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteModelRequestBuilder() {
    DeleteModelRequest._init(this);
  }

  DeleteModelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelName = $v.modelName;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteModelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteModelRequest;
  }

  @override
  void update(void Function(DeleteModelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteModelRequest build() => _build();

  _$DeleteModelRequest _build() {
    final _$result = _$v ??
        new _$DeleteModelRequest._(
            modelName: BuiltValueNullFieldError.checkNotNull(
                modelName, r'DeleteModelRequest', 'modelName'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteModelRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteModelRequestPayload extends DeleteModelRequestPayload {
  factory _$DeleteModelRequestPayload(
          [void Function(DeleteModelRequestPayloadBuilder)? updates]) =>
      (new DeleteModelRequestPayloadBuilder()..update(updates))._build();

  _$DeleteModelRequestPayload._() : super._();

  @override
  DeleteModelRequestPayload rebuild(
          void Function(DeleteModelRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteModelRequestPayloadBuilder toBuilder() =>
      new DeleteModelRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteModelRequestPayload;
  }

  @override
  int get hashCode {
    return 464759840;
  }
}

class DeleteModelRequestPayloadBuilder
    implements
        Builder<DeleteModelRequestPayload, DeleteModelRequestPayloadBuilder> {
  _$DeleteModelRequestPayload? _$v;

  DeleteModelRequestPayloadBuilder() {
    DeleteModelRequestPayload._init(this);
  }

  @override
  void replace(DeleteModelRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteModelRequestPayload;
  }

  @override
  void update(void Function(DeleteModelRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteModelRequestPayload build() => _build();

  _$DeleteModelRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteModelRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
