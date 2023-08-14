// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_ipv6_prefix.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceIpv6Prefix extends InstanceIpv6Prefix {
  @override
  final String? ipv6Prefix;

  factory _$InstanceIpv6Prefix(
          [void Function(InstanceIpv6PrefixBuilder)? updates]) =>
      (new InstanceIpv6PrefixBuilder()..update(updates))._build();

  _$InstanceIpv6Prefix._({this.ipv6Prefix}) : super._();

  @override
  InstanceIpv6Prefix rebuild(
          void Function(InstanceIpv6PrefixBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceIpv6PrefixBuilder toBuilder() =>
      new InstanceIpv6PrefixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceIpv6Prefix && ipv6Prefix == other.ipv6Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceIpv6PrefixBuilder
    implements Builder<InstanceIpv6Prefix, InstanceIpv6PrefixBuilder> {
  _$InstanceIpv6Prefix? _$v;

  String? _ipv6Prefix;
  String? get ipv6Prefix => _$this._ipv6Prefix;
  set ipv6Prefix(String? ipv6Prefix) => _$this._ipv6Prefix = ipv6Prefix;

  InstanceIpv6PrefixBuilder();

  InstanceIpv6PrefixBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Prefix = $v.ipv6Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceIpv6Prefix other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceIpv6Prefix;
  }

  @override
  void update(void Function(InstanceIpv6PrefixBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceIpv6Prefix build() => _build();

  _$InstanceIpv6Prefix _build() {
    final _$result = _$v ?? new _$InstanceIpv6Prefix._(ipv6Prefix: ipv6Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
