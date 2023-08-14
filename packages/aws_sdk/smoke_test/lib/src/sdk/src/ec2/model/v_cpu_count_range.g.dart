// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v_cpu_count_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VCpuCountRange extends VCpuCountRange {
  @override
  final int min;
  @override
  final int max;

  factory _$VCpuCountRange([void Function(VCpuCountRangeBuilder)? updates]) =>
      (new VCpuCountRangeBuilder()..update(updates))._build();

  _$VCpuCountRange._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'VCpuCountRange', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'VCpuCountRange', 'max');
  }

  @override
  VCpuCountRange rebuild(void Function(VCpuCountRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VCpuCountRangeBuilder toBuilder() =>
      new VCpuCountRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VCpuCountRange && min == other.min && max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VCpuCountRangeBuilder
    implements Builder<VCpuCountRange, VCpuCountRangeBuilder> {
  _$VCpuCountRange? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  VCpuCountRangeBuilder() {
    VCpuCountRange._init(this);
  }

  VCpuCountRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VCpuCountRange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VCpuCountRange;
  }

  @override
  void update(void Function(VCpuCountRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VCpuCountRange build() => _build();

  _$VCpuCountRange _build() {
    final _$result = _$v ??
        new _$VCpuCountRange._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'VCpuCountRange', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'VCpuCountRange', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
