// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpRange extends IpRange {
  @override
  final String? cidrIp;
  @override
  final String? description;

  factory _$IpRange([void Function(IpRangeBuilder)? updates]) =>
      (new IpRangeBuilder()..update(updates))._build();

  _$IpRange._({this.cidrIp, this.description}) : super._();

  @override
  IpRange rebuild(void Function(IpRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpRangeBuilder toBuilder() => new IpRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpRange &&
        cidrIp == other.cidrIp &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrIp.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpRangeBuilder implements Builder<IpRange, IpRangeBuilder> {
  _$IpRange? _$v;

  String? _cidrIp;
  String? get cidrIp => _$this._cidrIp;
  set cidrIp(String? cidrIp) => _$this._cidrIp = cidrIp;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  IpRangeBuilder();

  IpRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrIp = $v.cidrIp;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpRange;
  }

  @override
  void update(void Function(IpRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpRange build() => _build();

  _$IpRange _build() {
    final _$result =
        _$v ?? new _$IpRange._(cidrIp: cidrIp, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
