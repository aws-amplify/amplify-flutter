// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_snapshots_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSnapshotsResult extends CreateSnapshotsResult {
  @override
  final _i2.BuiltList<SnapshotInfo>? snapshots;

  factory _$CreateSnapshotsResult(
          [void Function(CreateSnapshotsResultBuilder)? updates]) =>
      (new CreateSnapshotsResultBuilder()..update(updates))._build();

  _$CreateSnapshotsResult._({this.snapshots}) : super._();

  @override
  CreateSnapshotsResult rebuild(
          void Function(CreateSnapshotsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSnapshotsResultBuilder toBuilder() =>
      new CreateSnapshotsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSnapshotsResult && snapshots == other.snapshots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSnapshotsResultBuilder
    implements Builder<CreateSnapshotsResult, CreateSnapshotsResultBuilder> {
  _$CreateSnapshotsResult? _$v;

  _i2.ListBuilder<SnapshotInfo>? _snapshots;
  _i2.ListBuilder<SnapshotInfo> get snapshots =>
      _$this._snapshots ??= new _i2.ListBuilder<SnapshotInfo>();
  set snapshots(_i2.ListBuilder<SnapshotInfo>? snapshots) =>
      _$this._snapshots = snapshots;

  CreateSnapshotsResultBuilder();

  CreateSnapshotsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshots = $v.snapshots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSnapshotsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSnapshotsResult;
  }

  @override
  void update(void Function(CreateSnapshotsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSnapshotsResult build() => _build();

  _$CreateSnapshotsResult _build() {
    _$CreateSnapshotsResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateSnapshotsResult._(snapshots: _snapshots?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshots';
        _snapshots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSnapshotsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
