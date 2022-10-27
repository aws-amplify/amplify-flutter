// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_documentation_versions_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDocumentationVersionsRequest
    extends GetDocumentationVersionsRequest {
  @override
  final int? limit;
  @override
  final String? position;
  @override
  final String restApiId;

  factory _$GetDocumentationVersionsRequest(
          [void Function(GetDocumentationVersionsRequestBuilder)? updates]) =>
      (new GetDocumentationVersionsRequestBuilder()..update(updates))._build();

  _$GetDocumentationVersionsRequest._(
      {this.limit, this.position, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDocumentationVersionsRequest', 'restApiId');
  }

  @override
  GetDocumentationVersionsRequest rebuild(
          void Function(GetDocumentationVersionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationVersionsRequestBuilder toBuilder() =>
      new GetDocumentationVersionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationVersionsRequest &&
        limit == other.limit &&
        position == other.position &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, limit.hashCode), position.hashCode), restApiId.hashCode));
  }
}

class GetDocumentationVersionsRequestBuilder
    implements
        Builder<GetDocumentationVersionsRequest,
            GetDocumentationVersionsRequestBuilder> {
  _$GetDocumentationVersionsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetDocumentationVersionsRequestBuilder() {
    GetDocumentationVersionsRequest._init(this);
  }

  GetDocumentationVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDocumentationVersionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationVersionsRequest;
  }

  @override
  void update(void Function(GetDocumentationVersionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationVersionsRequest build() => _build();

  _$GetDocumentationVersionsRequest _build() {
    final _$result = _$v ??
        new _$GetDocumentationVersionsRequest._(
            limit: limit,
            position: position,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDocumentationVersionsRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetDocumentationVersionsRequestPayload
    extends GetDocumentationVersionsRequestPayload {
  factory _$GetDocumentationVersionsRequestPayload(
          [void Function(GetDocumentationVersionsRequestPayloadBuilder)?
              updates]) =>
      (new GetDocumentationVersionsRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetDocumentationVersionsRequestPayload._() : super._();

  @override
  GetDocumentationVersionsRequestPayload rebuild(
          void Function(GetDocumentationVersionsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationVersionsRequestPayloadBuilder toBuilder() =>
      new GetDocumentationVersionsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationVersionsRequestPayload;
  }

  @override
  int get hashCode {
    return 553093878;
  }
}

class GetDocumentationVersionsRequestPayloadBuilder
    implements
        Builder<GetDocumentationVersionsRequestPayload,
            GetDocumentationVersionsRequestPayloadBuilder> {
  _$GetDocumentationVersionsRequestPayload? _$v;

  GetDocumentationVersionsRequestPayloadBuilder() {
    GetDocumentationVersionsRequestPayload._init(this);
  }

  @override
  void replace(GetDocumentationVersionsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationVersionsRequestPayload;
  }

  @override
  void update(
      void Function(GetDocumentationVersionsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationVersionsRequestPayload build() => _build();

  _$GetDocumentationVersionsRequestPayload _build() {
    final _$result = _$v ?? new _$GetDocumentationVersionsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
