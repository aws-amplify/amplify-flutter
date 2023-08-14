// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_fast_snapshot_restore_state_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastSnapshotRestoreStateErrorItem
    extends EnableFastSnapshotRestoreStateErrorItem {
  @override
  final String? availabilityZone;
  @override
  final EnableFastSnapshotRestoreStateError? error;

  factory _$EnableFastSnapshotRestoreStateErrorItem(
          [void Function(EnableFastSnapshotRestoreStateErrorItemBuilder)?
              updates]) =>
      (new EnableFastSnapshotRestoreStateErrorItemBuilder()..update(updates))
          ._build();

  _$EnableFastSnapshotRestoreStateErrorItem._(
      {this.availabilityZone, this.error})
      : super._();

  @override
  EnableFastSnapshotRestoreStateErrorItem rebuild(
          void Function(EnableFastSnapshotRestoreStateErrorItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastSnapshotRestoreStateErrorItemBuilder toBuilder() =>
      new EnableFastSnapshotRestoreStateErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastSnapshotRestoreStateErrorItem &&
        availabilityZone == other.availabilityZone &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableFastSnapshotRestoreStateErrorItemBuilder
    implements
        Builder<EnableFastSnapshotRestoreStateErrorItem,
            EnableFastSnapshotRestoreStateErrorItemBuilder> {
  _$EnableFastSnapshotRestoreStateErrorItem? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  EnableFastSnapshotRestoreStateErrorBuilder? _error;
  EnableFastSnapshotRestoreStateErrorBuilder get error =>
      _$this._error ??= new EnableFastSnapshotRestoreStateErrorBuilder();
  set error(EnableFastSnapshotRestoreStateErrorBuilder? error) =>
      _$this._error = error;

  EnableFastSnapshotRestoreStateErrorItemBuilder();

  EnableFastSnapshotRestoreStateErrorItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableFastSnapshotRestoreStateErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastSnapshotRestoreStateErrorItem;
  }

  @override
  void update(
      void Function(EnableFastSnapshotRestoreStateErrorItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastSnapshotRestoreStateErrorItem build() => _build();

  _$EnableFastSnapshotRestoreStateErrorItem _build() {
    _$EnableFastSnapshotRestoreStateErrorItem _$result;
    try {
      _$result = _$v ??
          new _$EnableFastSnapshotRestoreStateErrorItem._(
              availabilityZone: availabilityZone, error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnableFastSnapshotRestoreStateErrorItem',
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
