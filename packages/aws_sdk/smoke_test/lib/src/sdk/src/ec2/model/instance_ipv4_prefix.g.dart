// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_ipv4_prefix.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceIpv4Prefix extends InstanceIpv4Prefix {
  @override
  final String? ipv4Prefix;

  factory _$InstanceIpv4Prefix(
          [void Function(InstanceIpv4PrefixBuilder)? updates]) =>
      (new InstanceIpv4PrefixBuilder()..update(updates))._build();

  _$InstanceIpv4Prefix._({this.ipv4Prefix}) : super._();

  @override
  InstanceIpv4Prefix rebuild(
          void Function(InstanceIpv4PrefixBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceIpv4PrefixBuilder toBuilder() =>
      new InstanceIpv4PrefixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceIpv4Prefix && ipv4Prefix == other.ipv4Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv4Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceIpv4PrefixBuilder
    implements Builder<InstanceIpv4Prefix, InstanceIpv4PrefixBuilder> {
  _$InstanceIpv4Prefix? _$v;

  String? _ipv4Prefix;
  String? get ipv4Prefix => _$this._ipv4Prefix;
  set ipv4Prefix(String? ipv4Prefix) => _$this._ipv4Prefix = ipv4Prefix;

  InstanceIpv4PrefixBuilder();

  InstanceIpv4PrefixBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv4Prefix = $v.ipv4Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceIpv4Prefix other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceIpv4Prefix;
  }

  @override
  void update(void Function(InstanceIpv4PrefixBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceIpv4Prefix build() => _build();

  _$InstanceIpv4Prefix _build() {
    final _$result = _$v ?? new _$InstanceIpv4Prefix._(ipv4Prefix: ipv4Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
