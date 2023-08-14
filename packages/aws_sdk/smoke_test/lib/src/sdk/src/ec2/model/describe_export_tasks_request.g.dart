// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_export_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportTasksRequest extends DescribeExportTasksRequest {
  @override
  final _i3.BuiltList<String>? exportTaskIds;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribeExportTasksRequest(
          [void Function(DescribeExportTasksRequestBuilder)? updates]) =>
      (new DescribeExportTasksRequestBuilder()..update(updates))._build();

  _$DescribeExportTasksRequest._({this.exportTaskIds, this.filters})
      : super._();

  @override
  DescribeExportTasksRequest rebuild(
          void Function(DescribeExportTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeExportTasksRequestBuilder toBuilder() =>
      new DescribeExportTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeExportTasksRequest &&
        exportTaskIds == other.exportTaskIds &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportTaskIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeExportTasksRequestBuilder
    implements
        Builder<DescribeExportTasksRequest, DescribeExportTasksRequestBuilder> {
  _$DescribeExportTasksRequest? _$v;

  _i3.ListBuilder<String>? _exportTaskIds;
  _i3.ListBuilder<String> get exportTaskIds =>
      _$this._exportTaskIds ??= new _i3.ListBuilder<String>();
  set exportTaskIds(_i3.ListBuilder<String>? exportTaskIds) =>
      _$this._exportTaskIds = exportTaskIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribeExportTasksRequestBuilder();

  DescribeExportTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportTaskIds = $v.exportTaskIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeExportTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeExportTasksRequest;
  }

  @override
  void update(void Function(DescribeExportTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeExportTasksRequest build() => _build();

  _$DescribeExportTasksRequest _build() {
    _$DescribeExportTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeExportTasksRequest._(
              exportTaskIds: _exportTaskIds?.build(),
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportTaskIds';
        _exportTaskIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeExportTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
