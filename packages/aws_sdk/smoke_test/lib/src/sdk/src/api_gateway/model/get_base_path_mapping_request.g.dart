// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_base_path_mapping_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBasePathMappingRequest extends GetBasePathMappingRequest {
  @override
  final String basePath;
  @override
  final String domainName;

  factory _$GetBasePathMappingRequest(
          [void Function(GetBasePathMappingRequestBuilder)? updates]) =>
      (new GetBasePathMappingRequestBuilder()..update(updates))._build();

  _$GetBasePathMappingRequest._(
      {required this.basePath, required this.domainName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        basePath, r'GetBasePathMappingRequest', 'basePath');
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'GetBasePathMappingRequest', 'domainName');
  }

  @override
  GetBasePathMappingRequest rebuild(
          void Function(GetBasePathMappingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBasePathMappingRequestBuilder toBuilder() =>
      new GetBasePathMappingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBasePathMappingRequest &&
        basePath == other.basePath &&
        domainName == other.domainName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, basePath.hashCode);
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBasePathMappingRequestBuilder
    implements
        Builder<GetBasePathMappingRequest, GetBasePathMappingRequestBuilder> {
  _$GetBasePathMappingRequest? _$v;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  GetBasePathMappingRequestBuilder() {
    GetBasePathMappingRequest._init(this);
  }

  GetBasePathMappingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _basePath = $v.basePath;
      _domainName = $v.domainName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBasePathMappingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBasePathMappingRequest;
  }

  @override
  void update(void Function(GetBasePathMappingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBasePathMappingRequest build() => _build();

  _$GetBasePathMappingRequest _build() {
    final _$result = _$v ??
        new _$GetBasePathMappingRequest._(
            basePath: BuiltValueNullFieldError.checkNotNull(
                basePath, r'GetBasePathMappingRequest', 'basePath'),
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'GetBasePathMappingRequest', 'domainName'));
    replace(_$result);
    return _$result;
  }
}

class _$GetBasePathMappingRequestPayload
    extends GetBasePathMappingRequestPayload {
  factory _$GetBasePathMappingRequestPayload(
          [void Function(GetBasePathMappingRequestPayloadBuilder)? updates]) =>
      (new GetBasePathMappingRequestPayloadBuilder()..update(updates))._build();

  _$GetBasePathMappingRequestPayload._() : super._();

  @override
  GetBasePathMappingRequestPayload rebuild(
          void Function(GetBasePathMappingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBasePathMappingRequestPayloadBuilder toBuilder() =>
      new GetBasePathMappingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBasePathMappingRequestPayload;
  }

  @override
  int get hashCode {
    return 671930476;
  }
}

class GetBasePathMappingRequestPayloadBuilder
    implements
        Builder<GetBasePathMappingRequestPayload,
            GetBasePathMappingRequestPayloadBuilder> {
  _$GetBasePathMappingRequestPayload? _$v;

  GetBasePathMappingRequestPayloadBuilder() {
    GetBasePathMappingRequestPayload._init(this);
  }

  @override
  void replace(GetBasePathMappingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBasePathMappingRequestPayload;
  }

  @override
  void update(void Function(GetBasePathMappingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBasePathMappingRequestPayload build() => _build();

  _$GetBasePathMappingRequestPayload _build() {
    final _$result = _$v ?? new _$GetBasePathMappingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
