// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_authorizer_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAuthorizerRequest extends DeleteAuthorizerRequest {
  @override
  final String restApiId;
  @override
  final String authorizerId;

  factory _$DeleteAuthorizerRequest(
          [void Function(DeleteAuthorizerRequestBuilder)? updates]) =>
      (new DeleteAuthorizerRequestBuilder()..update(updates))._build();

  _$DeleteAuthorizerRequest._(
      {required this.restApiId, required this.authorizerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'DeleteAuthorizerRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        authorizerId, r'DeleteAuthorizerRequest', 'authorizerId');
  }

  @override
  DeleteAuthorizerRequest rebuild(
          void Function(DeleteAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAuthorizerRequestBuilder toBuilder() =>
      new DeleteAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAuthorizerRequest &&
        restApiId == other.restApiId &&
        authorizerId == other.authorizerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteAuthorizerRequestBuilder
    implements
        Builder<DeleteAuthorizerRequest, DeleteAuthorizerRequestBuilder> {
  _$DeleteAuthorizerRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  DeleteAuthorizerRequestBuilder() {
    DeleteAuthorizerRequest._init(this);
  }

  DeleteAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _authorizerId = $v.authorizerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAuthorizerRequest;
  }

  @override
  void update(void Function(DeleteAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAuthorizerRequest build() => _build();

  _$DeleteAuthorizerRequest _build() {
    final _$result = _$v ??
        new _$DeleteAuthorizerRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'DeleteAuthorizerRequest', 'restApiId'),
            authorizerId: BuiltValueNullFieldError.checkNotNull(
                authorizerId, r'DeleteAuthorizerRequest', 'authorizerId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteAuthorizerRequestPayload extends DeleteAuthorizerRequestPayload {
  factory _$DeleteAuthorizerRequestPayload(
          [void Function(DeleteAuthorizerRequestPayloadBuilder)? updates]) =>
      (new DeleteAuthorizerRequestPayloadBuilder()..update(updates))._build();

  _$DeleteAuthorizerRequestPayload._() : super._();

  @override
  DeleteAuthorizerRequestPayload rebuild(
          void Function(DeleteAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAuthorizerRequestPayloadBuilder toBuilder() =>
      new DeleteAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAuthorizerRequestPayload;
  }

  @override
  int get hashCode {
    return 301436144;
  }
}

class DeleteAuthorizerRequestPayloadBuilder
    implements
        Builder<DeleteAuthorizerRequestPayload,
            DeleteAuthorizerRequestPayloadBuilder> {
  _$DeleteAuthorizerRequestPayload? _$v;

  DeleteAuthorizerRequestPayloadBuilder() {
    DeleteAuthorizerRequestPayload._init(this);
  }

  @override
  void replace(DeleteAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAuthorizerRequestPayload;
  }

  @override
  void update(void Function(DeleteAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAuthorizerRequestPayload build() => _build();

  _$DeleteAuthorizerRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteAuthorizerRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
