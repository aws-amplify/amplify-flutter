// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pci_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PciId extends PciId {
  @override
  final String? deviceId;
  @override
  final String? vendorId;
  @override
  final String? subsystemId;
  @override
  final String? subsystemVendorId;

  factory _$PciId([void Function(PciIdBuilder)? updates]) =>
      (new PciIdBuilder()..update(updates))._build();

  _$PciId._(
      {this.deviceId, this.vendorId, this.subsystemId, this.subsystemVendorId})
      : super._();

  @override
  PciId rebuild(void Function(PciIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PciIdBuilder toBuilder() => new PciIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PciId &&
        deviceId == other.deviceId &&
        vendorId == other.vendorId &&
        subsystemId == other.subsystemId &&
        subsystemVendorId == other.subsystemVendorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, vendorId.hashCode);
    _$hash = $jc(_$hash, subsystemId.hashCode);
    _$hash = $jc(_$hash, subsystemVendorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PciIdBuilder implements Builder<PciId, PciIdBuilder> {
  _$PciId? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _vendorId;
  String? get vendorId => _$this._vendorId;
  set vendorId(String? vendorId) => _$this._vendorId = vendorId;

  String? _subsystemId;
  String? get subsystemId => _$this._subsystemId;
  set subsystemId(String? subsystemId) => _$this._subsystemId = subsystemId;

  String? _subsystemVendorId;
  String? get subsystemVendorId => _$this._subsystemVendorId;
  set subsystemVendorId(String? subsystemVendorId) =>
      _$this._subsystemVendorId = subsystemVendorId;

  PciIdBuilder();

  PciIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _vendorId = $v.vendorId;
      _subsystemId = $v.subsystemId;
      _subsystemVendorId = $v.subsystemVendorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PciId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PciId;
  }

  @override
  void update(void Function(PciIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PciId build() => _build();

  _$PciId _build() {
    final _$result = _$v ??
        new _$PciId._(
            deviceId: deviceId,
            vendorId: vendorId,
            subsystemId: subsystemId,
            subsystemVendorId: subsystemVendorId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
