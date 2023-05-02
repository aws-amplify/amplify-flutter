// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateResourceRequest extends CreateResourceRequest {
  @override
  final String restApiId;
  @override
  final String parentId;
  @override
  final String pathPart;

  factory _$CreateResourceRequest(
          [void Function(CreateResourceRequestBuilder)? updates]) =>
      (new CreateResourceRequestBuilder()..update(updates))._build();

  _$CreateResourceRequest._(
      {required this.restApiId, required this.parentId, required this.pathPart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateResourceRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        parentId, r'CreateResourceRequest', 'parentId');
    BuiltValueNullFieldError.checkNotNull(
        pathPart, r'CreateResourceRequest', 'pathPart');
  }

  @override
  CreateResourceRequest rebuild(
          void Function(CreateResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateResourceRequestBuilder toBuilder() =>
      new CreateResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateResourceRequest &&
        restApiId == other.restApiId &&
        parentId == other.parentId &&
        pathPart == other.pathPart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, pathPart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateResourceRequestBuilder
    implements Builder<CreateResourceRequest, CreateResourceRequestBuilder> {
  _$CreateResourceRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _pathPart;
  String? get pathPart => _$this._pathPart;
  set pathPart(String? pathPart) => _$this._pathPart = pathPart;

  CreateResourceRequestBuilder() {
    CreateResourceRequest._init(this);
  }

  CreateResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _parentId = $v.parentId;
      _pathPart = $v.pathPart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateResourceRequest;
  }

  @override
  void update(void Function(CreateResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateResourceRequest build() => _build();

  _$CreateResourceRequest _build() {
    final _$result = _$v ??
        new _$CreateResourceRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateResourceRequest', 'restApiId'),
            parentId: BuiltValueNullFieldError.checkNotNull(
                parentId, r'CreateResourceRequest', 'parentId'),
            pathPart: BuiltValueNullFieldError.checkNotNull(
                pathPart, r'CreateResourceRequest', 'pathPart'));
    replace(_$result);
    return _$result;
  }
}

class _$CreateResourceRequestPayload extends CreateResourceRequestPayload {
  @override
  final String pathPart;

  factory _$CreateResourceRequestPayload(
          [void Function(CreateResourceRequestPayloadBuilder)? updates]) =>
      (new CreateResourceRequestPayloadBuilder()..update(updates))._build();

  _$CreateResourceRequestPayload._({required this.pathPart}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pathPart, r'CreateResourceRequestPayload', 'pathPart');
  }

  @override
  CreateResourceRequestPayload rebuild(
          void Function(CreateResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateResourceRequestPayloadBuilder toBuilder() =>
      new CreateResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateResourceRequestPayload && pathPart == other.pathPart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pathPart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateResourceRequestPayloadBuilder
    implements
        Builder<CreateResourceRequestPayload,
            CreateResourceRequestPayloadBuilder> {
  _$CreateResourceRequestPayload? _$v;

  String? _pathPart;
  String? get pathPart => _$this._pathPart;
  set pathPart(String? pathPart) => _$this._pathPart = pathPart;

  CreateResourceRequestPayloadBuilder() {
    CreateResourceRequestPayload._init(this);
  }

  CreateResourceRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pathPart = $v.pathPart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateResourceRequestPayload;
  }

  @override
  void update(void Function(CreateResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateResourceRequestPayload build() => _build();

  _$CreateResourceRequestPayload _build() {
    final _$result = _$v ??
        new _$CreateResourceRequestPayload._(
            pathPart: BuiltValueNullFieldError.checkNotNull(
                pathPart, r'CreateResourceRequestPayload', 'pathPart'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
