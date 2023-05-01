// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.deactivate_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeactivateMfaDeviceRequest extends DeactivateMfaDeviceRequest {
  @override
  final String userName;
  @override
  final String serialNumber;

  factory _$DeactivateMfaDeviceRequest(
          [void Function(DeactivateMfaDeviceRequestBuilder)? updates]) =>
      (new DeactivateMfaDeviceRequestBuilder()..update(updates))._build();

  _$DeactivateMfaDeviceRequest._(
      {required this.userName, required this.serialNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'DeactivateMfaDeviceRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'DeactivateMfaDeviceRequest', 'serialNumber');
  }

  @override
  DeactivateMfaDeviceRequest rebuild(
          void Function(DeactivateMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeactivateMfaDeviceRequestBuilder toBuilder() =>
      new DeactivateMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeactivateMfaDeviceRequest &&
        userName == other.userName &&
        serialNumber == other.serialNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeactivateMfaDeviceRequestBuilder
    implements
        Builder<DeactivateMfaDeviceRequest, DeactivateMfaDeviceRequestBuilder> {
  _$DeactivateMfaDeviceRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  DeactivateMfaDeviceRequestBuilder() {
    DeactivateMfaDeviceRequest._init(this);
  }

  DeactivateMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serialNumber = $v.serialNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeactivateMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeactivateMfaDeviceRequest;
  }

  @override
  void update(void Function(DeactivateMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeactivateMfaDeviceRequest build() => _build();

  _$DeactivateMfaDeviceRequest _build() {
    final _$result = _$v ??
        new _$DeactivateMfaDeviceRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'DeactivateMfaDeviceRequest', 'userName'),
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'DeactivateMfaDeviceRequest', 'serialNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
