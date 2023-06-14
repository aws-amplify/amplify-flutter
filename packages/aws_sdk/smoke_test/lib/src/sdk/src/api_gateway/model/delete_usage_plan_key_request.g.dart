// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_usage_plan_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteUsagePlanKeyRequest extends DeleteUsagePlanKeyRequest {
  @override
  final String usagePlanId;
  @override
  final String keyId;

  factory _$DeleteUsagePlanKeyRequest(
          [void Function(DeleteUsagePlanKeyRequestBuilder)? updates]) =>
      (new DeleteUsagePlanKeyRequestBuilder()..update(updates))._build();

  _$DeleteUsagePlanKeyRequest._(
      {required this.usagePlanId, required this.keyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'DeleteUsagePlanKeyRequest', 'usagePlanId');
    BuiltValueNullFieldError.checkNotNull(
        keyId, r'DeleteUsagePlanKeyRequest', 'keyId');
  }

  @override
  DeleteUsagePlanKeyRequest rebuild(
          void Function(DeleteUsagePlanKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUsagePlanKeyRequestBuilder toBuilder() =>
      new DeleteUsagePlanKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUsagePlanKeyRequest &&
        usagePlanId == other.usagePlanId &&
        keyId == other.keyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteUsagePlanKeyRequestBuilder
    implements
        Builder<DeleteUsagePlanKeyRequest, DeleteUsagePlanKeyRequestBuilder> {
  _$DeleteUsagePlanKeyRequest? _$v;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  DeleteUsagePlanKeyRequestBuilder() {
    DeleteUsagePlanKeyRequest._init(this);
  }

  DeleteUsagePlanKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usagePlanId = $v.usagePlanId;
      _keyId = $v.keyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteUsagePlanKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUsagePlanKeyRequest;
  }

  @override
  void update(void Function(DeleteUsagePlanKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUsagePlanKeyRequest build() => _build();

  _$DeleteUsagePlanKeyRequest _build() {
    final _$result = _$v ??
        new _$DeleteUsagePlanKeyRequest._(
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'DeleteUsagePlanKeyRequest', 'usagePlanId'),
            keyId: BuiltValueNullFieldError.checkNotNull(
                keyId, r'DeleteUsagePlanKeyRequest', 'keyId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteUsagePlanKeyRequestPayload
    extends DeleteUsagePlanKeyRequestPayload {
  factory _$DeleteUsagePlanKeyRequestPayload(
          [void Function(DeleteUsagePlanKeyRequestPayloadBuilder)? updates]) =>
      (new DeleteUsagePlanKeyRequestPayloadBuilder()..update(updates))._build();

  _$DeleteUsagePlanKeyRequestPayload._() : super._();

  @override
  DeleteUsagePlanKeyRequestPayload rebuild(
          void Function(DeleteUsagePlanKeyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUsagePlanKeyRequestPayloadBuilder toBuilder() =>
      new DeleteUsagePlanKeyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUsagePlanKeyRequestPayload;
  }

  @override
  int get hashCode {
    return 1005874204;
  }
}

class DeleteUsagePlanKeyRequestPayloadBuilder
    implements
        Builder<DeleteUsagePlanKeyRequestPayload,
            DeleteUsagePlanKeyRequestPayloadBuilder> {
  _$DeleteUsagePlanKeyRequestPayload? _$v;

  DeleteUsagePlanKeyRequestPayloadBuilder() {
    DeleteUsagePlanKeyRequestPayload._init(this);
  }

  @override
  void replace(DeleteUsagePlanKeyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUsagePlanKeyRequestPayload;
  }

  @override
  void update(void Function(DeleteUsagePlanKeyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUsagePlanKeyRequestPayload build() => _build();

  _$DeleteUsagePlanKeyRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteUsagePlanKeyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
