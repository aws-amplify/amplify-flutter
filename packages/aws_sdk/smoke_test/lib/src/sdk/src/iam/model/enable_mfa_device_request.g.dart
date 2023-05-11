// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.enable_mfa_device_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableMfaDeviceRequest extends EnableMfaDeviceRequest {
  @override
  final String userName;
  @override
  final String serialNumber;
  @override
  final String authenticationCode1;
  @override
  final String authenticationCode2;

  factory _$EnableMfaDeviceRequest(
          [void Function(EnableMfaDeviceRequestBuilder)? updates]) =>
      (new EnableMfaDeviceRequestBuilder()..update(updates))._build();

  _$EnableMfaDeviceRequest._(
      {required this.userName,
      required this.serialNumber,
      required this.authenticationCode1,
      required this.authenticationCode2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'EnableMfaDeviceRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'EnableMfaDeviceRequest', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(
        authenticationCode1, r'EnableMfaDeviceRequest', 'authenticationCode1');
    BuiltValueNullFieldError.checkNotNull(
        authenticationCode2, r'EnableMfaDeviceRequest', 'authenticationCode2');
  }

  @override
  EnableMfaDeviceRequest rebuild(
          void Function(EnableMfaDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableMfaDeviceRequestBuilder toBuilder() =>
      new EnableMfaDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableMfaDeviceRequest &&
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

class EnableMfaDeviceRequestBuilder
    implements Builder<EnableMfaDeviceRequest, EnableMfaDeviceRequestBuilder> {
  _$EnableMfaDeviceRequest? _$v;

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

  EnableMfaDeviceRequestBuilder() {
    EnableMfaDeviceRequest._init(this);
  }

  EnableMfaDeviceRequestBuilder get _$this {
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
  void replace(EnableMfaDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableMfaDeviceRequest;
  }

  @override
  void update(void Function(EnableMfaDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableMfaDeviceRequest build() => _build();

  _$EnableMfaDeviceRequest _build() {
    final _$result = _$v ??
        new _$EnableMfaDeviceRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'EnableMfaDeviceRequest', 'userName'),
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'EnableMfaDeviceRequest', 'serialNumber'),
            authenticationCode1: BuiltValueNullFieldError.checkNotNull(
                authenticationCode1,
                r'EnableMfaDeviceRequest',
                'authenticationCode1'),
            authenticationCode2: BuiltValueNullFieldError.checkNotNull(
                authenticationCode2,
                r'EnableMfaDeviceRequest',
                'authenticationCode2'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
