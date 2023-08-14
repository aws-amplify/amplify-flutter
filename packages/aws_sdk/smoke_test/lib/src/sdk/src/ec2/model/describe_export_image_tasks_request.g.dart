// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_export_image_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportImageTasksRequest
    extends DescribeExportImageTasksRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? exportImageTaskIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeExportImageTasksRequest(
          [void Function(DescribeExportImageTasksRequestBuilder)? updates]) =>
      (new DescribeExportImageTasksRequestBuilder()..update(updates))._build();

  _$DescribeExportImageTasksRequest._(
      {required this.dryRun,
      this.filters,
      this.exportImageTaskIds,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeExportImageTasksRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeExportImageTasksRequest', 'maxResults');
  }

  @override
  DescribeExportImageTasksRequest rebuild(
          void Function(DescribeExportImageTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeExportImageTasksRequestBuilder toBuilder() =>
      new DescribeExportImageTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeExportImageTasksRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        exportImageTaskIds == other.exportImageTaskIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, exportImageTaskIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeExportImageTasksRequestBuilder
    implements
        Builder<DescribeExportImageTasksRequest,
            DescribeExportImageTasksRequestBuilder> {
  _$DescribeExportImageTasksRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _exportImageTaskIds;
  _i3.ListBuilder<String> get exportImageTaskIds =>
      _$this._exportImageTaskIds ??= new _i3.ListBuilder<String>();
  set exportImageTaskIds(_i3.ListBuilder<String>? exportImageTaskIds) =>
      _$this._exportImageTaskIds = exportImageTaskIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeExportImageTasksRequestBuilder() {
    DescribeExportImageTasksRequest._init(this);
  }

  DescribeExportImageTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _exportImageTaskIds = $v.exportImageTaskIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeExportImageTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeExportImageTasksRequest;
  }

  @override
  void update(void Function(DescribeExportImageTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeExportImageTasksRequest build() => _build();

  _$DescribeExportImageTasksRequest _build() {
    _$DescribeExportImageTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeExportImageTasksRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeExportImageTasksRequest', 'dryRun'),
              filters: _filters?.build(),
              exportImageTaskIds: _exportImageTaskIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeExportImageTasksRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'exportImageTaskIds';
        _exportImageTaskIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeExportImageTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
