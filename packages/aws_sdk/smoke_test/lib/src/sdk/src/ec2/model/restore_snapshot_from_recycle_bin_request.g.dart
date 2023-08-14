// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_snapshot_from_recycle_bin_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreSnapshotFromRecycleBinRequest
    extends RestoreSnapshotFromRecycleBinRequest {
  @override
  final String? snapshotId;
  @override
  final bool dryRun;

  factory _$RestoreSnapshotFromRecycleBinRequest(
          [void Function(RestoreSnapshotFromRecycleBinRequestBuilder)?
              updates]) =>
      (new RestoreSnapshotFromRecycleBinRequestBuilder()..update(updates))
          ._build();

  _$RestoreSnapshotFromRecycleBinRequest._(
      {this.snapshotId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RestoreSnapshotFromRecycleBinRequest', 'dryRun');
  }

  @override
  RestoreSnapshotFromRecycleBinRequest rebuild(
          void Function(RestoreSnapshotFromRecycleBinRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreSnapshotFromRecycleBinRequestBuilder toBuilder() =>
      new RestoreSnapshotFromRecycleBinRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreSnapshotFromRecycleBinRequest &&
        snapshotId == other.snapshotId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreSnapshotFromRecycleBinRequestBuilder
    implements
        Builder<RestoreSnapshotFromRecycleBinRequest,
            RestoreSnapshotFromRecycleBinRequestBuilder> {
  _$RestoreSnapshotFromRecycleBinRequest? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RestoreSnapshotFromRecycleBinRequestBuilder() {
    RestoreSnapshotFromRecycleBinRequest._init(this);
  }

  RestoreSnapshotFromRecycleBinRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreSnapshotFromRecycleBinRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreSnapshotFromRecycleBinRequest;
  }

  @override
  void update(
      void Function(RestoreSnapshotFromRecycleBinRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreSnapshotFromRecycleBinRequest build() => _build();

  _$RestoreSnapshotFromRecycleBinRequest _build() {
    final _$result = _$v ??
        new _$RestoreSnapshotFromRecycleBinRequest._(
            snapshotId: snapshotId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RestoreSnapshotFromRecycleBinRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
