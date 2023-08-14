// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_export_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportTasksResult extends DescribeExportTasksResult {
  @override
  final _i2.BuiltList<ExportTask>? exportTasks;

  factory _$DescribeExportTasksResult(
          [void Function(DescribeExportTasksResultBuilder)? updates]) =>
      (new DescribeExportTasksResultBuilder()..update(updates))._build();

  _$DescribeExportTasksResult._({this.exportTasks}) : super._();

  @override
  DescribeExportTasksResult rebuild(
          void Function(DescribeExportTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeExportTasksResultBuilder toBuilder() =>
      new DescribeExportTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeExportTasksResult &&
        exportTasks == other.exportTasks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportTasks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeExportTasksResultBuilder
    implements
        Builder<DescribeExportTasksResult, DescribeExportTasksResultBuilder> {
  _$DescribeExportTasksResult? _$v;

  _i2.ListBuilder<ExportTask>? _exportTasks;
  _i2.ListBuilder<ExportTask> get exportTasks =>
      _$this._exportTasks ??= new _i2.ListBuilder<ExportTask>();
  set exportTasks(_i2.ListBuilder<ExportTask>? exportTasks) =>
      _$this._exportTasks = exportTasks;

  DescribeExportTasksResultBuilder();

  DescribeExportTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportTasks = $v.exportTasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeExportTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeExportTasksResult;
  }

  @override
  void update(void Function(DescribeExportTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeExportTasksResult build() => _build();

  _$DescribeExportTasksResult _build() {
    _$DescribeExportTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeExportTasksResult._(exportTasks: _exportTasks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportTasks';
        _exportTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeExportTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
