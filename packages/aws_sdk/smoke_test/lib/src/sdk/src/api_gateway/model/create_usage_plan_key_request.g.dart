// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_usage_plan_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUsagePlanKeyRequest extends CreateUsagePlanKeyRequest {
  @override
  final String keyId;
  @override
  final String keyType;
  @override
  final String usagePlanId;

  factory _$CreateUsagePlanKeyRequest(
          [void Function(CreateUsagePlanKeyRequestBuilder)? updates]) =>
      (new CreateUsagePlanKeyRequestBuilder()..update(updates))._build();

  _$CreateUsagePlanKeyRequest._(
      {required this.keyId, required this.keyType, required this.usagePlanId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        keyId, r'CreateUsagePlanKeyRequest', 'keyId');
    BuiltValueNullFieldError.checkNotNull(
        keyType, r'CreateUsagePlanKeyRequest', 'keyType');
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'CreateUsagePlanKeyRequest', 'usagePlanId');
  }

  @override
  CreateUsagePlanKeyRequest rebuild(
          void Function(CreateUsagePlanKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUsagePlanKeyRequestBuilder toBuilder() =>
      new CreateUsagePlanKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUsagePlanKeyRequest &&
        keyId == other.keyId &&
        keyType == other.keyType &&
        usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateUsagePlanKeyRequestBuilder
    implements
        Builder<CreateUsagePlanKeyRequest, CreateUsagePlanKeyRequestBuilder> {
  _$CreateUsagePlanKeyRequest? _$v;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _keyType;
  String? get keyType => _$this._keyType;
  set keyType(String? keyType) => _$this._keyType = keyType;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  CreateUsagePlanKeyRequestBuilder() {
    CreateUsagePlanKeyRequest._init(this);
  }

  CreateUsagePlanKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyId = $v.keyId;
      _keyType = $v.keyType;
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUsagePlanKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUsagePlanKeyRequest;
  }

  @override
  void update(void Function(CreateUsagePlanKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUsagePlanKeyRequest build() => _build();

  _$CreateUsagePlanKeyRequest _build() {
    final _$result = _$v ??
        new _$CreateUsagePlanKeyRequest._(
            keyId: BuiltValueNullFieldError.checkNotNull(
                keyId, r'CreateUsagePlanKeyRequest', 'keyId'),
            keyType: BuiltValueNullFieldError.checkNotNull(
                keyType, r'CreateUsagePlanKeyRequest', 'keyType'),
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'CreateUsagePlanKeyRequest', 'usagePlanId'));
    replace(_$result);
    return _$result;
  }
}

class _$CreateUsagePlanKeyRequestPayload
    extends CreateUsagePlanKeyRequestPayload {
  @override
  final String keyId;
  @override
  final String keyType;

  factory _$CreateUsagePlanKeyRequestPayload(
          [void Function(CreateUsagePlanKeyRequestPayloadBuilder)? updates]) =>
      (new CreateUsagePlanKeyRequestPayloadBuilder()..update(updates))._build();

  _$CreateUsagePlanKeyRequestPayload._(
      {required this.keyId, required this.keyType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        keyId, r'CreateUsagePlanKeyRequestPayload', 'keyId');
    BuiltValueNullFieldError.checkNotNull(
        keyType, r'CreateUsagePlanKeyRequestPayload', 'keyType');
  }

  @override
  CreateUsagePlanKeyRequestPayload rebuild(
          void Function(CreateUsagePlanKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUsagePlanKeyRequestPayloadBuilder toBuilder() =>
      new CreateUsagePlanKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUsagePlanKeyRequestPayload &&
        keyId == other.keyId &&
        keyType == other.keyType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateUsagePlanKeyRequestPayloadBuilder
    implements
        Builder<CreateUsagePlanKeyRequestPayload,
            CreateUsagePlanKeyRequestPayloadBuilder> {
  _$CreateUsagePlanKeyRequestPayload? _$v;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _keyType;
  String? get keyType => _$this._keyType;
  set keyType(String? keyType) => _$this._keyType = keyType;

  CreateUsagePlanKeyRequestPayloadBuilder() {
    CreateUsagePlanKeyRequestPayload._init(this);
  }

  CreateUsagePlanKeyRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyId = $v.keyId;
      _keyType = $v.keyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUsagePlanKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUsagePlanKeyRequestPayload;
  }

  @override
  void update(void Function(CreateUsagePlanKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUsagePlanKeyRequestPayload build() => _build();

  _$CreateUsagePlanKeyRequestPayload _build() {
    final _$result = _$v ??
        new _$CreateUsagePlanKeyRequestPayload._(
            keyId: BuiltValueNullFieldError.checkNotNull(
                keyId, r'CreateUsagePlanKeyRequestPayload', 'keyId'),
            keyType: BuiltValueNullFieldError.checkNotNull(
                keyType, r'CreateUsagePlanKeyRequestPayload', 'keyType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
