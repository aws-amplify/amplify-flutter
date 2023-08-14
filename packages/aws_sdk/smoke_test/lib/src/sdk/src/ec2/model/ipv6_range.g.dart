// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6Range extends Ipv6Range {
  @override
  final String? cidrIpv6;
  @override
  final String? description;

  factory _$Ipv6Range([void Function(Ipv6RangeBuilder)? updates]) =>
      (new Ipv6RangeBuilder()..update(updates))._build();

  _$Ipv6Range._({this.cidrIpv6, this.description}) : super._();

  @override
  Ipv6Range rebuild(void Function(Ipv6RangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6RangeBuilder toBuilder() => new Ipv6RangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6Range &&
        cidrIpv6 == other.cidrIpv6 &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrIpv6.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv6RangeBuilder implements Builder<Ipv6Range, Ipv6RangeBuilder> {
  _$Ipv6Range? _$v;

  String? _cidrIpv6;
  String? get cidrIpv6 => _$this._cidrIpv6;
  set cidrIpv6(String? cidrIpv6) => _$this._cidrIpv6 = cidrIpv6;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Ipv6RangeBuilder();

  Ipv6RangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrIpv6 = $v.cidrIpv6;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6Range other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6Range;
  }

  @override
  void update(void Function(Ipv6RangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6Range build() => _build();

  _$Ipv6Range _build() {
    final _$result =
        _$v ?? new _$Ipv6Range._(cidrIpv6: cidrIpv6, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
