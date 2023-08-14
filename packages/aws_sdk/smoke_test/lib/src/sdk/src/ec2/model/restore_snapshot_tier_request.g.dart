// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_snapshot_tier_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreSnapshotTierRequest extends RestoreSnapshotTierRequest {
  @override
  final String? snapshotId;
  @override
  final int? temporaryRestoreDays;
  @override
  final bool permanentRestore;
  @override
  final bool dryRun;

  factory _$RestoreSnapshotTierRequest(
          [void Function(RestoreSnapshotTierRequestBuilder)? updates]) =>
      (new RestoreSnapshotTierRequestBuilder()..update(updates))._build();

  _$RestoreSnapshotTierRequest._(
      {this.snapshotId,
      this.temporaryRestoreDays,
      required this.permanentRestore,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        permanentRestore, r'RestoreSnapshotTierRequest', 'permanentRestore');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RestoreSnapshotTierRequest', 'dryRun');
  }

  @override
  RestoreSnapshotTierRequest rebuild(
          void Function(RestoreSnapshotTierRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreSnapshotTierRequestBuilder toBuilder() =>
      new RestoreSnapshotTierRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreSnapshotTierRequest &&
        snapshotId == other.snapshotId &&
        temporaryRestoreDays == other.temporaryRestoreDays &&
        permanentRestore == other.permanentRestore &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, temporaryRestoreDays.hashCode);
    _$hash = $jc(_$hash, permanentRestore.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreSnapshotTierRequestBuilder
    implements
        Builder<RestoreSnapshotTierRequest, RestoreSnapshotTierRequestBuilder> {
  _$RestoreSnapshotTierRequest? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  int? _temporaryRestoreDays;
  int? get temporaryRestoreDays => _$this._temporaryRestoreDays;
  set temporaryRestoreDays(int? temporaryRestoreDays) =>
      _$this._temporaryRestoreDays = temporaryRestoreDays;

  bool? _permanentRestore;
  bool? get permanentRestore => _$this._permanentRestore;
  set permanentRestore(bool? permanentRestore) =>
      _$this._permanentRestore = permanentRestore;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RestoreSnapshotTierRequestBuilder() {
    RestoreSnapshotTierRequest._init(this);
  }

  RestoreSnapshotTierRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _temporaryRestoreDays = $v.temporaryRestoreDays;
      _permanentRestore = $v.permanentRestore;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreSnapshotTierRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreSnapshotTierRequest;
  }

  @override
  void update(void Function(RestoreSnapshotTierRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreSnapshotTierRequest build() => _build();

  _$RestoreSnapshotTierRequest _build() {
    final _$result = _$v ??
        new _$RestoreSnapshotTierRequest._(
            snapshotId: snapshotId,
            temporaryRestoreDays: temporaryRestoreDays,
            permanentRestore: BuiltValueNullFieldError.checkNotNull(
                permanentRestore,
                r'RestoreSnapshotTierRequest',
                'permanentRestore'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RestoreSnapshotTierRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
