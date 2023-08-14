// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_local_storage_gb.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TotalLocalStorageGb extends TotalLocalStorageGb {
  @override
  final double min;
  @override
  final double max;

  factory _$TotalLocalStorageGb(
          [void Function(TotalLocalStorageGbBuilder)? updates]) =>
      (new TotalLocalStorageGbBuilder()..update(updates))._build();

  _$TotalLocalStorageGb._({required this.min, required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(min, r'TotalLocalStorageGb', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'TotalLocalStorageGb', 'max');
  }

  @override
  TotalLocalStorageGb rebuild(
          void Function(TotalLocalStorageGbBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TotalLocalStorageGbBuilder toBuilder() =>
      new TotalLocalStorageGbBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotalLocalStorageGb && min == other.min && max == other.max;
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

class TotalLocalStorageGbBuilder
    implements Builder<TotalLocalStorageGb, TotalLocalStorageGbBuilder> {
  _$TotalLocalStorageGb? _$v;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  TotalLocalStorageGbBuilder() {
    TotalLocalStorageGb._init(this);
  }

  TotalLocalStorageGbBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TotalLocalStorageGb other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TotalLocalStorageGb;
  }

  @override
  void update(void Function(TotalLocalStorageGbBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TotalLocalStorageGb build() => _build();

  _$TotalLocalStorageGb _build() {
    final _$result = _$v ??
        new _$TotalLocalStorageGb._(
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'TotalLocalStorageGb', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'TotalLocalStorageGb', 'max'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
