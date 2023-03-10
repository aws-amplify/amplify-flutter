// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_api_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteApiKeyRequest extends DeleteApiKeyRequest {
  @override
  final String apiKey;

  factory _$DeleteApiKeyRequest(
          [void Function(DeleteApiKeyRequestBuilder)? updates]) =>
      (new DeleteApiKeyRequestBuilder()..update(updates))._build();

  _$DeleteApiKeyRequest._({required this.apiKey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKey, r'DeleteApiKeyRequest', 'apiKey');
  }

  @override
  DeleteApiKeyRequest rebuild(
          void Function(DeleteApiKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteApiKeyRequestBuilder toBuilder() =>
      new DeleteApiKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteApiKeyRequest && apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteApiKeyRequestBuilder
    implements Builder<DeleteApiKeyRequest, DeleteApiKeyRequestBuilder> {
  _$DeleteApiKeyRequest? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  DeleteApiKeyRequestBuilder() {
    DeleteApiKeyRequest._init(this);
  }

  DeleteApiKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteApiKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteApiKeyRequest;
  }

  @override
  void update(void Function(DeleteApiKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteApiKeyRequest build() => _build();

  _$DeleteApiKeyRequest _build() {
    final _$result = _$v ??
        new _$DeleteApiKeyRequest._(
            apiKey: BuiltValueNullFieldError.checkNotNull(
                apiKey, r'DeleteApiKeyRequest', 'apiKey'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteApiKeyRequestPayload extends DeleteApiKeyRequestPayload {
  factory _$DeleteApiKeyRequestPayload(
          [void Function(DeleteApiKeyRequestPayloadBuilder)? updates]) =>
      (new DeleteApiKeyRequestPayloadBuilder()..update(updates))._build();

  _$DeleteApiKeyRequestPayload._() : super._();

  @override
  DeleteApiKeyRequestPayload rebuild(
          void Function(DeleteApiKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteApiKeyRequestPayloadBuilder toBuilder() =>
      new DeleteApiKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteApiKeyRequestPayload;
  }

  @override
  int get hashCode {
    return 410399015;
  }
}

class DeleteApiKeyRequestPayloadBuilder
    implements
        Builder<DeleteApiKeyRequestPayload, DeleteApiKeyRequestPayloadBuilder> {
  _$DeleteApiKeyRequestPayload? _$v;

  DeleteApiKeyRequestPayloadBuilder() {
    DeleteApiKeyRequestPayload._init(this);
  }

  @override
  void replace(DeleteApiKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteApiKeyRequestPayload;
  }

  @override
  void update(void Function(DeleteApiKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteApiKeyRequestPayload build() => _build();

  _$DeleteApiKeyRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteApiKeyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
