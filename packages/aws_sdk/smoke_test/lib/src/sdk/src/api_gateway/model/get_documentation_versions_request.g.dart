// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_documentation_versions_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDocumentationVersionsRequest
    extends GetDocumentationVersionsRequest {
  @override
  final String restApiId;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetDocumentationVersionsRequest(
          [void Function(GetDocumentationVersionsRequestBuilder)? updates]) =>
      (new GetDocumentationVersionsRequestBuilder()..update(updates))._build();

  _$GetDocumentationVersionsRequest._(
      {required this.restApiId, this.position, this.limit})
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
        restApiId == other.restApiId &&
        position == other.position &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDocumentationVersionsRequestBuilder
    implements
        Builder<GetDocumentationVersionsRequest,
            GetDocumentationVersionsRequestBuilder> {
  _$GetDocumentationVersionsRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetDocumentationVersionsRequestBuilder() {
    GetDocumentationVersionsRequest._init(this);
  }

  GetDocumentationVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _position = $v.position;
      _limit = $v.limit;
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
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDocumentationVersionsRequest', 'restApiId'),
            position: position,
            limit: limit);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
