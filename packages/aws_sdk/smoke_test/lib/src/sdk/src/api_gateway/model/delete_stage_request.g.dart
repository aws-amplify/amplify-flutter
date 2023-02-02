// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_stage_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStageRequest extends DeleteStageRequest {
  @override
  final String restApiId;
  @override
  final String stageName;

  factory _$DeleteStageRequest(
          [void Function(DeleteStageRequestBuilder)? updates]) =>
      (new DeleteStageRequestBuilder()..update(updates))._build();

  _$DeleteStageRequest._({required this.restApiId, required this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteStageRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'DeleteStageRequest', 'stageName');
  }

  @override
  DeleteStageRequest rebuild(
          void Function(DeleteStageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStageRequestBuilder toBuilder() =>
      new DeleteStageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStageRequest &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteStageRequestBuilder
    implements Builder<DeleteStageRequest, DeleteStageRequestBuilder> {
  _$DeleteStageRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  DeleteStageRequestBuilder() {
    DeleteStageRequest._init(this);
  }

  DeleteStageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteStageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStageRequest;
  }

  @override
  void update(void Function(DeleteStageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStageRequest build() => _build();

  _$DeleteStageRequest _build() {
    final _$result = _$v ??
        new _$DeleteStageRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteStageRequest', 'restApiId'),
            stageName: BuiltValueNullFieldError.checkNotNull(
                stageName, r'DeleteStageRequest', 'stageName'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteStageRequestPayload extends DeleteStageRequestPayload {
  factory _$DeleteStageRequestPayload(
          [void Function(DeleteStageRequestPayloadBuilder)? updates]) =>
      (new DeleteStageRequestPayloadBuilder()..update(updates))._build();

  _$DeleteStageRequestPayload._() : super._();

  @override
  DeleteStageRequestPayload rebuild(
          void Function(DeleteStageRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStageRequestPayloadBuilder toBuilder() =>
      new DeleteStageRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStageRequestPayload;
  }

  @override
  int get hashCode {
    return 561929648;
  }
}

class DeleteStageRequestPayloadBuilder
    implements
        Builder<DeleteStageRequestPayload, DeleteStageRequestPayloadBuilder> {
  _$DeleteStageRequestPayload? _$v;

  DeleteStageRequestPayloadBuilder() {
    DeleteStageRequestPayload._init(this);
  }

  @override
  void replace(DeleteStageRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStageRequestPayload;
  }

  @override
  void update(void Function(DeleteStageRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStageRequestPayload build() => _build();

  _$DeleteStageRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteStageRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
