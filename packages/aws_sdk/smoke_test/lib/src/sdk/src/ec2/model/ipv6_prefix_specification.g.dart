// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_prefix_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6PrefixSpecification extends Ipv6PrefixSpecification {
  @override
  final String? ipv6Prefix;

  factory _$Ipv6PrefixSpecification(
          [void Function(Ipv6PrefixSpecificationBuilder)? updates]) =>
      (new Ipv6PrefixSpecificationBuilder()..update(updates))._build();

  _$Ipv6PrefixSpecification._({this.ipv6Prefix}) : super._();

  @override
  Ipv6PrefixSpecification rebuild(
          void Function(Ipv6PrefixSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6PrefixSpecificationBuilder toBuilder() =>
      new Ipv6PrefixSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6PrefixSpecification && ipv6Prefix == other.ipv6Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv6PrefixSpecificationBuilder
    implements
        Builder<Ipv6PrefixSpecification, Ipv6PrefixSpecificationBuilder> {
  _$Ipv6PrefixSpecification? _$v;

  String? _ipv6Prefix;
  String? get ipv6Prefix => _$this._ipv6Prefix;
  set ipv6Prefix(String? ipv6Prefix) => _$this._ipv6Prefix = ipv6Prefix;

  Ipv6PrefixSpecificationBuilder();

  Ipv6PrefixSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Prefix = $v.ipv6Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6PrefixSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6PrefixSpecification;
  }

  @override
  void update(void Function(Ipv6PrefixSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6PrefixSpecification build() => _build();

  _$Ipv6PrefixSpecification _build() {
    final _$result =
        _$v ?? new _$Ipv6PrefixSpecification._(ipv6Prefix: ipv6Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
