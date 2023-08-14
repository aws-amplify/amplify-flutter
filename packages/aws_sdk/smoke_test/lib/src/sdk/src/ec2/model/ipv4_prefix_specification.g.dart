// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv4_prefix_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv4PrefixSpecification extends Ipv4PrefixSpecification {
  @override
  final String? ipv4Prefix;

  factory _$Ipv4PrefixSpecification(
          [void Function(Ipv4PrefixSpecificationBuilder)? updates]) =>
      (new Ipv4PrefixSpecificationBuilder()..update(updates))._build();

  _$Ipv4PrefixSpecification._({this.ipv4Prefix}) : super._();

  @override
  Ipv4PrefixSpecification rebuild(
          void Function(Ipv4PrefixSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv4PrefixSpecificationBuilder toBuilder() =>
      new Ipv4PrefixSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv4PrefixSpecification && ipv4Prefix == other.ipv4Prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv4Prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv4PrefixSpecificationBuilder
    implements
        Builder<Ipv4PrefixSpecification, Ipv4PrefixSpecificationBuilder> {
  _$Ipv4PrefixSpecification? _$v;

  String? _ipv4Prefix;
  String? get ipv4Prefix => _$this._ipv4Prefix;
  set ipv4Prefix(String? ipv4Prefix) => _$this._ipv4Prefix = ipv4Prefix;

  Ipv4PrefixSpecificationBuilder();

  Ipv4PrefixSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv4Prefix = $v.ipv4Prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv4PrefixSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv4PrefixSpecification;
  }

  @override
  void update(void Function(Ipv4PrefixSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv4PrefixSpecification build() => _build();

  _$Ipv4PrefixSpecification _build() {
    final _$result =
        _$v ?? new _$Ipv4PrefixSpecification._(ipv4Prefix: ipv4Prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
