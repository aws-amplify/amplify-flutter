// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_port_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterPortRange extends FilterPortRange {
  @override
  final int fromPort;
  @override
  final int toPort;

  factory _$FilterPortRange([void Function(FilterPortRangeBuilder)? updates]) =>
      (new FilterPortRangeBuilder()..update(updates))._build();

  _$FilterPortRange._({required this.fromPort, required this.toPort})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'FilterPortRange', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(toPort, r'FilterPortRange', 'toPort');
  }

  @override
  FilterPortRange rebuild(void Function(FilterPortRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterPortRangeBuilder toBuilder() =>
      new FilterPortRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterPortRange &&
        fromPort == other.fromPort &&
        toPort == other.toPort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FilterPortRangeBuilder
    implements Builder<FilterPortRange, FilterPortRangeBuilder> {
  _$FilterPortRange? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  FilterPortRangeBuilder() {
    FilterPortRange._init(this);
  }

  FilterPortRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterPortRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterPortRange;
  }

  @override
  void update(void Function(FilterPortRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterPortRange build() => _build();

  _$FilterPortRange _build() {
    final _$result = _$v ??
        new _$FilterPortRange._(
            fromPort: BuiltValueNullFieldError.checkNotNull(
                fromPort, r'FilterPortRange', 'fromPort'),
            toPort: BuiltValueNullFieldError.checkNotNull(
                toPort, r'FilterPortRange', 'toPort'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
