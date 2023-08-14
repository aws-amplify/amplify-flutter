// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_fast_snapshot_restore_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastSnapshotRestoreErrorItem
    extends EnableFastSnapshotRestoreErrorItem {
  @override
  final String? snapshotId;
  @override
  final _i2.BuiltList<EnableFastSnapshotRestoreStateErrorItem>?
      fastSnapshotRestoreStateErrors;

  factory _$EnableFastSnapshotRestoreErrorItem(
          [void Function(EnableFastSnapshotRestoreErrorItemBuilder)?
              updates]) =>
      (new EnableFastSnapshotRestoreErrorItemBuilder()..update(updates))
          ._build();

  _$EnableFastSnapshotRestoreErrorItem._(
      {this.snapshotId, this.fastSnapshotRestoreStateErrors})
      : super._();

  @override
  EnableFastSnapshotRestoreErrorItem rebuild(
          void Function(EnableFastSnapshotRestoreErrorItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastSnapshotRestoreErrorItemBuilder toBuilder() =>
      new EnableFastSnapshotRestoreErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastSnapshotRestoreErrorItem &&
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

class EnableFastSnapshotRestoreErrorItemBuilder
    implements
        Builder<EnableFastSnapshotRestoreErrorItem,
            EnableFastSnapshotRestoreErrorItemBuilder> {
  _$EnableFastSnapshotRestoreErrorItem? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  _i2.ListBuilder<EnableFastSnapshotRestoreStateErrorItem>?
      _fastSnapshotRestoreStateErrors;
  _i2.ListBuilder<EnableFastSnapshotRestoreStateErrorItem>
      get fastSnapshotRestoreStateErrors =>
          _$this._fastSnapshotRestoreStateErrors ??=
              new _i2.ListBuilder<EnableFastSnapshotRestoreStateErrorItem>();
  set fastSnapshotRestoreStateErrors(
          _i2.ListBuilder<EnableFastSnapshotRestoreStateErrorItem>?
              fastSnapshotRestoreStateErrors) =>
      _$this._fastSnapshotRestoreStateErrors = fastSnapshotRestoreStateErrors;

  EnableFastSnapshotRestoreErrorItemBuilder();

  EnableFastSnapshotRestoreErrorItemBuilder get _$this {
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
  void replace(EnableFastSnapshotRestoreErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastSnapshotRestoreErrorItem;
  }

  @override
  void update(
      void Function(EnableFastSnapshotRestoreErrorItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastSnapshotRestoreErrorItem build() => _build();

  _$EnableFastSnapshotRestoreErrorItem _build() {
    _$EnableFastSnapshotRestoreErrorItem _$result;
    try {
      _$result = _$v ??
          new _$EnableFastSnapshotRestoreErrorItem._(
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
            r'EnableFastSnapshotRestoreErrorItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
