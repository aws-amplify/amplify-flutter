// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_snapshots_in_recycle_bin_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSnapshotsInRecycleBinResult
    extends ListSnapshotsInRecycleBinResult {
  @override
  final _i2.BuiltList<SnapshotRecycleBinInfo>? snapshots;
  @override
  final String? nextToken;

  factory _$ListSnapshotsInRecycleBinResult(
          [void Function(ListSnapshotsInRecycleBinResultBuilder)? updates]) =>
      (new ListSnapshotsInRecycleBinResultBuilder()..update(updates))._build();

  _$ListSnapshotsInRecycleBinResult._({this.snapshots, this.nextToken})
      : super._();

  @override
  ListSnapshotsInRecycleBinResult rebuild(
          void Function(ListSnapshotsInRecycleBinResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSnapshotsInRecycleBinResultBuilder toBuilder() =>
      new ListSnapshotsInRecycleBinResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSnapshotsInRecycleBinResult &&
        snapshots == other.snapshots &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshots.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSnapshotsInRecycleBinResultBuilder
    implements
        Builder<ListSnapshotsInRecycleBinResult,
            ListSnapshotsInRecycleBinResultBuilder> {
  _$ListSnapshotsInRecycleBinResult? _$v;

  _i2.ListBuilder<SnapshotRecycleBinInfo>? _snapshots;
  _i2.ListBuilder<SnapshotRecycleBinInfo> get snapshots =>
      _$this._snapshots ??= new _i2.ListBuilder<SnapshotRecycleBinInfo>();
  set snapshots(_i2.ListBuilder<SnapshotRecycleBinInfo>? snapshots) =>
      _$this._snapshots = snapshots;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListSnapshotsInRecycleBinResultBuilder();

  ListSnapshotsInRecycleBinResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshots = $v.snapshots?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSnapshotsInRecycleBinResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSnapshotsInRecycleBinResult;
  }

  @override
  void update(void Function(ListSnapshotsInRecycleBinResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSnapshotsInRecycleBinResult build() => _build();

  _$ListSnapshotsInRecycleBinResult _build() {
    _$ListSnapshotsInRecycleBinResult _$result;
    try {
      _$result = _$v ??
          new _$ListSnapshotsInRecycleBinResult._(
              snapshots: _snapshots?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshots';
        _snapshots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListSnapshotsInRecycleBinResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
