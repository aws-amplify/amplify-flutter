// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.progress;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Progress extends Progress {
  @override
  final _i2.Int64? bytesProcessed;
  @override
  final _i2.Int64? bytesReturned;
  @override
  final _i2.Int64? bytesScanned;

  factory _$Progress([void Function(ProgressBuilder)? updates]) =>
      (new ProgressBuilder()..update(updates))._build();

  _$Progress._({this.bytesProcessed, this.bytesReturned, this.bytesScanned})
      : super._();

  @override
  Progress rebuild(void Function(ProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressBuilder toBuilder() => new ProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Progress &&
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

class ProgressBuilder implements Builder<Progress, ProgressBuilder> {
  _$Progress? _$v;

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

  ProgressBuilder() {
    Progress._init(this);
  }

  ProgressBuilder get _$this {
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
  void replace(Progress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Progress;
  }

  @override
  void update(void Function(ProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Progress build() => _build();

  _$Progress _build() {
    final _$result = _$v ??
        new _$Progress._(
            bytesProcessed: bytesProcessed,
            bytesReturned: bytesReturned,
            bytesScanned: bytesScanned);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
