// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_snapshot_tier_status_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotTierStatusResult
    extends DescribeSnapshotTierStatusResult {
  @override
  final _i2.BuiltList<SnapshotTierStatus>? snapshotTierStatuses;
  @override
  final String? nextToken;

  factory _$DescribeSnapshotTierStatusResult(
          [void Function(DescribeSnapshotTierStatusResultBuilder)? updates]) =>
      (new DescribeSnapshotTierStatusResultBuilder()..update(updates))._build();

  _$DescribeSnapshotTierStatusResult._(
      {this.snapshotTierStatuses, this.nextToken})
      : super._();

  @override
  DescribeSnapshotTierStatusResult rebuild(
          void Function(DescribeSnapshotTierStatusResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotTierStatusResultBuilder toBuilder() =>
      new DescribeSnapshotTierStatusResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotTierStatusResult &&
        snapshotTierStatuses == other.snapshotTierStatuses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotTierStatuses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotTierStatusResultBuilder
    implements
        Builder<DescribeSnapshotTierStatusResult,
            DescribeSnapshotTierStatusResultBuilder> {
  _$DescribeSnapshotTierStatusResult? _$v;

  _i2.ListBuilder<SnapshotTierStatus>? _snapshotTierStatuses;
  _i2.ListBuilder<SnapshotTierStatus> get snapshotTierStatuses =>
      _$this._snapshotTierStatuses ??=
          new _i2.ListBuilder<SnapshotTierStatus>();
  set snapshotTierStatuses(
          _i2.ListBuilder<SnapshotTierStatus>? snapshotTierStatuses) =>
      _$this._snapshotTierStatuses = snapshotTierStatuses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeSnapshotTierStatusResultBuilder();

  DescribeSnapshotTierStatusResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotTierStatuses = $v.snapshotTierStatuses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotTierStatusResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotTierStatusResult;
  }

  @override
  void update(void Function(DescribeSnapshotTierStatusResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotTierStatusResult build() => _build();

  _$DescribeSnapshotTierStatusResult _build() {
    _$DescribeSnapshotTierStatusResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSnapshotTierStatusResult._(
              snapshotTierStatuses: _snapshotTierStatuses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotTierStatuses';
        _snapshotTierStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSnapshotTierStatusResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
