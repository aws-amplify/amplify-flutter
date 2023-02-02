// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_base_path_mappings_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBasePathMappingsRequest extends GetBasePathMappingsRequest {
  @override
  final String domainName;
  @override
  final int? limit;
  @override
  final String? position;

  factory _$GetBasePathMappingsRequest(
          [void Function(GetBasePathMappingsRequestBuilder)? updates]) =>
      (new GetBasePathMappingsRequestBuilder()..update(updates))._build();

  _$GetBasePathMappingsRequest._(
      {required this.domainName, this.limit, this.position})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'GetBasePathMappingsRequest', 'domainName');
  }

  @override
  GetBasePathMappingsRequest rebuild(
          void Function(GetBasePathMappingsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBasePathMappingsRequestBuilder toBuilder() =>
      new GetBasePathMappingsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBasePathMappingsRequest &&
        domainName == other.domainName &&
        limit == other.limit &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBasePathMappingsRequestBuilder
    implements
        Builder<GetBasePathMappingsRequest, GetBasePathMappingsRequestBuilder> {
  _$GetBasePathMappingsRequest? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetBasePathMappingsRequestBuilder() {
    GetBasePathMappingsRequest._init(this);
  }

  GetBasePathMappingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _limit = $v.limit;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBasePathMappingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBasePathMappingsRequest;
  }

  @override
  void update(void Function(GetBasePathMappingsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBasePathMappingsRequest build() => _build();

  _$GetBasePathMappingsRequest _build() {
    final _$result = _$v ??
        new _$GetBasePathMappingsRequest._(
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'GetBasePathMappingsRequest', 'domainName'),
            limit: limit,
            position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetBasePathMappingsRequestPayload
    extends GetBasePathMappingsRequestPayload {
  factory _$GetBasePathMappingsRequestPayload(
          [void Function(GetBasePathMappingsRequestPayloadBuilder)? updates]) =>
      (new GetBasePathMappingsRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBasePathMappingsRequestPayload._() : super._();

  @override
  GetBasePathMappingsRequestPayload rebuild(
          void Function(GetBasePathMappingsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBasePathMappingsRequestPayloadBuilder toBuilder() =>
      new GetBasePathMappingsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBasePathMappingsRequestPayload;
  }

  @override
  int get hashCode {
    return 711209800;
  }
}

class GetBasePathMappingsRequestPayloadBuilder
    implements
        Builder<GetBasePathMappingsRequestPayload,
            GetBasePathMappingsRequestPayloadBuilder> {
  _$GetBasePathMappingsRequestPayload? _$v;

  GetBasePathMappingsRequestPayloadBuilder() {
    GetBasePathMappingsRequestPayload._init(this);
  }

  @override
  void replace(GetBasePathMappingsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBasePathMappingsRequestPayload;
  }

  @override
  void update(
      void Function(GetBasePathMappingsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBasePathMappingsRequestPayload build() => _build();

  _$GetBasePathMappingsRequestPayload _build() {
    final _$result = _$v ?? new _$GetBasePathMappingsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
