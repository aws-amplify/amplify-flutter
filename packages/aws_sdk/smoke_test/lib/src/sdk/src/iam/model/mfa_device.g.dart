// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.mfa_device;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaDevice extends MfaDevice {
  @override
  final String userName;
  @override
  final String serialNumber;
  @override
  final DateTime enableDate;

  factory _$MfaDevice([void Function(MfaDeviceBuilder)? updates]) =>
      (new MfaDeviceBuilder()..update(updates))._build();

  _$MfaDevice._(
      {required this.userName,
      required this.serialNumber,
      required this.enableDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userName, r'MfaDevice', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'MfaDevice', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(
        enableDate, r'MfaDevice', 'enableDate');
  }

  @override
  MfaDevice rebuild(void Function(MfaDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaDeviceBuilder toBuilder() => new MfaDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaDevice &&
        userName == other.userName &&
        serialNumber == other.serialNumber &&
        enableDate == other.enableDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, enableDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MfaDeviceBuilder implements Builder<MfaDevice, MfaDeviceBuilder> {
  _$MfaDevice? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  DateTime? _enableDate;
  DateTime? get enableDate => _$this._enableDate;
  set enableDate(DateTime? enableDate) => _$this._enableDate = enableDate;

  MfaDeviceBuilder() {
    MfaDevice._init(this);
  }

  MfaDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serialNumber = $v.serialNumber;
      _enableDate = $v.enableDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MfaDevice;
  }

  @override
  void update(void Function(MfaDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaDevice build() => _build();

  _$MfaDevice _build() {
    final _$result = _$v ??
        new _$MfaDevice._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'MfaDevice', 'userName'),
            serialNumber: BuiltValueNullFieldError.checkNotNull(
                serialNumber, r'MfaDevice', 'serialNumber'),
            enableDate: BuiltValueNullFieldError.checkNotNull(
                enableDate, r'MfaDevice', 'enableDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
