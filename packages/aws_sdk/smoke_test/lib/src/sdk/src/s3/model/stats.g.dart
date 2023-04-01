// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.stats;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stats extends Stats {
  @override
  final _i2.Int64 bytesScanned;
  @override
  final _i2.Int64 bytesProcessed;
  @override
  final _i2.Int64 bytesReturned;

  factory _$Stats([void Function(StatsBuilder)? updates]) =>
      (new StatsBuilder()..update(updates))._build();

  _$Stats._(
      {required this.bytesScanned,
      required this.bytesProcessed,
      required this.bytesReturned})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bytesScanned, r'Stats', 'bytesScanned');
    BuiltValueNullFieldError.checkNotNull(
        bytesProcessed, r'Stats', 'bytesProcessed');
    BuiltValueNullFieldError.checkNotNull(
        bytesReturned, r'Stats', 'bytesReturned');
  }

  @override
  Stats rebuild(void Function(StatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsBuilder toBuilder() => new StatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stats &&
        bytesScanned == other.bytesScanned &&
        bytesProcessed == other.bytesProcessed &&
        bytesReturned == other.bytesReturned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bytesScanned.hashCode);
    _$hash = $jc(_$hash, bytesProcessed.hashCode);
    _$hash = $jc(_$hash, bytesReturned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StatsBuilder implements Builder<Stats, StatsBuilder> {
  _$Stats? _$v;

  _i2.Int64? _bytesScanned;
  _i2.Int64? get bytesScanned => _$this._bytesScanned;
  set bytesScanned(_i2.Int64? bytesScanned) =>
      _$this._bytesScanned = bytesScanned;

  _i2.Int64? _bytesProcessed;
  _i2.Int64? get bytesProcessed => _$this._bytesProcessed;
  set bytesProcessed(_i2.Int64? bytesProcessed) =>
      _$this._bytesProcessed = bytesProcessed;

  _i2.Int64? _bytesReturned;
  _i2.Int64? get bytesReturned => _$this._bytesReturned;
  set bytesReturned(_i2.Int64? bytesReturned) =>
      _$this._bytesReturned = bytesReturned;

  StatsBuilder() {
    Stats._init(this);
  }

  StatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bytesScanned = $v.bytesScanned;
      _bytesProcessed = $v.bytesProcessed;
      _bytesReturned = $v.bytesReturned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Stats;
  }

  @override
  void update(void Function(StatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Stats build() => _build();

  _$Stats _build() {
    final _$result = _$v ??
        new _$Stats._(
            bytesScanned: BuiltValueNullFieldError.checkNotNull(
                bytesScanned, r'Stats', 'bytesScanned'),
            bytesProcessed: BuiltValueNullFieldError.checkNotNull(
                bytesProcessed, r'Stats', 'bytesProcessed'),
            bytesReturned: BuiltValueNullFieldError.checkNotNull(
                bytesReturned, r'Stats', 'bytesReturned'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
