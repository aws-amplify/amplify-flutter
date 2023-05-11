// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.virtual_mfa_device;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VirtualMfaDevice extends VirtualMfaDevice {
  @override
  final String serialNumber;
  @override
  final _i2.Uint8List? base32StringSeed;
  @override
  final _i2.Uint8List? qrCodePng;
  @override
  final _i3.User? user;
  @override
  final DateTime? enableDate;
  @override
  final _i5.BuiltList<_i4.Tag>? tags;

  factory _$VirtualMfaDevice(
          [void Function(VirtualMfaDeviceBuilder)? updates]) =>
      (new VirtualMfaDeviceBuilder()..update(updates))._build();

  _$VirtualMfaDevice._(
      {required this.serialNumber,
      this.base32StringSeed,
      this.qrCodePng,
      this.user,
      this.enableDate,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, r'VirtualMfaDevice', 'serialNumber');
  }

  @override
  VirtualMfaDevice rebuild(void Function(VirtualMfaDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VirtualMfaDeviceBuilder toBuilder() =>
      new VirtualMfaDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VirtualMfaDevice &&
        serialNumber == other.serialNumber &&
        base32StringSeed == other.base32StringSeed &&
        qrCodePng == other.qrCodePng &&
        user == other.user &&
        enableDate == other.enableDate &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, base32StringSeed.hashCode);
    _$hash = $jc(_$hash, qrCodePng.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, enableDate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VirtualMfaDeviceBuilder
    implements Builder<VirtualMfaDevice, VirtualMfaDeviceBuilder> {
  _$VirtualMfaDevice? _$v;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  _i2.Uint8List? _base32StringSeed;
  _i2.Uint8List? get base32StringSeed => _$this._base32StringSeed;
  set base32StringSeed(_i2.Uint8List? base32StringSeed) =>
      _$this._base32StringSeed = base32StringSeed;

  _i2.Uint8List? _qrCodePng;
  _i2.Uint8List? get qrCodePng => _$this._qrCodePng;
  set qrCodePng(_i2.Uint8List? qrCodePng) => _$this._qrCodePng = qrCodePng;

  _i3.UserBuilder? _user;
  _i3.UserBuilder get user => _$this._user ??= new _i3.UserBuilder();
  set user(_i3.UserBuilder? user) => _$this._user = user;

  DateTime? _enableDate;
  DateTime? get enableDate => _$this._enableDate;
  set enableDate(DateTime? enableDate) => _$this._enableDate = enableDate;

  _i5.ListBuilder<_i4.Tag>? _tags;
  _i5.ListBuilder<_i4.Tag> get tags =>
      _$this._tags ??= new _i5.ListBuilder<_i4.Tag>();
  set tags(_i5.ListBuilder<_i4.Tag>? tags) => _$this._tags = tags;

  VirtualMfaDeviceBuilder() {
    VirtualMfaDevice._init(this);
  }

  VirtualMfaDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialNumber = $v.serialNumber;
      _base32StringSeed = $v.base32StringSeed;
      _qrCodePng = $v.qrCodePng;
      _user = $v.user?.toBuilder();
      _enableDate = $v.enableDate;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VirtualMfaDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VirtualMfaDevice;
  }

  @override
  void update(void Function(VirtualMfaDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VirtualMfaDevice build() => _build();

  _$VirtualMfaDevice _build() {
    _$VirtualMfaDevice _$result;
    try {
      _$result = _$v ??
          new _$VirtualMfaDevice._(
              serialNumber: BuiltValueNullFieldError.checkNotNull(
                  serialNumber, r'VirtualMfaDevice', 'serialNumber'),
              base32StringSeed: base32StringSeed,
              qrCodePng: qrCodePng,
              user: _user?.build(),
              enableDate: enableDate,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VirtualMfaDevice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
