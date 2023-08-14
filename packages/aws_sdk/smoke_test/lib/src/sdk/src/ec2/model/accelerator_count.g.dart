// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accelerator_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceleratorCount extends AcceleratorCount {
  @override
  final int min;
  @override
  final int max;

  factory _$AcceleratorCount(
          [void Function(AcceleratorCountBuilder)? updates]) =>
      (new AcceleratorCountBuilder()..update(updates))._build();

  _$AcceleratorCount._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'AcceleratorCount', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'AcceleratorCount', 'max');
  }

  @override
  AcceleratorCount rebuild(void Function(AcceleratorCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceleratorCountBuilder toBuilder() =>
      new AcceleratorCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceleratorCount && min == other.min && max == other.max;
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

class AcceleratorCountBuilder
    implements Builder<AcceleratorCount, AcceleratorCountBuilder> {
  _$AcceleratorCount? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  AcceleratorCountBuilder() {
    AcceleratorCount._init(this);
  }

  AcceleratorCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceleratorCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceleratorCount;
  }

  @override
  void update(void Function(AcceleratorCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceleratorCount build() => _build();

  _$AcceleratorCount _build() {
    final _$result = _$v ??
        new _$AcceleratorCount._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'AcceleratorCount', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'AcceleratorCount', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
