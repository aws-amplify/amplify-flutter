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
    return $jf($jc($jc(0, basePath.hashCode), domainName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
