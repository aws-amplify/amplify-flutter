// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_base_path_mapping_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBasePathMappingRequest extends CreateBasePathMappingRequest {
  @override
  final String? basePath;
  @override
  final String domainName;
  @override
  final String restApiId;
  @override
  final String? stage;

  factory _$CreateBasePathMappingRequest(
          [void Function(CreateBasePathMappingRequestBuilder)? updates]) =>
      (new CreateBasePathMappingRequestBuilder()..update(updates))._build();

  _$CreateBasePathMappingRequest._(
      {this.basePath,
      required this.domainName,
      required this.restApiId,
      this.stage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'CreateBasePathMappingRequest', 'domainName');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateBasePathMappingRequest', 'restApiId');
  }

  @override
  CreateBasePathMappingRequest rebuild(
          void Function(CreateBasePathMappingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBasePathMappingRequestBuilder toBuilder() =>
      new CreateBasePathMappingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBasePathMappingRequest &&
        basePath == other.basePath &&
        domainName == other.domainName &&
        restApiId == other.restApiId &&
        stage == other.stage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, basePath.hashCode);
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateBasePathMappingRequestBuilder
    implements
        Builder<CreateBasePathMappingRequest,
            CreateBasePathMappingRequestBuilder> {
  _$CreateBasePathMappingRequest? _$v;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stage;
  String? get stage => _$this._stage;
  set stage(String? stage) => _$this._stage = stage;

  CreateBasePathMappingRequestBuilder() {
    CreateBasePathMappingRequest._init(this);
  }

  CreateBasePathMappingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _basePath = $v.basePath;
      _domainName = $v.domainName;
      _restApiId = $v.restApiId;
      _stage = $v.stage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBasePathMappingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBasePathMappingRequest;
  }

  @override
  void update(void Function(CreateBasePathMappingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBasePathMappingRequest build() => _build();

  _$CreateBasePathMappingRequest _build() {
    final _$result = _$v ??
        new _$CreateBasePathMappingRequest._(
            basePath: basePath,
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'CreateBasePathMappingRequest', 'domainName'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateBasePathMappingRequest', 'restApiId'),
            stage: stage);
    replace(_$result);
    return _$result;
  }
}

class _$CreateBasePathMappingRequestPayload
    extends CreateBasePathMappingRequestPayload {
  @override
  final String? basePath;
  @override
  final String restApiId;
  @override
  final String? stage;

  factory _$CreateBasePathMappingRequestPayload(
          [void Function(CreateBasePathMappingRequestPayloadBuilder)?
              updates]) =>
      (new CreateBasePathMappingRequestPayloadBuilder()..update(updates))
          ._build();

  _$CreateBasePathMappingRequestPayload._(
      {this.basePath, required this.restApiId, this.stage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateBasePathMappingRequestPayload', 'restApiId');
  }

  @override
  CreateBasePathMappingRequestPayload rebuild(
          void Function(CreateBasePathMappingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBasePathMappingRequestPayloadBuilder toBuilder() =>
      new CreateBasePathMappingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBasePathMappingRequestPayload &&
        basePath == other.basePath &&
        restApiId == other.restApiId &&
        stage == other.stage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, basePath.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateBasePathMappingRequestPayloadBuilder
    implements
        Builder<CreateBasePathMappingRequestPayload,
            CreateBasePathMappingRequestPayloadBuilder> {
  _$CreateBasePathMappingRequestPayload? _$v;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stage;
  String? get stage => _$this._stage;
  set stage(String? stage) => _$this._stage = stage;

  CreateBasePathMappingRequestPayloadBuilder() {
    CreateBasePathMappingRequestPayload._init(this);
  }

  CreateBasePathMappingRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _basePath = $v.basePath;
      _restApiId = $v.restApiId;
      _stage = $v.stage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBasePathMappingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBasePathMappingRequestPayload;
  }

  @override
  void update(
      void Function(CreateBasePathMappingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBasePathMappingRequestPayload build() => _build();

  _$CreateBasePathMappingRequestPayload _build() {
    final _$result = _$v ??
        new _$CreateBasePathMappingRequestPayload._(
            basePath: basePath,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateBasePathMappingRequestPayload', 'restApiId'),
            stage: stage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
