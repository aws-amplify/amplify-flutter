// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_private_ip_address_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesPrivateIpAddressConfig
    extends ScheduledInstancesPrivateIpAddressConfig {
  @override
  final bool primary;
  @override
  final String? privateIpAddress;

  factory _$ScheduledInstancesPrivateIpAddressConfig(
          [void Function(ScheduledInstancesPrivateIpAddressConfigBuilder)?
              updates]) =>
      (new ScheduledInstancesPrivateIpAddressConfigBuilder()..update(updates))
          ._build();

  _$ScheduledInstancesPrivateIpAddressConfig._(
      {required this.primary, this.privateIpAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        primary, r'ScheduledInstancesPrivateIpAddressConfig', 'primary');
  }

  @override
  ScheduledInstancesPrivateIpAddressConfig rebuild(
          void Function(ScheduledInstancesPrivateIpAddressConfigBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesPrivateIpAddressConfigBuilder toBuilder() =>
      new ScheduledInstancesPrivateIpAddressConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesPrivateIpAddressConfig &&
        primary == other.primary &&
        privateIpAddress == other.privateIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, primary.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesPrivateIpAddressConfigBuilder
    implements
        Builder<ScheduledInstancesPrivateIpAddressConfig,
            ScheduledInstancesPrivateIpAddressConfigBuilder> {
  _$ScheduledInstancesPrivateIpAddressConfig? _$v;

  bool? _primary;
  bool? get primary => _$this._primary;
  set primary(bool? primary) => _$this._primary = primary;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  ScheduledInstancesPrivateIpAddressConfigBuilder() {
    ScheduledInstancesPrivateIpAddressConfig._init(this);
  }

  ScheduledInstancesPrivateIpAddressConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primary = $v.primary;
      _privateIpAddress = $v.privateIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesPrivateIpAddressConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesPrivateIpAddressConfig;
  }

  @override
  void update(
      void Function(ScheduledInstancesPrivateIpAddressConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesPrivateIpAddressConfig build() => _build();

  _$ScheduledInstancesPrivateIpAddressConfig _build() {
    final _$result = _$v ??
        new _$ScheduledInstancesPrivateIpAddressConfig._(
            primary: BuiltValueNullFieldError.checkNotNull(primary,
                r'ScheduledInstancesPrivateIpAddressConfig', 'primary'),
            privateIpAddress: privateIpAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
