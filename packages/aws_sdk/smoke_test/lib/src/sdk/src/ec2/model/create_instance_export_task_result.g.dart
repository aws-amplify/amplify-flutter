// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instance_export_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceExportTaskResult extends CreateInstanceExportTaskResult {
  @override
  final ExportTask? exportTask;

  factory _$CreateInstanceExportTaskResult(
          [void Function(CreateInstanceExportTaskResultBuilder)? updates]) =>
      (new CreateInstanceExportTaskResultBuilder()..update(updates))._build();

  _$CreateInstanceExportTaskResult._({this.exportTask}) : super._();

  @override
  CreateInstanceExportTaskResult rebuild(
          void Function(CreateInstanceExportTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceExportTaskResultBuilder toBuilder() =>
      new CreateInstanceExportTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceExportTaskResult &&
        exportTask == other.exportTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceExportTaskResultBuilder
    implements
        Builder<CreateInstanceExportTaskResult,
            CreateInstanceExportTaskResultBuilder> {
  _$CreateInstanceExportTaskResult? _$v;

  ExportTaskBuilder? _exportTask;
  ExportTaskBuilder get exportTask =>
      _$this._exportTask ??= new ExportTaskBuilder();
  set exportTask(ExportTaskBuilder? exportTask) =>
      _$this._exportTask = exportTask;

  CreateInstanceExportTaskResultBuilder();

  CreateInstanceExportTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportTask = $v.exportTask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceExportTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceExportTaskResult;
  }

  @override
  void update(void Function(CreateInstanceExportTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceExportTaskResult build() => _build();

  _$CreateInstanceExportTaskResult _build() {
    _$CreateInstanceExportTaskResult _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceExportTaskResult._(
              exportTask: _exportTask?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportTask';
        _exportTask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceExportTaskResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
