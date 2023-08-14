// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_snapshot_tier_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySnapshotTierRequest extends ModifySnapshotTierRequest {
  @override
  final String? snapshotId;
  @override
  final TargetStorageTier? storageTier;
  @override
  final bool dryRun;

  factory _$ModifySnapshotTierRequest(
          [void Function(ModifySnapshotTierRequestBuilder)? updates]) =>
      (new ModifySnapshotTierRequestBuilder()..update(updates))._build();

  _$ModifySnapshotTierRequest._(
      {this.snapshotId, this.storageTier, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifySnapshotTierRequest', 'dryRun');
  }

  @override
  ModifySnapshotTierRequest rebuild(
          void Function(ModifySnapshotTierRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySnapshotTierRequestBuilder toBuilder() =>
      new ModifySnapshotTierRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySnapshotTierRequest &&
        snapshotId == other.snapshotId &&
        storageTier == other.storageTier &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, storageTier.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySnapshotTierRequestBuilder
    implements
        Builder<ModifySnapshotTierRequest, ModifySnapshotTierRequestBuilder> {
  _$ModifySnapshotTierRequest? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  TargetStorageTier? _storageTier;
  TargetStorageTier? get storageTier => _$this._storageTier;
  set storageTier(TargetStorageTier? storageTier) =>
      _$this._storageTier = storageTier;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifySnapshotTierRequestBuilder() {
    ModifySnapshotTierRequest._init(this);
  }

  ModifySnapshotTierRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _storageTier = $v.storageTier;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySnapshotTierRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySnapshotTierRequest;
  }

  @override
  void update(void Function(ModifySnapshotTierRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySnapshotTierRequest build() => _build();

  _$ModifySnapshotTierRequest _build() {
    final _$result = _$v ??
        new _$ModifySnapshotTierRequest._(
            snapshotId: snapshotId,
            storageTier: storageTier,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifySnapshotTierRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
