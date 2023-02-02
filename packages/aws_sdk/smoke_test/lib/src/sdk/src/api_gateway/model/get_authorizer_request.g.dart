// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAuthorizerRequest extends GetAuthorizerRequest {
  @override
  final String authorizerId;
  @override
  final String restApiId;

  factory _$GetAuthorizerRequest(
          [void Function(GetAuthorizerRequestBuilder)? updates]) =>
      (new GetAuthorizerRequestBuilder()..update(updates))._build();

  _$GetAuthorizerRequest._(
      {required this.authorizerId, required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        authorizerId, r'GetAuthorizerRequest', 'authorizerId');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetAuthorizerRequest', 'restApiId');
  }

  @override
  GetAuthorizerRequest rebuild(
          void Function(GetAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizerRequestBuilder toBuilder() =>
      new GetAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorizerRequest &&
        authorizerId == other.authorizerId &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAuthorizerRequestBuilder
    implements Builder<GetAuthorizerRequest, GetAuthorizerRequestBuilder> {
  _$GetAuthorizerRequest? _$v;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  GetAuthorizerRequestBuilder() {
    GetAuthorizerRequest._init(this);
  }

  GetAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizerId = $v.authorizerId;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorizerRequest;
  }

  @override
  void update(void Function(GetAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorizerRequest build() => _build();

  _$GetAuthorizerRequest _build() {
    final _$result = _$v ??
        new _$GetAuthorizerRequest._(
            authorizerId: BuiltValueNullFieldError.checkNotNull(
                authorizerId, r'GetAuthorizerRequest', 'authorizerId'),
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetAuthorizerRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetAuthorizerRequestPayload extends GetAuthorizerRequestPayload {
  factory _$GetAuthorizerRequestPayload(
          [void Function(GetAuthorizerRequestPayloadBuilder)? updates]) =>
      (new GetAuthorizerRequestPayloadBuilder()..update(updates))._build();

  _$GetAuthorizerRequestPayload._() : super._();

  @override
  GetAuthorizerRequestPayload rebuild(
          void Function(GetAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizerRequestPayloadBuilder toBuilder() =>
      new GetAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorizerRequestPayload;
  }

  @override
  int get hashCode {
    return 173167276;
  }
}

class GetAuthorizerRequestPayloadBuilder
    implements
        Builder<GetAuthorizerRequestPayload,
            GetAuthorizerRequestPayloadBuilder> {
  _$GetAuthorizerRequestPayload? _$v;

  GetAuthorizerRequestPayloadBuilder() {
    GetAuthorizerRequestPayload._init(this);
  }

  @override
  void replace(GetAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorizerRequestPayload;
  }

  @override
  void update(void Function(GetAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorizerRequestPayload build() => _build();

  _$GetAuthorizerRequestPayload _build() {
    final _$result = _$v ?? new _$GetAuthorizerRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
