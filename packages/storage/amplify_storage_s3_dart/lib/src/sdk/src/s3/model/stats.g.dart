// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.stats;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Stats extends Stats {
  @override
  final _i2.Int64? bytesProcessed;
  @override
  final _i2.Int64? bytesReturned;
  @override
  final _i2.Int64? bytesScanned;

  factory _$Stats([void Function(StatsBuilder)? updates]) =>
      (new StatsBuilder()..update(updates))._build();

  _$Stats._({this.bytesProcessed, this.bytesReturned, this.bytesScanned})
      : super._();

  @override
  Stats rebuild(void Function(StatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsBuilder toBuilder() => new StatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stats &&
        bytesProcessed == other.bytesProcessed &&
        bytesReturned == other.bytesReturned &&
        bytesScanned == other.bytesScanned;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bytesProcessed.hashCode);
    _$hash = $jc(_$hash, bytesReturned.hashCode);
    _$hash = $jc(_$hash, bytesScanned.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StatsBuilder implements Builder<Stats, StatsBuilder> {
  _$Stats? _$v;

  _i2.Int64? _bytesProcessed;
  _i2.Int64? get bytesProcessed => _$this._bytesProcessed;
  set bytesProcessed(_i2.Int64? bytesProcessed) =>
      _$this._bytesProcessed = bytesProcessed;

  _i2.Int64? _bytesReturned;
  _i2.Int64? get bytesReturned => _$this._bytesReturned;
  set bytesReturned(_i2.Int64? bytesReturned) =>
      _$this._bytesReturned = bytesReturned;

  _i2.Int64? _bytesScanned;
  _i2.Int64? get bytesScanned => _$this._bytesScanned;
  set bytesScanned(_i2.Int64? bytesScanned) =>
      _$this._bytesScanned = bytesScanned;

  StatsBuilder() {
    Stats._init(this);
  }

  StatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bytesProcessed = $v.bytesProcessed;
      _bytesReturned = $v.bytesReturned;
      _bytesScanned = $v.bytesScanned;
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
            bytesProcessed: bytesProcessed,
            bytesReturned: bytesReturned,
            bytesScanned: bytesScanned);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
