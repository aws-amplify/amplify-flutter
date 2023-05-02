// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_authorizers_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAuthorizersRequest extends GetAuthorizersRequest {
  @override
  final String restApiId;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetAuthorizersRequest(
          [void Function(GetAuthorizersRequestBuilder)? updates]) =>
      (new GetAuthorizersRequestBuilder()..update(updates))._build();

  _$GetAuthorizersRequest._(
      {required this.restApiId, this.position, this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetAuthorizersRequest', 'restApiId');
  }

  @override
  GetAuthorizersRequest rebuild(
          void Function(GetAuthorizersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizersRequestBuilder toBuilder() =>
      new GetAuthorizersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorizersRequest &&
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

class GetAuthorizersRequestBuilder
    implements Builder<GetAuthorizersRequest, GetAuthorizersRequestBuilder> {
  _$GetAuthorizersRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetAuthorizersRequestBuilder() {
    GetAuthorizersRequest._init(this);
  }

  GetAuthorizersRequestBuilder get _$this {
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
  void replace(GetAuthorizersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorizersRequest;
  }

  @override
  void update(void Function(GetAuthorizersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorizersRequest build() => _build();

  _$GetAuthorizersRequest _build() {
    final _$result = _$v ??
        new _$GetAuthorizersRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetAuthorizersRequest', 'restApiId'),
            position: position,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetAuthorizersRequestPayload extends GetAuthorizersRequestPayload {
  factory _$GetAuthorizersRequestPayload(
          [void Function(GetAuthorizersRequestPayloadBuilder)? updates]) =>
      (new GetAuthorizersRequestPayloadBuilder()..update(updates))._build();

  _$GetAuthorizersRequestPayload._() : super._();

  @override
  GetAuthorizersRequestPayload rebuild(
          void Function(GetAuthorizersRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizersRequestPayloadBuilder toBuilder() =>
      new GetAuthorizersRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorizersRequestPayload;
  }

  @override
  int get hashCode {
    return 166630997;
  }
}

class GetAuthorizersRequestPayloadBuilder
    implements
        Builder<GetAuthorizersRequestPayload,
            GetAuthorizersRequestPayloadBuilder> {
  _$GetAuthorizersRequestPayload? _$v;

  GetAuthorizersRequestPayloadBuilder() {
    GetAuthorizersRequestPayload._init(this);
  }

  @override
  void replace(GetAuthorizersRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorizersRequestPayload;
  }

  @override
  void update(void Function(GetAuthorizersRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorizersRequestPayload build() => _build();

  _$GetAuthorizersRequestPayload _build() {
    final _$result = _$v ?? new _$GetAuthorizersRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
