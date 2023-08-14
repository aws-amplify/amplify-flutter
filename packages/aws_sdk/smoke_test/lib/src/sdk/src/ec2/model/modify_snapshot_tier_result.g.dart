// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_snapshot_tier_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySnapshotTierResult extends ModifySnapshotTierResult {
  @override
  final String? snapshotId;
  @override
  final DateTime? tieringStartTime;

  factory _$ModifySnapshotTierResult(
          [void Function(ModifySnapshotTierResultBuilder)? updates]) =>
      (new ModifySnapshotTierResultBuilder()..update(updates))._build();

  _$ModifySnapshotTierResult._({this.snapshotId, this.tieringStartTime})
      : super._();

  @override
  ModifySnapshotTierResult rebuild(
          void Function(ModifySnapshotTierResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySnapshotTierResultBuilder toBuilder() =>
      new ModifySnapshotTierResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySnapshotTierResult &&
        snapshotId == other.snapshotId &&
        tieringStartTime == other.tieringStartTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, tieringStartTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySnapshotTierResultBuilder
    implements
        Builder<ModifySnapshotTierResult, ModifySnapshotTierResultBuilder> {
  _$ModifySnapshotTierResult? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  DateTime? _tieringStartTime;
  DateTime? get tieringStartTime => _$this._tieringStartTime;
  set tieringStartTime(DateTime? tieringStartTime) =>
      _$this._tieringStartTime = tieringStartTime;

  ModifySnapshotTierResultBuilder();

  ModifySnapshotTierResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _tieringStartTime = $v.tieringStartTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySnapshotTierResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySnapshotTierResult;
  }

  @override
  void update(void Function(ModifySnapshotTierResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySnapshotTierResult build() => _build();

  _$ModifySnapshotTierResult _build() {
    final _$result = _$v ??
        new _$ModifySnapshotTierResult._(
            snapshotId: snapshotId, tieringStartTime: tieringStartTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
