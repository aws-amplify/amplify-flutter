// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_gateway_response_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteGatewayResponseRequest extends DeleteGatewayResponseRequest {
  @override
  final _i3.GatewayResponseType responseType;
  @override
  final String restApiId;

  factory _$DeleteGatewayResponseRequest(
          [void Function(DeleteGatewayResponseRequestBuilder)? updates]) =>
      (new DeleteGatewayResponseRequestBuilder()..update(updates))._build();

  _$DeleteGatewayResponseRequest._(
      {required this.responseType, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseType, r'DeleteGatewayResponseRequest', 'responseType');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteGatewayResponseRequest', 'restApiId');
  }

  @override
  DeleteGatewayResponseRequest rebuild(
          void Function(DeleteGatewayResponseRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteGatewayResponseRequestBuilder toBuilder() =>
      new DeleteGatewayResponseRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteGatewayResponseRequest &&
        responseType == other.responseType &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseType.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteGatewayResponseRequestBuilder
    implements
        Builder<DeleteGatewayResponseRequest,
            DeleteGatewayResponseRequestBuilder> {
  _$DeleteGatewayResponseRequest? _$v;

  _i3.GatewayResponseType? _responseType;
  _i3.GatewayResponseType? get responseType => _$this._responseType;
  set responseType(_i3.GatewayResponseType? responseType) =>
      _$this._responseType = responseType;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  DeleteGatewayResponseRequestBuilder() {
    DeleteGatewayResponseRequest._init(this);
  }

  DeleteGatewayResponseRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseType = $v.responseType;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteGatewayResponseRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteGatewayResponseRequest;
  }

  @override
  void update(void Function(DeleteGatewayResponseRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteGatewayResponseRequest build() => _build();

  _$DeleteGatewayResponseRequest _build() {
    final _$result = _$v ??
        new _$DeleteGatewayResponseRequest._(
            responseType: BuiltValueNullFieldError.checkNotNull(
                responseType, r'DeleteGatewayResponseRequest', 'responseType'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteGatewayResponseRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteGatewayResponseRequestPayload
    extends DeleteGatewayResponseRequestPayload {
  factory _$DeleteGatewayResponseRequestPayload(
          [void Function(DeleteGatewayResponseRequestPayloadBuilder)?
              updates]) =>
      (new DeleteGatewayResponseRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteGatewayResponseRequestPayload._() : super._();

  @override
  DeleteGatewayResponseRequestPayload rebuild(
          void Function(DeleteGatewayResponseRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteGatewayResponseRequestPayloadBuilder toBuilder() =>
      new DeleteGatewayResponseRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteGatewayResponseRequestPayload;
  }

  @override
  int get hashCode {
    return 169859137;
  }
}

class DeleteGatewayResponseRequestPayloadBuilder
    implements
        Builder<DeleteGatewayResponseRequestPayload,
            DeleteGatewayResponseRequestPayloadBuilder> {
  _$DeleteGatewayResponseRequestPayload? _$v;

  DeleteGatewayResponseRequestPayloadBuilder() {
    DeleteGatewayResponseRequestPayload._init(this);
  }

  @override
  void replace(DeleteGatewayResponseRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteGatewayResponseRequestPayload;
  }

  @override
  void update(
      void Function(DeleteGatewayResponseRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteGatewayResponseRequestPayload build() => _build();

  _$DeleteGatewayResponseRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteGatewayResponseRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
