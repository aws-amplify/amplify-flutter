// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_usage_plan_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsagePlanKeyRequest extends GetUsagePlanKeyRequest {
  @override
  final String keyId;
  @override
  final String usagePlanId;

  factory _$GetUsagePlanKeyRequest(
          [void Function(GetUsagePlanKeyRequestBuilder)? updates]) =>
      (new GetUsagePlanKeyRequestBuilder()..update(updates))._build();

  _$GetUsagePlanKeyRequest._({required this.keyId, required this.usagePlanId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        keyId, r'GetUsagePlanKeyRequest', 'keyId');
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'GetUsagePlanKeyRequest', 'usagePlanId');
  }

  @override
  GetUsagePlanKeyRequest rebuild(
          void Function(GetUsagePlanKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanKeyRequestBuilder toBuilder() =>
      new GetUsagePlanKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanKeyRequest &&
        keyId == other.keyId &&
        usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUsagePlanKeyRequestBuilder
    implements Builder<GetUsagePlanKeyRequest, GetUsagePlanKeyRequestBuilder> {
  _$GetUsagePlanKeyRequest? _$v;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  GetUsagePlanKeyRequestBuilder() {
    GetUsagePlanKeyRequest._init(this);
  }

  GetUsagePlanKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyId = $v.keyId;
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsagePlanKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanKeyRequest;
  }

  @override
  void update(void Function(GetUsagePlanKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanKeyRequest build() => _build();

  _$GetUsagePlanKeyRequest _build() {
    final _$result = _$v ??
        new _$GetUsagePlanKeyRequest._(
            keyId: BuiltValueNullFieldError.checkNotNull(
                keyId, r'GetUsagePlanKeyRequest', 'keyId'),
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'GetUsagePlanKeyRequest', 'usagePlanId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUsagePlanKeyRequestPayload extends GetUsagePlanKeyRequestPayload {
  factory _$GetUsagePlanKeyRequestPayload(
          [void Function(GetUsagePlanKeyRequestPayloadBuilder)? updates]) =>
      (new GetUsagePlanKeyRequestPayloadBuilder()..update(updates))._build();

  _$GetUsagePlanKeyRequestPayload._() : super._();

  @override
  GetUsagePlanKeyRequestPayload rebuild(
          void Function(GetUsagePlanKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanKeyRequestPayloadBuilder toBuilder() =>
      new GetUsagePlanKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanKeyRequestPayload;
  }

  @override
  int get hashCode {
    return 925901835;
  }
}

class GetUsagePlanKeyRequestPayloadBuilder
    implements
        Builder<GetUsagePlanKeyRequestPayload,
            GetUsagePlanKeyRequestPayloadBuilder> {
  _$GetUsagePlanKeyRequestPayload? _$v;

  GetUsagePlanKeyRequestPayloadBuilder() {
    GetUsagePlanKeyRequestPayload._init(this);
  }

  @override
  void replace(GetUsagePlanKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanKeyRequestPayload;
  }

  @override
  void update(void Function(GetUsagePlanKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanKeyRequestPayload build() => _build();

  _$GetUsagePlanKeyRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsagePlanKeyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
