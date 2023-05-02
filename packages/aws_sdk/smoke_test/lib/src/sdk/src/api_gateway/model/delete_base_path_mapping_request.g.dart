// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_base_path_mapping_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBasePathMappingRequest extends DeleteBasePathMappingRequest {
  @override
  final String domainName;
  @override
  final String basePath;

  factory _$DeleteBasePathMappingRequest(
          [void Function(DeleteBasePathMappingRequestBuilder)? updates]) =>
      (new DeleteBasePathMappingRequestBuilder()..update(updates))._build();

  _$DeleteBasePathMappingRequest._(
      {required this.domainName, required this.basePath})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'DeleteBasePathMappingRequest', 'domainName');
    BuiltValueNullFieldError.checkNotNull(
        basePath, r'DeleteBasePathMappingRequest', 'basePath');
  }

  @override
  DeleteBasePathMappingRequest rebuild(
          void Function(DeleteBasePathMappingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBasePathMappingRequestBuilder toBuilder() =>
      new DeleteBasePathMappingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBasePathMappingRequest &&
        domainName == other.domainName &&
        basePath == other.basePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, basePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBasePathMappingRequestBuilder
    implements
        Builder<DeleteBasePathMappingRequest,
            DeleteBasePathMappingRequestBuilder> {
  _$DeleteBasePathMappingRequest? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  DeleteBasePathMappingRequestBuilder() {
    DeleteBasePathMappingRequest._init(this);
  }

  DeleteBasePathMappingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _basePath = $v.basePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBasePathMappingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBasePathMappingRequest;
  }

  @override
  void update(void Function(DeleteBasePathMappingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBasePathMappingRequest build() => _build();

  _$DeleteBasePathMappingRequest _build() {
    final _$result = _$v ??
        new _$DeleteBasePathMappingRequest._(
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'DeleteBasePathMappingRequest', 'domainName'),
            basePath: BuiltValueNullFieldError.checkNotNull(
                basePath, r'DeleteBasePathMappingRequest', 'basePath'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBasePathMappingRequestPayload
    extends DeleteBasePathMappingRequestPayload {
  factory _$DeleteBasePathMappingRequestPayload(
          [void Function(DeleteBasePathMappingRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBasePathMappingRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBasePathMappingRequestPayload._() : super._();

  @override
  DeleteBasePathMappingRequestPayload rebuild(
          void Function(DeleteBasePathMappingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBasePathMappingRequestPayloadBuilder toBuilder() =>
      new DeleteBasePathMappingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBasePathMappingRequestPayload;
  }

  @override
  int get hashCode {
    return 680648181;
  }
}

class DeleteBasePathMappingRequestPayloadBuilder
    implements
        Builder<DeleteBasePathMappingRequestPayload,
            DeleteBasePathMappingRequestPayloadBuilder> {
  _$DeleteBasePathMappingRequestPayload? _$v;

  DeleteBasePathMappingRequestPayloadBuilder() {
    DeleteBasePathMappingRequestPayload._init(this);
  }

  @override
  void replace(DeleteBasePathMappingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBasePathMappingRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBasePathMappingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBasePathMappingRequestPayload build() => _build();

  _$DeleteBasePathMappingRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBasePathMappingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
