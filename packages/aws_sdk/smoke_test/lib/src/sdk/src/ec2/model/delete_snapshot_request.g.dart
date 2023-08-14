// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_snapshot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSnapshotRequest extends DeleteSnapshotRequest {
  @override
  final String? snapshotId;
  @override
  final bool dryRun;

  factory _$DeleteSnapshotRequest(
          [void Function(DeleteSnapshotRequestBuilder)? updates]) =>
      (new DeleteSnapshotRequestBuilder()..update(updates))._build();

  _$DeleteSnapshotRequest._({this.snapshotId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteSnapshotRequest', 'dryRun');
  }

  @override
  DeleteSnapshotRequest rebuild(
          void Function(DeleteSnapshotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSnapshotRequestBuilder toBuilder() =>
      new DeleteSnapshotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSnapshotRequest &&
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

class DeleteSnapshotRequestBuilder
    implements Builder<DeleteSnapshotRequest, DeleteSnapshotRequestBuilder> {
  _$DeleteSnapshotRequest? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteSnapshotRequestBuilder() {
    DeleteSnapshotRequest._init(this);
  }

  DeleteSnapshotRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSnapshotRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSnapshotRequest;
  }

  @override
  void update(void Function(DeleteSnapshotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSnapshotRequest build() => _build();

  _$DeleteSnapshotRequest _build() {
    final _$result = _$v ??
        new _$DeleteSnapshotRequest._(
            snapshotId: snapshotId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteSnapshotRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
