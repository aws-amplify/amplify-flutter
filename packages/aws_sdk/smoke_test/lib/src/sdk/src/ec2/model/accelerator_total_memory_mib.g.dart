// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accelerator_total_memory_mib.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceleratorTotalMemoryMib extends AcceleratorTotalMemoryMib {
  @override
  final int min;
  @override
  final int max;

  factory _$AcceleratorTotalMemoryMib(
          [void Function(AcceleratorTotalMemoryMibBuilder)? updates]) =>
      (new AcceleratorTotalMemoryMibBuilder()..update(updates))._build();

  _$AcceleratorTotalMemoryMib._({required this.min, required this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        min, r'AcceleratorTotalMemoryMib', 'min');
    BuiltValueNullFieldError.checkNotNull(
        max, r'AcceleratorTotalMemoryMib', 'max');
  }

  @override
  AcceleratorTotalMemoryMib rebuild(
          void Function(AcceleratorTotalMemoryMibBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceleratorTotalMemoryMibBuilder toBuilder() =>
      new AcceleratorTotalMemoryMibBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceleratorTotalMemoryMib &&
        min == other.min &&
        max == other.max;
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

class AcceleratorTotalMemoryMibBuilder
    implements
        Builder<AcceleratorTotalMemoryMib, AcceleratorTotalMemoryMibBuilder> {
  _$AcceleratorTotalMemoryMib? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  AcceleratorTotalMemoryMibBuilder() {
    AcceleratorTotalMemoryMib._init(this);
  }

  AcceleratorTotalMemoryMibBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceleratorTotalMemoryMib other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceleratorTotalMemoryMib;
  }

  @override
  void update(void Function(AcceleratorTotalMemoryMibBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceleratorTotalMemoryMib build() => _build();

  _$AcceleratorTotalMemoryMib _build() {
    final _$result = _$v ??
        new _$AcceleratorTotalMemoryMib._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'AcceleratorTotalMemoryMib', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'AcceleratorTotalMemoryMib', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
