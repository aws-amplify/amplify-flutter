// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_documentation_parts_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDocumentationPartsRequest extends GetDocumentationPartsRequest {
  @override
  final int? limit;
  @override
  final _i3.LocationStatusType? locationStatus;
  @override
  final String? nameQuery;
  @override
  final String? path;
  @override
  final String? position;
  @override
  final String restApiId;
  @override
  final _i4.DocumentationPartType? type;

  factory _$GetDocumentationPartsRequest(
          [void Function(GetDocumentationPartsRequestBuilder)? updates]) =>
      (new GetDocumentationPartsRequestBuilder()..update(updates))._build();

  _$GetDocumentationPartsRequest._(
      {this.limit,
      this.locationStatus,
      this.nameQuery,
      this.path,
      this.position,
      required this.restApiId,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDocumentationPartsRequest', 'restApiId');
  }

  @override
  GetDocumentationPartsRequest rebuild(
          void Function(GetDocumentationPartsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationPartsRequestBuilder toBuilder() =>
      new GetDocumentationPartsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationPartsRequest &&
        limit == other.limit &&
        locationStatus == other.locationStatus &&
        nameQuery == other.nameQuery &&
        path == other.path &&
        position == other.position &&
        restApiId == other.restApiId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, locationStatus.hashCode);
    _$hash = $jc(_$hash, nameQuery.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDocumentationPartsRequestBuilder
    implements
        Builder<GetDocumentationPartsRequest,
            GetDocumentationPartsRequestBuilder> {
  _$GetDocumentationPartsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  _i3.LocationStatusType? _locationStatus;
  _i3.LocationStatusType? get locationStatus => _$this._locationStatus;
  set locationStatus(_i3.LocationStatusType? locationStatus) =>
      _$this._locationStatus = locationStatus;

  String? _nameQuery;
  String? get nameQuery => _$this._nameQuery;
  set nameQuery(String? nameQuery) => _$this._nameQuery = nameQuery;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  _i4.DocumentationPartType? _type;
  _i4.DocumentationPartType? get type => _$this._type;
  set type(_i4.DocumentationPartType? type) => _$this._type = type;

  GetDocumentationPartsRequestBuilder() {
    GetDocumentationPartsRequest._init(this);
  }

  GetDocumentationPartsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _locationStatus = $v.locationStatus;
      _nameQuery = $v.nameQuery;
      _path = $v.path;
      _position = $v.position;
      _restApiId = $v.restApiId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDocumentationPartsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationPartsRequest;
  }

  @override
  void update(void Function(GetDocumentationPartsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationPartsRequest build() => _build();

  _$GetDocumentationPartsRequest _build() {
    final _$result = _$v ??
        new _$GetDocumentationPartsRequest._(
            limit: limit,
            locationStatus: locationStatus,
            nameQuery: nameQuery,
            path: path,
            position: position,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDocumentationPartsRequest', 'restApiId'),
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GetDocumentationPartsRequestPayload
    extends GetDocumentationPartsRequestPayload {
  factory _$GetDocumentationPartsRequestPayload(
          [void Function(GetDocumentationPartsRequestPayloadBuilder)?
              updates]) =>
      (new GetDocumentationPartsRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetDocumentationPartsRequestPayload._() : super._();

  @override
  GetDocumentationPartsRequestPayload rebuild(
          void Function(GetDocumentationPartsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDocumentationPartsRequestPayloadBuilder toBuilder() =>
      new GetDocumentationPartsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDocumentationPartsRequestPayload;
  }

  @override
  int get hashCode {
    return 438615050;
  }
}

class GetDocumentationPartsRequestPayloadBuilder
    implements
        Builder<GetDocumentationPartsRequestPayload,
            GetDocumentationPartsRequestPayloadBuilder> {
  _$GetDocumentationPartsRequestPayload? _$v;

  GetDocumentationPartsRequestPayloadBuilder() {
    GetDocumentationPartsRequestPayload._init(this);
  }

  @override
  void replace(GetDocumentationPartsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDocumentationPartsRequestPayload;
  }

  @override
  void update(
      void Function(GetDocumentationPartsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDocumentationPartsRequestPayload build() => _build();

  _$GetDocumentationPartsRequestPayload _build() {
    final _$result = _$v ?? new _$GetDocumentationPartsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
