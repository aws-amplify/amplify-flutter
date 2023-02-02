// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_api_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiKeyRequest extends GetApiKeyRequest {
  @override
  final String apiKey;
  @override
  final bool? includeValue;

  factory _$GetApiKeyRequest(
          [void Function(GetApiKeyRequestBuilder)? updates]) =>
      (new GetApiKeyRequestBuilder()..update(updates))._build();

  _$GetApiKeyRequest._({required this.apiKey, this.includeValue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKey, r'GetApiKeyRequest', 'apiKey');
  }

  @override
  GetApiKeyRequest rebuild(void Function(GetApiKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiKeyRequestBuilder toBuilder() =>
      new GetApiKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiKeyRequest &&
        apiKey == other.apiKey &&
        includeValue == other.includeValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, includeValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetApiKeyRequestBuilder
    implements Builder<GetApiKeyRequest, GetApiKeyRequestBuilder> {
  _$GetApiKeyRequest? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  bool? _includeValue;
  bool? get includeValue => _$this._includeValue;
  set includeValue(bool? includeValue) => _$this._includeValue = includeValue;

  GetApiKeyRequestBuilder() {
    GetApiKeyRequest._init(this);
  }

  GetApiKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _includeValue = $v.includeValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApiKeyRequest;
  }

  @override
  void update(void Function(GetApiKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiKeyRequest build() => _build();

  _$GetApiKeyRequest _build() {
    final _$result = _$v ??
        new _$GetApiKeyRequest._(
            apiKey: BuiltValueNullFieldError.checkNotNull(
                apiKey, r'GetApiKeyRequest', 'apiKey'),
            includeValue: includeValue);
    replace(_$result);
    return _$result;
  }
}

class _$GetApiKeyRequestPayload extends GetApiKeyRequestPayload {
  factory _$GetApiKeyRequestPayload(
          [void Function(GetApiKeyRequestPayloadBuilder)? updates]) =>
      (new GetApiKeyRequestPayloadBuilder()..update(updates))._build();

  _$GetApiKeyRequestPayload._() : super._();

  @override
  GetApiKeyRequestPayload rebuild(
          void Function(GetApiKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiKeyRequestPayloadBuilder toBuilder() =>
      new GetApiKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiKeyRequestPayload;
  }

  @override
  int get hashCode {
    return 111665115;
  }
}

class GetApiKeyRequestPayloadBuilder
    implements
        Builder<GetApiKeyRequestPayload, GetApiKeyRequestPayloadBuilder> {
  _$GetApiKeyRequestPayload? _$v;

  GetApiKeyRequestPayloadBuilder() {
    GetApiKeyRequestPayload._init(this);
  }

  @override
  void replace(GetApiKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApiKeyRequestPayload;
  }

  @override
  void update(void Function(GetApiKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiKeyRequestPayload build() => _build();

  _$GetApiKeyRequestPayload _build() {
    final _$result = _$v ?? new _$GetApiKeyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
