// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_device_metadata_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewDeviceMetadataType extends NewDeviceMetadataType {
  @override
  final String? deviceKey;
  @override
  final String? deviceGroupKey;

  factory _$NewDeviceMetadataType(
          [void Function(NewDeviceMetadataTypeBuilder)? updates]) =>
      (new NewDeviceMetadataTypeBuilder()..update(updates))._build();

  _$NewDeviceMetadataType._({this.deviceKey, this.deviceGroupKey}) : super._();

  @override
  NewDeviceMetadataType rebuild(
          void Function(NewDeviceMetadataTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewDeviceMetadataTypeBuilder toBuilder() =>
      new NewDeviceMetadataTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewDeviceMetadataType &&
        deviceKey == other.deviceKey &&
        deviceGroupKey == other.deviceGroupKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceKey.hashCode);
    _$hash = $jc(_$hash, deviceGroupKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NewDeviceMetadataTypeBuilder
    implements Builder<NewDeviceMetadataType, NewDeviceMetadataTypeBuilder> {
  _$NewDeviceMetadataType? _$v;

  String? _deviceKey;
  String? get deviceKey => _$this._deviceKey;
  set deviceKey(String? deviceKey) => _$this._deviceKey = deviceKey;

  String? _deviceGroupKey;
  String? get deviceGroupKey => _$this._deviceGroupKey;
  set deviceGroupKey(String? deviceGroupKey) =>
      _$this._deviceGroupKey = deviceGroupKey;

  NewDeviceMetadataTypeBuilder();

  NewDeviceMetadataTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceKey = $v.deviceKey;
      _deviceGroupKey = $v.deviceGroupKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewDeviceMetadataType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewDeviceMetadataType;
  }

  @override
  void update(void Function(NewDeviceMetadataTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewDeviceMetadataType build() => _build();

  _$NewDeviceMetadataType _build() {
    final _$result = _$v ??
        new _$NewDeviceMetadataType._(
            deviceKey: deviceKey, deviceGroupKey: deviceGroupKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
