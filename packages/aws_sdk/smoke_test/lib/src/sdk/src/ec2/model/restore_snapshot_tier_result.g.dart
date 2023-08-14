// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_snapshot_tier_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreSnapshotTierResult extends RestoreSnapshotTierResult {
  @override
  final String? snapshotId;
  @override
  final DateTime? restoreStartTime;
  @override
  final int restoreDuration;
  @override
  final bool isPermanentRestore;

  factory _$RestoreSnapshotTierResult(
          [void Function(RestoreSnapshotTierResultBuilder)? updates]) =>
      (new RestoreSnapshotTierResultBuilder()..update(updates))._build();

  _$RestoreSnapshotTierResult._(
      {this.snapshotId,
      this.restoreStartTime,
      required this.restoreDuration,
      required this.isPermanentRestore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restoreDuration, r'RestoreSnapshotTierResult', 'restoreDuration');
    BuiltValueNullFieldError.checkNotNull(
        isPermanentRestore, r'RestoreSnapshotTierResult', 'isPermanentRestore');
  }

  @override
  RestoreSnapshotTierResult rebuild(
          void Function(RestoreSnapshotTierResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreSnapshotTierResultBuilder toBuilder() =>
      new RestoreSnapshotTierResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreSnapshotTierResult &&
        snapshotId == other.snapshotId &&
        restoreStartTime == other.restoreStartTime &&
        restoreDuration == other.restoreDuration &&
        isPermanentRestore == other.isPermanentRestore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, restoreStartTime.hashCode);
    _$hash = $jc(_$hash, restoreDuration.hashCode);
    _$hash = $jc(_$hash, isPermanentRestore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreSnapshotTierResultBuilder
    implements
        Builder<RestoreSnapshotTierResult, RestoreSnapshotTierResultBuilder> {
  _$RestoreSnapshotTierResult? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  DateTime? _restoreStartTime;
  DateTime? get restoreStartTime => _$this._restoreStartTime;
  set restoreStartTime(DateTime? restoreStartTime) =>
      _$this._restoreStartTime = restoreStartTime;

  int? _restoreDuration;
  int? get restoreDuration => _$this._restoreDuration;
  set restoreDuration(int? restoreDuration) =>
      _$this._restoreDuration = restoreDuration;

  bool? _isPermanentRestore;
  bool? get isPermanentRestore => _$this._isPermanentRestore;
  set isPermanentRestore(bool? isPermanentRestore) =>
      _$this._isPermanentRestore = isPermanentRestore;

  RestoreSnapshotTierResultBuilder() {
    RestoreSnapshotTierResult._init(this);
  }

  RestoreSnapshotTierResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _restoreStartTime = $v.restoreStartTime;
      _restoreDuration = $v.restoreDuration;
      _isPermanentRestore = $v.isPermanentRestore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreSnapshotTierResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreSnapshotTierResult;
  }

  @override
  void update(void Function(RestoreSnapshotTierResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreSnapshotTierResult build() => _build();

  _$RestoreSnapshotTierResult _build() {
    final _$result = _$v ??
        new _$RestoreSnapshotTierResult._(
            snapshotId: snapshotId,
            restoreStartTime: restoreStartTime,
            restoreDuration: BuiltValueNullFieldError.checkNotNull(
                restoreDuration,
                r'RestoreSnapshotTierResult',
                'restoreDuration'),
            isPermanentRestore: BuiltValueNullFieldError.checkNotNull(
                isPermanentRestore,
                r'RestoreSnapshotTierResult',
                'isPermanentRestore'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
