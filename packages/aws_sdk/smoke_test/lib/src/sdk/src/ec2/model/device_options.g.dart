// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceOptions extends DeviceOptions {
  @override
  final String? tenantId;

  factory _$DeviceOptions([void Function(DeviceOptionsBuilder)? updates]) =>
      (new DeviceOptionsBuilder()..update(updates))._build();

  _$DeviceOptions._({this.tenantId}) : super._();

  @override
  DeviceOptions rebuild(void Function(DeviceOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceOptionsBuilder toBuilder() => new DeviceOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceOptions && tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeviceOptionsBuilder
    implements Builder<DeviceOptions, DeviceOptionsBuilder> {
  _$DeviceOptions? _$v;

  String? _tenantId;
  String? get tenantId => _$this._tenantId;
  set tenantId(String? tenantId) => _$this._tenantId = tenantId;

  DeviceOptionsBuilder();

  DeviceOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceOptions;
  }

  @override
  void update(void Function(DeviceOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceOptions build() => _build();

  _$DeviceOptions _build() {
    final _$result = _$v ?? new _$DeviceOptions._(tenantId: tenantId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
