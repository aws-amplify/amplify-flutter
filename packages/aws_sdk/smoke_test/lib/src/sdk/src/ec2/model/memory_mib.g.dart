// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_mib.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemoryMib extends MemoryMib {
  @override
  final int min;
  @override
  final int max;

  factory _$MemoryMib([void Function(MemoryMibBuilder)? updates]) =>
      (new MemoryMibBuilder()..update(updates))._build();

  _$MemoryMib._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'MemoryMib', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'MemoryMib', 'max');
  }

  @override
  MemoryMib rebuild(void Function(MemoryMibBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoryMibBuilder toBuilder() => new MemoryMibBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoryMib && min == other.min && max == other.max;
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

class MemoryMibBuilder implements Builder<MemoryMib, MemoryMibBuilder> {
  _$MemoryMib? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  MemoryMibBuilder() {
    MemoryMib._init(this);
  }

  MemoryMibBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoryMib other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoryMib;
  }

  @override
  void update(void Function(MemoryMibBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoryMib build() => _build();

  _$MemoryMib _build() {
    final _$result = _$v ??
        new _$MemoryMib._(
            min:
                BuiltValueNullFieldError.checkNotNull(min, r'MemoryMib', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'MemoryMib', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
