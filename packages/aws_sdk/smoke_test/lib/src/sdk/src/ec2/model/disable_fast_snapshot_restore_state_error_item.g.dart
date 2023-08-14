// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_snapshot_restore_state_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastSnapshotRestoreStateErrorItem
    extends DisableFastSnapshotRestoreStateErrorItem {
  @override
  final String? availabilityZone;
  @override
  final DisableFastSnapshotRestoreStateError? error;

  factory _$DisableFastSnapshotRestoreStateErrorItem(
          [void Function(DisableFastSnapshotRestoreStateErrorItemBuilder)?
              updates]) =>
      (new DisableFastSnapshotRestoreStateErrorItemBuilder()..update(updates))
          ._build();

  _$DisableFastSnapshotRestoreStateErrorItem._(
      {this.availabilityZone, this.error})
      : super._();

  @override
  DisableFastSnapshotRestoreStateErrorItem rebuild(
          void Function(DisableFastSnapshotRestoreStateErrorItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastSnapshotRestoreStateErrorItemBuilder toBuilder() =>
      new DisableFastSnapshotRestoreStateErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastSnapshotRestoreStateErrorItem &&
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

class DisableFastSnapshotRestoreStateErrorItemBuilder
    implements
        Builder<DisableFastSnapshotRestoreStateErrorItem,
            DisableFastSnapshotRestoreStateErrorItemBuilder> {
  _$DisableFastSnapshotRestoreStateErrorItem? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  DisableFastSnapshotRestoreStateErrorBuilder? _error;
  DisableFastSnapshotRestoreStateErrorBuilder get error =>
      _$this._error ??= new DisableFastSnapshotRestoreStateErrorBuilder();
  set error(DisableFastSnapshotRestoreStateErrorBuilder? error) =>
      _$this._error = error;

  DisableFastSnapshotRestoreStateErrorItemBuilder();

  DisableFastSnapshotRestoreStateErrorItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastSnapshotRestoreStateErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastSnapshotRestoreStateErrorItem;
  }

  @override
  void update(
      void Function(DisableFastSnapshotRestoreStateErrorItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastSnapshotRestoreStateErrorItem build() => _build();

  _$DisableFastSnapshotRestoreStateErrorItem _build() {
    _$DisableFastSnapshotRestoreStateErrorItem _$result;
    try {
      _$result = _$v ??
          new _$DisableFastSnapshotRestoreStateErrorItem._(
              availabilityZone: availabilityZone, error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableFastSnapshotRestoreStateErrorItem',
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
