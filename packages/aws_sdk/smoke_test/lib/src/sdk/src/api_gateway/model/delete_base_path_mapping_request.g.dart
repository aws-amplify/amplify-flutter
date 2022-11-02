// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_base_path_mapping_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBasePathMappingRequest extends DeleteBasePathMappingRequest {
  @override
  final String basePath;
  @override
  final String domainName;

  factory _$DeleteBasePathMappingRequest(
          [void Function(DeleteBasePathMappingRequestBuilder)? updates]) =>
      (new DeleteBasePathMappingRequestBuilder()..update(updates))._build();

  _$DeleteBasePathMappingRequest._(
      {required this.basePath, required this.domainName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        basePath, r'DeleteBasePathMappingRequest', 'basePath');
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'DeleteBasePathMappingRequest', 'domainName');
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
        basePath == other.basePath &&
        domainName == other.domainName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, basePath.hashCode), domainName.hashCode));
  }
}

class DeleteBasePathMappingRequestBuilder
    implements
        Builder<DeleteBasePathMappingRequest,
            DeleteBasePathMappingRequestBuilder> {
  _$DeleteBasePathMappingRequest? _$v;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  DeleteBasePathMappingRequestBuilder() {
    DeleteBasePathMappingRequest._init(this);
  }

  DeleteBasePathMappingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _basePath = $v.basePath;
      _domainName = $v.domainName;
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
            basePath: BuiltValueNullFieldError.checkNotNull(
                basePath, r'DeleteBasePathMappingRequest', 'basePath'),
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'DeleteBasePathMappingRequest', 'domainName'));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
