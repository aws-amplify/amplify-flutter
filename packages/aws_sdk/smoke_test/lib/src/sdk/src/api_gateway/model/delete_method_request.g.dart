// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_method_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMethodRequest extends DeleteMethodRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;

  factory _$DeleteMethodRequest(
          [void Function(DeleteMethodRequestBuilder)? updates]) =>
      (new DeleteMethodRequestBuilder()..update(updates))._build();

  _$DeleteMethodRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteMethodRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'DeleteMethodRequest', 'httpMethod');
  }

  @override
  DeleteMethodRequest rebuild(
          void Function(DeleteMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodRequestBuilder toBuilder() =>
      new DeleteMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteMethodRequestBuilder
    implements Builder<DeleteMethodRequest, DeleteMethodRequestBuilder> {
  _$DeleteMethodRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  DeleteMethodRequestBuilder() {
    DeleteMethodRequest._init(this);
  }

  DeleteMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodRequest;
  }

  @override
  void update(void Function(DeleteMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodRequest build() => _build();

  _$DeleteMethodRequest _build() {
    final _$result = _$v ??
        new _$DeleteMethodRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteMethodRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteMethodRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'DeleteMethodRequest', 'httpMethod'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteMethodRequestPayload extends DeleteMethodRequestPayload {
  factory _$DeleteMethodRequestPayload(
          [void Function(DeleteMethodRequestPayloadBuilder)? updates]) =>
      (new DeleteMethodRequestPayloadBuilder()..update(updates))._build();

  _$DeleteMethodRequestPayload._() : super._();

  @override
  DeleteMethodRequestPayload rebuild(
          void Function(DeleteMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMethodRequestPayloadBuilder toBuilder() =>
      new DeleteMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMethodRequestPayload;
  }

  @override
  int get hashCode {
    return 1019570507;
  }
}

class DeleteMethodRequestPayloadBuilder
    implements
        Builder<DeleteMethodRequestPayload, DeleteMethodRequestPayloadBuilder> {
  _$DeleteMethodRequestPayload? _$v;

  DeleteMethodRequestPayloadBuilder() {
    DeleteMethodRequestPayload._init(this);
  }

  @override
  void replace(DeleteMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMethodRequestPayload;
  }

  @override
  void update(void Function(DeleteMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMethodRequestPayload build() => _build();

  _$DeleteMethodRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteMethodRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
