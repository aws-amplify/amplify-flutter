// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'port_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PortRange extends PortRange {
  @override
  final int from;
  @override
  final int to;

  factory _$PortRange([void Function(PortRangeBuilder)? updates]) =>
      (new PortRangeBuilder()..update(updates))._build();

  _$PortRange._({required this.from, required this.to}) : super._() {
    BuiltValueNullFieldError.checkNotNull(from, r'PortRange', 'from');
    BuiltValueNullFieldError.checkNotNull(to, r'PortRange', 'to');
  }

  @override
  PortRange rebuild(void Function(PortRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortRangeBuilder toBuilder() => new PortRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortRange && from == other.from && to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PortRangeBuilder implements Builder<PortRange, PortRangeBuilder> {
  _$PortRange? _$v;

  int? _from;
  int? get from => _$this._from;
  set from(int? from) => _$this._from = from;

  int? _to;
  int? get to => _$this._to;
  set to(int? to) => _$this._to = to;

  PortRangeBuilder() {
    PortRange._init(this);
  }

  PortRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PortRange;
  }

  @override
  void update(void Function(PortRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PortRange build() => _build();

  _$PortRange _build() {
    final _$result = _$v ??
        new _$PortRange._(
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'PortRange', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(to, r'PortRange', 'to'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
