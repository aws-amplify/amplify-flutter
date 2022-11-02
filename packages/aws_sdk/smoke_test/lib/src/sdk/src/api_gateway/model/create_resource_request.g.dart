// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateResourceRequest extends CreateResourceRequest {
  @override
  final String parentId;
  @override
  final String pathPart;
  @override
  final String restApiId;

  factory _$CreateResourceRequest(
          [void Function(CreateResourceRequestBuilder)? updates]) =>
      (new CreateResourceRequestBuilder()..update(updates))._build();

  _$CreateResourceRequest._(
      {required this.parentId, required this.pathPart, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        parentId, r'CreateResourceRequest', 'parentId');
    BuiltValueNullFieldError.checkNotNull(
        pathPart, r'CreateResourceRequest', 'pathPart');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateResourceRequest', 'restApiId');
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
        parentId == other.parentId &&
        pathPart == other.pathPart &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, parentId.hashCode), pathPart.hashCode), restApiId.hashCode));
  }
}

class CreateResourceRequestBuilder
    implements Builder<CreateResourceRequest, CreateResourceRequestBuilder> {
  _$CreateResourceRequest? _$v;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _pathPart;
  String? get pathPart => _$this._pathPart;
  set pathPart(String? pathPart) => _$this._pathPart = pathPart;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  CreateResourceRequestBuilder() {
    CreateResourceRequest._init(this);
  }

  CreateResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parentId = $v.parentId;
      _pathPart = $v.pathPart;
      _restApiId = $v.restApiId;
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
            parentId: BuiltValueNullFieldError.checkNotNull(
                parentId, r'CreateResourceRequest', 'parentId'),
            pathPart: BuiltValueNullFieldError.checkNotNull(
                pathPart, r'CreateResourceRequest', 'pathPart'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateResourceRequest', 'restApiId'));
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
    return $jf($jc(0, pathPart.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
