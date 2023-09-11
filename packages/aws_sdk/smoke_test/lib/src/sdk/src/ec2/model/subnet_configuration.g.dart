// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subnet_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubnetConfiguration extends SubnetConfiguration {
  @override
  final String? subnetId;
  @override
  final String? ipv4;
  @override
  final String? ipv6;

  factory _$SubnetConfiguration(
          [void Function(SubnetConfigurationBuilder)? updates]) =>
      (new SubnetConfigurationBuilder()..update(updates))._build();

  _$SubnetConfiguration._({this.subnetId, this.ipv4, this.ipv6}) : super._();

  @override
  SubnetConfiguration rebuild(
          void Function(SubnetConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubnetConfigurationBuilder toBuilder() =>
      new SubnetConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubnetConfiguration &&
        subnetId == other.subnetId &&
        ipv4 == other.ipv4 &&
        ipv6 == other.ipv6;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, ipv4.hashCode);
    _$hash = $jc(_$hash, ipv6.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubnetConfigurationBuilder
    implements Builder<SubnetConfiguration, SubnetConfigurationBuilder> {
  _$SubnetConfiguration? _$v;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _ipv4;
  String? get ipv4 => _$this._ipv4;
  set ipv4(String? ipv4) => _$this._ipv4 = ipv4;

  String? _ipv6;
  String? get ipv6 => _$this._ipv6;
  set ipv6(String? ipv6) => _$this._ipv6 = ipv6;

  SubnetConfigurationBuilder();

  SubnetConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetId = $v.subnetId;
      _ipv4 = $v.ipv4;
      _ipv6 = $v.ipv6;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubnetConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubnetConfiguration;
  }

  @override
  void update(void Function(SubnetConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubnetConfiguration build() => _build();

  _$SubnetConfiguration _build() {
    final _$result = _$v ??
        new _$SubnetConfiguration._(subnetId: subnetId, ipv4: ipv4, ipv6: ipv6);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
