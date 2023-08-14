// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_export_image_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportImageTasksResult extends DescribeExportImageTasksResult {
  @override
  final _i2.BuiltList<ExportImageTask>? exportImageTasks;
  @override
  final String? nextToken;

  factory _$DescribeExportImageTasksResult(
          [void Function(DescribeExportImageTasksResultBuilder)? updates]) =>
      (new DescribeExportImageTasksResultBuilder()..update(updates))._build();

  _$DescribeExportImageTasksResult._({this.exportImageTasks, this.nextToken})
      : super._();

  @override
  DescribeExportImageTasksResult rebuild(
          void Function(DescribeExportImageTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeExportImageTasksResultBuilder toBuilder() =>
      new DescribeExportImageTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeExportImageTasksResult &&
        exportImageTasks == other.exportImageTasks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportImageTasks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeExportImageTasksResultBuilder
    implements
        Builder<DescribeExportImageTasksResult,
            DescribeExportImageTasksResultBuilder> {
  _$DescribeExportImageTasksResult? _$v;

  _i2.ListBuilder<ExportImageTask>? _exportImageTasks;
  _i2.ListBuilder<ExportImageTask> get exportImageTasks =>
      _$this._exportImageTasks ??= new _i2.ListBuilder<ExportImageTask>();
  set exportImageTasks(_i2.ListBuilder<ExportImageTask>? exportImageTasks) =>
      _$this._exportImageTasks = exportImageTasks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeExportImageTasksResultBuilder();

  DescribeExportImageTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportImageTasks = $v.exportImageTasks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeExportImageTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeExportImageTasksResult;
  }

  @override
  void update(void Function(DescribeExportImageTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeExportImageTasksResult build() => _build();

  _$DescribeExportImageTasksResult _build() {
    _$DescribeExportImageTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeExportImageTasksResult._(
              exportImageTasks: _exportImageTasks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportImageTasks';
        _exportImageTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeExportImageTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
