// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_snapshot_restores_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastSnapshotRestoresResult
    extends DisableFastSnapshotRestoresResult {
  @override
  final _i2.BuiltList<DisableFastSnapshotRestoreSuccessItem>? successful;
  @override
  final _i2.BuiltList<DisableFastSnapshotRestoreErrorItem>? unsuccessful;

  factory _$DisableFastSnapshotRestoresResult(
          [void Function(DisableFastSnapshotRestoresResultBuilder)? updates]) =>
      (new DisableFastSnapshotRestoresResultBuilder()..update(updates))
          ._build();

  _$DisableFastSnapshotRestoresResult._({this.successful, this.unsuccessful})
      : super._();

  @override
  DisableFastSnapshotRestoresResult rebuild(
          void Function(DisableFastSnapshotRestoresResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastSnapshotRestoresResultBuilder toBuilder() =>
      new DisableFastSnapshotRestoresResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastSnapshotRestoresResult &&
        successful == other.successful &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successful.hashCode);
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastSnapshotRestoresResultBuilder
    implements
        Builder<DisableFastSnapshotRestoresResult,
            DisableFastSnapshotRestoresResultBuilder> {
  _$DisableFastSnapshotRestoresResult? _$v;

  _i2.ListBuilder<DisableFastSnapshotRestoreSuccessItem>? _successful;
  _i2.ListBuilder<DisableFastSnapshotRestoreSuccessItem> get successful =>
      _$this._successful ??=
          new _i2.ListBuilder<DisableFastSnapshotRestoreSuccessItem>();
  set successful(
          _i2.ListBuilder<DisableFastSnapshotRestoreSuccessItem>? successful) =>
      _$this._successful = successful;

  _i2.ListBuilder<DisableFastSnapshotRestoreErrorItem>? _unsuccessful;
  _i2.ListBuilder<DisableFastSnapshotRestoreErrorItem> get unsuccessful =>
      _$this._unsuccessful ??=
          new _i2.ListBuilder<DisableFastSnapshotRestoreErrorItem>();
  set unsuccessful(
          _i2.ListBuilder<DisableFastSnapshotRestoreErrorItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  DisableFastSnapshotRestoresResultBuilder();

  DisableFastSnapshotRestoresResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successful = $v.successful?.toBuilder();
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastSnapshotRestoresResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastSnapshotRestoresResult;
  }

  @override
  void update(
      void Function(DisableFastSnapshotRestoresResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastSnapshotRestoresResult build() => _build();

  _$DisableFastSnapshotRestoresResult _build() {
    _$DisableFastSnapshotRestoresResult _$result;
    try {
      _$result = _$v ??
          new _$DisableFastSnapshotRestoresResult._(
              successful: _successful?.build(),
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successful';
        _successful?.build();
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableFastSnapshotRestoresResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
