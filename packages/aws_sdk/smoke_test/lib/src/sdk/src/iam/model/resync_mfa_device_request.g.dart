// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.resync_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResyncMfaDeviceRequest extends ResyncMfaDeviceRequest {
  @override
  final String userName;
  @override
  final String serialNumber;
  @override
  final String authenticationCode1;
  @override
  final String authenticationCode2;

  factory _$ResyncMfaDeviceRequest(
          [void Function(ResyncMfaDeviceRequestBuilder)? updates]) =>
      (new ResyncMfaDeviceRequestBuilder()..update(updates))._build();

  _$ResyncMfaDeviceRequest._(
      {required this.userName,
      required this.serialNumber,
      required this.authenticationCode1,
      required this.authenticationCode2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ResyncMfaDeviceRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'ResyncMfaDeviceRequest', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(
        authenticationCode1, r'ResyncMfaDeviceRequest', 'authenticationCode1');
    BuiltValueNullFieldError.checkNotNull(
        authenticationCode2, r'ResyncMfaDeviceRequest', 'authenticationCode2');
  }

  @override
  ResyncMfaDeviceRequest rebuild(
          void Function(ResyncMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResyncMfaDeviceRequestBuilder toBuilder() =>
      new ResyncMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResyncMfaDeviceRequest &&
        userName == other.userName &&
        serialNumber == other.serialNumber &&
        authenticationCode1 == other.authenticationCode1 &&
        authenticationCode2 == other.authenticationCode2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, authenticationCode1.hashCode);
    _$hash = $jc(_$hash, authenticationCode2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResyncMfaDeviceRequestBuilder
    implements Builder<ResyncMfaDeviceRequest, ResyncMfaDeviceRequestBuilder> {
  _$ResyncMfaDeviceRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _authenticationCode1;
  String? get authenticationCode1 => _$this._authenticationCode1;
  set authenticationCode1(String? authenticationCode1) =>
      _$this._authenticationCode1 = authenticationCode1;

  String? _authenticationCode2;
  String? get authenticationCode2 => _$this._authenticationCode2;
  set authenticationCode2(String? authenticationCode2) =>
      _$this._authenticationCode2 = authenticationCode2;

  ResyncMfaDeviceRequestBuilder() {
    ResyncMfaDeviceRequest._init(this);
  }

  ResyncMfaDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serialNumber = $v.serialNumber;
      _authenticationCode1 = $v.authenticationCode1;
      _authenticationCode2 = $v.authenticationCode2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResyncMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResyncMfaDeviceRequest;
  }

  @override
  void update(void Function(ResyncMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResyncMfaDeviceRequest build() => _build();

  _$ResyncMfaDeviceRequest _build() {
    final _$result = _$v ??
        new _$ResyncMfaDeviceRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ResyncMfaDeviceRequest', 'userName'),
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'ResyncMfaDeviceRequest', 'serialNumber'),
            authenticationCode1: BuiltValueNullFieldError.checkNotNull(
                authenticationCode1,
                r'ResyncMfaDeviceRequest',
                'authenticationCode1'),
            authenticationCode2: BuiltValueNullFieldError.checkNotNull(
                authenticationCode2,
                r'ResyncMfaDeviceRequest',
                'authenticationCode2'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
