// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_gateway_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGatewayResponseRequest extends GetGatewayResponseRequest {
  @override
  final _i3.GatewayResponseType responseType;
  @override
  final String restApiId;

  factory _$GetGatewayResponseRequest(
          [void Function(GetGatewayResponseRequestBuilder)? updates]) =>
      (new GetGatewayResponseRequestBuilder()..update(updates))._build();

  _$GetGatewayResponseRequest._(
      {required this.responseType, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseType, r'GetGatewayResponseRequest', 'responseType');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetGatewayResponseRequest', 'restApiId');
  }

  @override
  GetGatewayResponseRequest rebuild(
          void Function(GetGatewayResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGatewayResponseRequestBuilder toBuilder() =>
      new GetGatewayResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGatewayResponseRequest &&
        responseType == other.responseType &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, responseType.hashCode), restApiId.hashCode));
  }
}

class GetGatewayResponseRequestBuilder
    implements
        Builder<GetGatewayResponseRequest, GetGatewayResponseRequestBuilder> {
  _$GetGatewayResponseRequest? _$v;

  _i3.GatewayResponseType? _responseType;
  _i3.GatewayResponseType? get responseType => _$this._responseType;
  set responseType(_i3.GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetGatewayResponseRequestBuilder() {
    GetGatewayResponseRequest._init(this);
  }

  GetGatewayResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseType = $v.responseType;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGatewayResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGatewayResponseRequest;
  }

  @override
  void update(void Function(GetGatewayResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGatewayResponseRequest build() => _build();

  _$GetGatewayResponseRequest _build() {
    final _$result = _$v ??
        new _$GetGatewayResponseRequest._(
            responseType: BuiltValueNullFieldError.checkNotNull(
                responseType, r'GetGatewayResponseRequest', 'responseType'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetGatewayResponseRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetGatewayResponseRequestPayload
    extends GetGatewayResponseRequestPayload {
  factory _$GetGatewayResponseRequestPayload(
          [void Function(GetGatewayResponseRequestPayloadBuilder)? updates]) =>
      (new GetGatewayResponseRequestPayloadBuilder()..update(updates))._build();

  _$GetGatewayResponseRequestPayload._() : super._();

  @override
  GetGatewayResponseRequestPayload rebuild(
          void Function(GetGatewayResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGatewayResponseRequestPayloadBuilder toBuilder() =>
      new GetGatewayResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGatewayResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 915994383;
  }
}

class GetGatewayResponseRequestPayloadBuilder
    implements
        Builder<GetGatewayResponseRequestPayload,
            GetGatewayResponseRequestPayloadBuilder> {
  _$GetGatewayResponseRequestPayload? _$v;

  GetGatewayResponseRequestPayloadBuilder() {
    GetGatewayResponseRequestPayload._init(this);
  }

  @override
  void replace(GetGatewayResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGatewayResponseRequestPayload;
  }

  @override
  void update(void Function(GetGatewayResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGatewayResponseRequestPayload build() => _build();

  _$GetGatewayResponseRequestPayload _build() {
    final _$result = _$v ?? new _$GetGatewayResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
