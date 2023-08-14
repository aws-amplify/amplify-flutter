// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_snapshot_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopySnapshotResult extends CopySnapshotResult {
  @override
  final String? snapshotId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$CopySnapshotResult(
          [void Function(CopySnapshotResultBuilder)? updates]) =>
      (new CopySnapshotResultBuilder()..update(updates))._build();

  _$CopySnapshotResult._({this.snapshotId, this.tags}) : super._();

  @override
  CopySnapshotResult rebuild(
          void Function(CopySnapshotResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopySnapshotResultBuilder toBuilder() =>
      new CopySnapshotResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopySnapshotResult &&
        snapshotId == other.snapshotId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopySnapshotResultBuilder
    implements Builder<CopySnapshotResult, CopySnapshotResultBuilder> {
  _$CopySnapshotResult? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CopySnapshotResultBuilder();

  CopySnapshotResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopySnapshotResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopySnapshotResult;
  }

  @override
  void update(void Function(CopySnapshotResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopySnapshotResult build() => _build();

  _$CopySnapshotResult _build() {
    _$CopySnapshotResult _$result;
    try {
      _$result = _$v ??
          new _$CopySnapshotResult._(
              snapshotId: snapshotId, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CopySnapshotResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
