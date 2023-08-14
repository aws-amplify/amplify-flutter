// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_snapshot_restore_state_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastSnapshotRestoreStateError
    extends DisableFastSnapshotRestoreStateError {
  @override
  final String? code;
  @override
  final String? message;

  factory _$DisableFastSnapshotRestoreStateError(
          [void Function(DisableFastSnapshotRestoreStateErrorBuilder)?
              updates]) =>
      (new DisableFastSnapshotRestoreStateErrorBuilder()..update(updates))
          ._build();

  _$DisableFastSnapshotRestoreStateError._({this.code, this.message})
      : super._();

  @override
  DisableFastSnapshotRestoreStateError rebuild(
          void Function(DisableFastSnapshotRestoreStateErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastSnapshotRestoreStateErrorBuilder toBuilder() =>
      new DisableFastSnapshotRestoreStateErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastSnapshotRestoreStateError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastSnapshotRestoreStateErrorBuilder
    implements
        Builder<DisableFastSnapshotRestoreStateError,
            DisableFastSnapshotRestoreStateErrorBuilder> {
  _$DisableFastSnapshotRestoreStateError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DisableFastSnapshotRestoreStateErrorBuilder();

  DisableFastSnapshotRestoreStateErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastSnapshotRestoreStateError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastSnapshotRestoreStateError;
  }

  @override
  void update(
      void Function(DisableFastSnapshotRestoreStateErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastSnapshotRestoreStateError build() => _build();

  _$DisableFastSnapshotRestoreStateError _build() {
    final _$result = _$v ??
        new _$DisableFastSnapshotRestoreStateError._(
            code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
