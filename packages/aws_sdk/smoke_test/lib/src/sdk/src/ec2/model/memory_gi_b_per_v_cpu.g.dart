// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_gi_b_per_v_cpu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemoryGiBPerVCpu extends MemoryGiBPerVCpu {
  @override
  final double min;
  @override
  final double max;

  factory _$MemoryGiBPerVCpu(
          [void Function(MemoryGiBPerVCpuBuilder)? updates]) =>
      (new MemoryGiBPerVCpuBuilder()..update(updates))._build();

  _$MemoryGiBPerVCpu._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'MemoryGiBPerVCpu', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'MemoryGiBPerVCpu', 'max');
  }

  @override
  MemoryGiBPerVCpu rebuild(void Function(MemoryGiBPerVCpuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoryGiBPerVCpuBuilder toBuilder() =>
      new MemoryGiBPerVCpuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoryGiBPerVCpu && min == other.min && max == other.max;
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

class MemoryGiBPerVCpuBuilder
    implements Builder<MemoryGiBPerVCpu, MemoryGiBPerVCpuBuilder> {
  _$MemoryGiBPerVCpu? _$v;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  MemoryGiBPerVCpuBuilder() {
    MemoryGiBPerVCpu._init(this);
  }

  MemoryGiBPerVCpuBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoryGiBPerVCpu other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoryGiBPerVCpu;
  }

  @override
  void update(void Function(MemoryGiBPerVCpuBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoryGiBPerVCpu build() => _build();

  _$MemoryGiBPerVCpu _build() {
    final _$result = _$v ??
        new _$MemoryGiBPerVCpu._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'MemoryGiBPerVCpu', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'MemoryGiBPerVCpu', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
