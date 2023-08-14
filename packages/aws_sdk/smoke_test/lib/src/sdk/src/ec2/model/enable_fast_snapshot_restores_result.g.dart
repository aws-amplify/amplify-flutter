// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_fast_snapshot_restores_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastSnapshotRestoresResult
    extends EnableFastSnapshotRestoresResult {
  @override
  final _i2.BuiltList<EnableFastSnapshotRestoreSuccessItem>? successful;
  @override
  final _i2.BuiltList<EnableFastSnapshotRestoreErrorItem>? unsuccessful;

  factory _$EnableFastSnapshotRestoresResult(
          [void Function(EnableFastSnapshotRestoresResultBuilder)? updates]) =>
      (new EnableFastSnapshotRestoresResultBuilder()..update(updates))._build();

  _$EnableFastSnapshotRestoresResult._({this.successful, this.unsuccessful})
      : super._();

  @override
  EnableFastSnapshotRestoresResult rebuild(
          void Function(EnableFastSnapshotRestoresResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastSnapshotRestoresResultBuilder toBuilder() =>
      new EnableFastSnapshotRestoresResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastSnapshotRestoresResult &&
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

class EnableFastSnapshotRestoresResultBuilder
    implements
        Builder<EnableFastSnapshotRestoresResult,
            EnableFastSnapshotRestoresResultBuilder> {
  _$EnableFastSnapshotRestoresResult? _$v;

  _i2.ListBuilder<EnableFastSnapshotRestoreSuccessItem>? _successful;
  _i2.ListBuilder<EnableFastSnapshotRestoreSuccessItem> get successful =>
      _$this._successful ??=
          new _i2.ListBuilder<EnableFastSnapshotRestoreSuccessItem>();
  set successful(
          _i2.ListBuilder<EnableFastSnapshotRestoreSuccessItem>? successful) =>
      _$this._successful = successful;

  _i2.ListBuilder<EnableFastSnapshotRestoreErrorItem>? _unsuccessful;
  _i2.ListBuilder<EnableFastSnapshotRestoreErrorItem> get unsuccessful =>
      _$this._unsuccessful ??=
          new _i2.ListBuilder<EnableFastSnapshotRestoreErrorItem>();
  set unsuccessful(
          _i2.ListBuilder<EnableFastSnapshotRestoreErrorItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  EnableFastSnapshotRestoresResultBuilder();

  EnableFastSnapshotRestoresResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successful = $v.successful?.toBuilder();
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableFastSnapshotRestoresResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastSnapshotRestoresResult;
  }

  @override
  void update(void Function(EnableFastSnapshotRestoresResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastSnapshotRestoresResult build() => _build();

  _$EnableFastSnapshotRestoresResult _build() {
    _$EnableFastSnapshotRestoresResult _$result;
    try {
      _$result = _$v ??
          new _$EnableFastSnapshotRestoresResult._(
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
            r'EnableFastSnapshotRestoresResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
