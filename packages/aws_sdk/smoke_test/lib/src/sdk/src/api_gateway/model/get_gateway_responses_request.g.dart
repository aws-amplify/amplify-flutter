// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_gateway_responses_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGatewayResponsesRequest extends GetGatewayResponsesRequest {
  @override
  final String restApiId;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetGatewayResponsesRequest(
          [void Function(GetGatewayResponsesRequestBuilder)? updates]) =>
      (new GetGatewayResponsesRequestBuilder()..update(updates))._build();

  _$GetGatewayResponsesRequest._(
      {required this.restApiId, this.position, this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetGatewayResponsesRequest', 'restApiId');
  }

  @override
  GetGatewayResponsesRequest rebuild(
          void Function(GetGatewayResponsesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGatewayResponsesRequestBuilder toBuilder() =>
      new GetGatewayResponsesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGatewayResponsesRequest &&
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

class GetGatewayResponsesRequestBuilder
    implements
        Builder<GetGatewayResponsesRequest, GetGatewayResponsesRequestBuilder> {
  _$GetGatewayResponsesRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetGatewayResponsesRequestBuilder() {
    GetGatewayResponsesRequest._init(this);
  }

  GetGatewayResponsesRequestBuilder get _$this {
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
  void replace(GetGatewayResponsesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGatewayResponsesRequest;
  }

  @override
  void update(void Function(GetGatewayResponsesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGatewayResponsesRequest build() => _build();

  _$GetGatewayResponsesRequest _build() {
    final _$result = _$v ??
        new _$GetGatewayResponsesRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetGatewayResponsesRequest', 'restApiId'),
            position: position,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetGatewayResponsesRequestPayload
    extends GetGatewayResponsesRequestPayload {
  factory _$GetGatewayResponsesRequestPayload(
          [void Function(GetGatewayResponsesRequestPayloadBuilder)? updates]) =>
      (new GetGatewayResponsesRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetGatewayResponsesRequestPayload._() : super._();

  @override
  GetGatewayResponsesRequestPayload rebuild(
          void Function(GetGatewayResponsesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGatewayResponsesRequestPayloadBuilder toBuilder() =>
      new GetGatewayResponsesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGatewayResponsesRequestPayload;
  }

  @override
  int get hashCode {
    return 607546455;
  }
}

class GetGatewayResponsesRequestPayloadBuilder
    implements
        Builder<GetGatewayResponsesRequestPayload,
            GetGatewayResponsesRequestPayloadBuilder> {
  _$GetGatewayResponsesRequestPayload? _$v;

  GetGatewayResponsesRequestPayloadBuilder() {
    GetGatewayResponsesRequestPayload._init(this);
  }

  @override
  void replace(GetGatewayResponsesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGatewayResponsesRequestPayload;
  }

  @override
  void update(
      void Function(GetGatewayResponsesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGatewayResponsesRequestPayload build() => _build();

  _$GetGatewayResponsesRequestPayload _build() {
    final _$result = _$v ?? new _$GetGatewayResponsesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
