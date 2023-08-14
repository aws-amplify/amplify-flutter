// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_snapshot_restore_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastSnapshotRestoreErrorItem
    extends DisableFastSnapshotRestoreErrorItem {
  @override
  final String? snapshotId;
  @override
  final _i2.BuiltList<DisableFastSnapshotRestoreStateErrorItem>?
      fastSnapshotRestoreStateErrors;

  factory _$DisableFastSnapshotRestoreErrorItem(
          [void Function(DisableFastSnapshotRestoreErrorItemBuilder)?
              updates]) =>
      (new DisableFastSnapshotRestoreErrorItemBuilder()..update(updates))
          ._build();

  _$DisableFastSnapshotRestoreErrorItem._(
      {this.snapshotId, this.fastSnapshotRestoreStateErrors})
      : super._();

  @override
  DisableFastSnapshotRestoreErrorItem rebuild(
          void Function(DisableFastSnapshotRestoreErrorItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastSnapshotRestoreErrorItemBuilder toBuilder() =>
      new DisableFastSnapshotRestoreErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastSnapshotRestoreErrorItem &&
        snapshotId == other.snapshotId &&
        fastSnapshotRestoreStateErrors == other.fastSnapshotRestoreStateErrors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, fastSnapshotRestoreStateErrors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastSnapshotRestoreErrorItemBuilder
    implements
        Builder<DisableFastSnapshotRestoreErrorItem,
            DisableFastSnapshotRestoreErrorItemBuilder> {
  _$DisableFastSnapshotRestoreErrorItem? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  _i2.ListBuilder<DisableFastSnapshotRestoreStateErrorItem>?
      _fastSnapshotRestoreStateErrors;
  _i2.ListBuilder<DisableFastSnapshotRestoreStateErrorItem>
      get fastSnapshotRestoreStateErrors =>
          _$this._fastSnapshotRestoreStateErrors ??=
              new _i2.ListBuilder<DisableFastSnapshotRestoreStateErrorItem>();
  set fastSnapshotRestoreStateErrors(
          _i2.ListBuilder<DisableFastSnapshotRestoreStateErrorItem>?
              fastSnapshotRestoreStateErrors) =>
      _$this._fastSnapshotRestoreStateErrors = fastSnapshotRestoreStateErrors;

  DisableFastSnapshotRestoreErrorItemBuilder();

  DisableFastSnapshotRestoreErrorItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _fastSnapshotRestoreStateErrors =
          $v.fastSnapshotRestoreStateErrors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastSnapshotRestoreErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastSnapshotRestoreErrorItem;
  }

  @override
  void update(
      void Function(DisableFastSnapshotRestoreErrorItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastSnapshotRestoreErrorItem build() => _build();

  _$DisableFastSnapshotRestoreErrorItem _build() {
    _$DisableFastSnapshotRestoreErrorItem _$result;
    try {
      _$result = _$v ??
          new _$DisableFastSnapshotRestoreErrorItem._(
              snapshotId: snapshotId,
              fastSnapshotRestoreStateErrors:
                  _fastSnapshotRestoreStateErrors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fastSnapshotRestoreStateErrors';
        _fastSnapshotRestoreStateErrors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableFastSnapshotRestoreErrorItem',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
