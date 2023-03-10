// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_deployments_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeploymentsRequest extends GetDeploymentsRequest {
  @override
  final int? limit;
  @override
  final String? position;
  @override
  final String restApiId;

  factory _$GetDeploymentsRequest(
          [void Function(GetDeploymentsRequestBuilder)? updates]) =>
      (new GetDeploymentsRequestBuilder()..update(updates))._build();

  _$GetDeploymentsRequest._(
      {this.limit, this.position, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetDeploymentsRequest', 'restApiId');
  }

  @override
  GetDeploymentsRequest rebuild(
          void Function(GetDeploymentsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeploymentsRequestBuilder toBuilder() =>
      new GetDeploymentsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeploymentsRequest &&
        limit == other.limit &&
        position == other.position &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDeploymentsRequestBuilder
    implements Builder<GetDeploymentsRequest, GetDeploymentsRequestBuilder> {
  _$GetDeploymentsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetDeploymentsRequestBuilder() {
    GetDeploymentsRequest._init(this);
  }

  GetDeploymentsRequestBuilder get _$this {
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
  void replace(GetDeploymentsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeploymentsRequest;
  }

  @override
  void update(void Function(GetDeploymentsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeploymentsRequest build() => _build();

  _$GetDeploymentsRequest _build() {
    final _$result = _$v ??
        new _$GetDeploymentsRequest._(
            limit: limit,
            position: position,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetDeploymentsRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetDeploymentsRequestPayload extends GetDeploymentsRequestPayload {
  factory _$GetDeploymentsRequestPayload(
          [void Function(GetDeploymentsRequestPayloadBuilder)? updates]) =>
      (new GetDeploymentsRequestPayloadBuilder()..update(updates))._build();

  _$GetDeploymentsRequestPayload._() : super._();

  @override
  GetDeploymentsRequestPayload rebuild(
          void Function(GetDeploymentsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDeploymentsRequestPayloadBuilder toBuilder() =>
      new GetDeploymentsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeploymentsRequestPayload;
  }

  @override
  int get hashCode {
    return 28042539;
  }
}

class GetDeploymentsRequestPayloadBuilder
    implements
        Builder<GetDeploymentsRequestPayload,
            GetDeploymentsRequestPayloadBuilder> {
  _$GetDeploymentsRequestPayload? _$v;

  GetDeploymentsRequestPayloadBuilder() {
    GetDeploymentsRequestPayload._init(this);
  }

  @override
  void replace(GetDeploymentsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDeploymentsRequestPayload;
  }

  @override
  void update(void Function(GetDeploymentsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeploymentsRequestPayload build() => _build();

  _$GetDeploymentsRequestPayload _build() {
    final _$result = _$v ?? new _$GetDeploymentsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
