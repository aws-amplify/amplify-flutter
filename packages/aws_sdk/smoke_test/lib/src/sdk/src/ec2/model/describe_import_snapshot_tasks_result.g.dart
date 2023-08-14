// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_import_snapshot_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImportSnapshotTasksResult
    extends DescribeImportSnapshotTasksResult {
  @override
  final _i2.BuiltList<ImportSnapshotTask>? importSnapshotTasks;
  @override
  final String? nextToken;

  factory _$DescribeImportSnapshotTasksResult(
          [void Function(DescribeImportSnapshotTasksResultBuilder)? updates]) =>
      (new DescribeImportSnapshotTasksResultBuilder()..update(updates))
          ._build();

  _$DescribeImportSnapshotTasksResult._(
      {this.importSnapshotTasks, this.nextToken})
      : super._();

  @override
  DescribeImportSnapshotTasksResult rebuild(
          void Function(DescribeImportSnapshotTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImportSnapshotTasksResultBuilder toBuilder() =>
      new DescribeImportSnapshotTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImportSnapshotTasksResult &&
        importSnapshotTasks == other.importSnapshotTasks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importSnapshotTasks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImportSnapshotTasksResultBuilder
    implements
        Builder<DescribeImportSnapshotTasksResult,
            DescribeImportSnapshotTasksResultBuilder> {
  _$DescribeImportSnapshotTasksResult? _$v;

  _i2.ListBuilder<ImportSnapshotTask>? _importSnapshotTasks;
  _i2.ListBuilder<ImportSnapshotTask> get importSnapshotTasks =>
      _$this._importSnapshotTasks ??= new _i2.ListBuilder<ImportSnapshotTask>();
  set importSnapshotTasks(
          _i2.ListBuilder<ImportSnapshotTask>? importSnapshotTasks) =>
      _$this._importSnapshotTasks = importSnapshotTasks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeImportSnapshotTasksResultBuilder();

  DescribeImportSnapshotTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importSnapshotTasks = $v.importSnapshotTasks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImportSnapshotTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImportSnapshotTasksResult;
  }

  @override
  void update(
      void Function(DescribeImportSnapshotTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImportSnapshotTasksResult build() => _build();

  _$DescribeImportSnapshotTasksResult _build() {
    _$DescribeImportSnapshotTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeImportSnapshotTasksResult._(
              importSnapshotTasks: _importSnapshotTasks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importSnapshotTasks';
        _importSnapshotTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImportSnapshotTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
