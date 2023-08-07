// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceType extends DeviceType {
  @override
  final String? deviceKey;
  @override
  final _i2.BuiltList<AttributeType>? deviceAttributes;
  @override
  final DateTime? deviceCreateDate;
  @override
  final DateTime? deviceLastModifiedDate;
  @override
  final DateTime? deviceLastAuthenticatedDate;

  factory _$DeviceType([void Function(DeviceTypeBuilder)? updates]) =>
      (new DeviceTypeBuilder()..update(updates))._build();

  _$DeviceType._(
      {this.deviceKey,
      this.deviceAttributes,
      this.deviceCreateDate,
      this.deviceLastModifiedDate,
      this.deviceLastAuthenticatedDate})
      : super._();

  @override
  DeviceType rebuild(void Function(DeviceTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceTypeBuilder toBuilder() => new DeviceTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceType &&
        deviceKey == other.deviceKey &&
        deviceAttributes == other.deviceAttributes &&
        deviceCreateDate == other.deviceCreateDate &&
        deviceLastModifiedDate == other.deviceLastModifiedDate &&
        deviceLastAuthenticatedDate == other.deviceLastAuthenticatedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, deviceAttributes.hashCode);
    _$hash = $jc(_$hash, deviceCreateDate.hashCode);
    _$hash = $jc(_$hash, deviceLastModifiedDate.hashCode);
    _$hash = $jc(_$hash, deviceLastAuthenticatedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeviceTypeBuilder implements Builder<DeviceType, DeviceTypeBuilder> {
  _$DeviceType? _$v;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  _i2.ListBuilder<AttributeType>? _deviceAttributes;
  _i2.ListBuilder<AttributeType> get deviceAttributes =>
      _$this._deviceAttributes ??= new _i2.ListBuilder<AttributeType>();
  set deviceAttributes(_i2.ListBuilder<AttributeType>? deviceAttributes) =>
      _$this._deviceAttributes = deviceAttributes;

  DateTime? _deviceCreateDate;
  DateTime? get deviceCreateDate => _$this._deviceCreateDate;
  set deviceCreateDate(DateTime? deviceCreateDate) =>
      _$this._deviceCreateDate = deviceCreateDate;

  DateTime? _deviceLastModifiedDate;
  DateTime? get deviceLastModifiedDate => _$this._deviceLastModifiedDate;
  set deviceLastModifiedDate(DateTime? deviceLastModifiedDate) =>
      _$this._deviceLastModifiedDate = deviceLastModifiedDate;

  DateTime? _deviceLastAuthenticatedDate;
  DateTime? get deviceLastAuthenticatedDate =>
      _$this._deviceLastAuthenticatedDate;
  set deviceLastAuthenticatedDate(DateTime? deviceLastAuthenticatedDate) =>
      _$this._deviceLastAuthenticatedDate = deviceLastAuthenticatedDate;

  DeviceTypeBuilder();

  DeviceTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceKey = $v.deviceKey;
      _deviceAttributes = $v.deviceAttributes?.toBuilder();
      _deviceCreateDate = $v.deviceCreateDate;
      _deviceLastModifiedDate = $v.deviceLastModifiedDate;
      _deviceLastAuthenticatedDate = $v.deviceLastAuthenticatedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceType;
  }

  @override
  void update(void Function(DeviceTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceType build() => _build();

  _$DeviceType _build() {
    _$DeviceType _$result;
    try {
      _$result = _$v ??
          new _$DeviceType._(
              deviceKey: deviceKey,
              deviceAttributes: _deviceAttributes?.build(),
              deviceCreateDate: deviceCreateDate,
              deviceLastModifiedDate: deviceLastModifiedDate,
              deviceLastAuthenticatedDate: deviceLastAuthenticatedDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceAttributes';
        _deviceAttributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeviceType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
