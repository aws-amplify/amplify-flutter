// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mfa_device_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMfaDeviceResponse extends GetMfaDeviceResponse {
  @override
  final String? userName;
  @override
  final String serialNumber;
  @override
  final DateTime? enableDate;
  @override
  final _i2.BuiltMap<String, String>? certifications;

  factory _$GetMfaDeviceResponse(
          [void Function(GetMfaDeviceResponseBuilder)? updates]) =>
      (new GetMfaDeviceResponseBuilder()..update(updates))._build();

  _$GetMfaDeviceResponse._(
      {this.userName,
      required this.serialNumber,
      this.enableDate,
      this.certifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'GetMfaDeviceResponse', 'serialNumber');
  }

  @override
  GetMfaDeviceResponse rebuild(
          void Function(GetMfaDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMfaDeviceResponseBuilder toBuilder() =>
      new GetMfaDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMfaDeviceResponse &&
        userName == other.userName &&
        serialNumber == other.serialNumber &&
        enableDate == other.enableDate &&
        certifications == other.certifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, enableDate.hashCode);
    _$hash = $jc(_$hash, certifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetMfaDeviceResponseBuilder
    implements Builder<GetMfaDeviceResponse, GetMfaDeviceResponseBuilder> {
  _$GetMfaDeviceResponse? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  DateTime? _enableDate;
  DateTime? get enableDate => _$this._enableDate;
  set enableDate(DateTime? enableDate) => _$this._enableDate = enableDate;

  _i2.MapBuilder<String, String>? _certifications;
  _i2.MapBuilder<String, String> get certifications =>
      _$this._certifications ??= new _i2.MapBuilder<String, String>();
  set certifications(_i2.MapBuilder<String, String>? certifications) =>
      _$this._certifications = certifications;

  GetMfaDeviceResponseBuilder() {
    GetMfaDeviceResponse._init(this);
  }

  GetMfaDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serialNumber = $v.serialNumber;
      _enableDate = $v.enableDate;
      _certifications = $v.certifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMfaDeviceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMfaDeviceResponse;
  }

  @override
  void update(void Function(GetMfaDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMfaDeviceResponse build() => _build();

  _$GetMfaDeviceResponse _build() {
    _$GetMfaDeviceResponse _$result;
    try {
      _$result = _$v ??
          new _$GetMfaDeviceResponse._(
              userName: userName,
              serialNumber: BuiltValueNullFieldError.checkNotNull(
                  serialNumber, r'GetMfaDeviceResponse', 'serialNumber'),
              enableDate: enableDate,
              certifications: _certifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'certifications';
        _certifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetMfaDeviceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
