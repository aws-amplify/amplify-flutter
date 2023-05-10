// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteResourceRequest extends DeleteResourceRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;

  factory _$DeleteResourceRequest(
          [void Function(DeleteResourceRequestBuilder)? updates]) =>
      (new DeleteResourceRequestBuilder()..update(updates))._build();

  _$DeleteResourceRequest._({required this.restApiId, required this.resourceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteResourceRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteResourceRequest', 'resourceId');
  }

  @override
  DeleteResourceRequest rebuild(
          void Function(DeleteResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResourceRequestBuilder toBuilder() =>
      new DeleteResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResourceRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteResourceRequestBuilder
    implements Builder<DeleteResourceRequest, DeleteResourceRequestBuilder> {
  _$DeleteResourceRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  DeleteResourceRequestBuilder() {
    DeleteResourceRequest._init(this);
  }

  DeleteResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteResourceRequest;
  }

  @override
  void update(void Function(DeleteResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResourceRequest build() => _build();

  _$DeleteResourceRequest _build() {
    final _$result = _$v ??
        new _$DeleteResourceRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteResourceRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteResourceRequest', 'resourceId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteResourceRequestPayload extends DeleteResourceRequestPayload {
  factory _$DeleteResourceRequestPayload(
          [void Function(DeleteResourceRequestPayloadBuilder)? updates]) =>
      (new DeleteResourceRequestPayloadBuilder()..update(updates))._build();

  _$DeleteResourceRequestPayload._() : super._();

  @override
  DeleteResourceRequestPayload rebuild(
          void Function(DeleteResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResourceRequestPayloadBuilder toBuilder() =>
      new DeleteResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResourceRequestPayload;
  }

  @override
  int get hashCode {
    return 1008778010;
  }
}

class DeleteResourceRequestPayloadBuilder
    implements
        Builder<DeleteResourceRequestPayload,
            DeleteResourceRequestPayloadBuilder> {
  _$DeleteResourceRequestPayload? _$v;

  DeleteResourceRequestPayloadBuilder() {
    DeleteResourceRequestPayload._init(this);
  }

  @override
  void replace(DeleteResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteResourceRequestPayload;
  }

  @override
  void update(void Function(DeleteResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResourceRequestPayload build() => _build();

  _$DeleteResourceRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteResourceRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
