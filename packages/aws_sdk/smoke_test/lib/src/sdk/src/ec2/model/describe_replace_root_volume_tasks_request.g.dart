// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_replace_root_volume_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReplaceRootVolumeTasksRequest
    extends DescribeReplaceRootVolumeTasksRequest {
  @override
  final _i3.BuiltList<String>? replaceRootVolumeTaskIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeReplaceRootVolumeTasksRequest(
          [void Function(DescribeReplaceRootVolumeTasksRequestBuilder)?
              updates]) =>
      (new DescribeReplaceRootVolumeTasksRequestBuilder()..update(updates))
          ._build();

  _$DescribeReplaceRootVolumeTasksRequest._(
      {this.replaceRootVolumeTaskIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeReplaceRootVolumeTasksRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeReplaceRootVolumeTasksRequest', 'dryRun');
  }

  @override
  DescribeReplaceRootVolumeTasksRequest rebuild(
          void Function(DescribeReplaceRootVolumeTasksRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReplaceRootVolumeTasksRequestBuilder toBuilder() =>
      new DescribeReplaceRootVolumeTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReplaceRootVolumeTasksRequest &&
        replaceRootVolumeTaskIds == other.replaceRootVolumeTaskIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replaceRootVolumeTaskIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReplaceRootVolumeTasksRequestBuilder
    implements
        Builder<DescribeReplaceRootVolumeTasksRequest,
            DescribeReplaceRootVolumeTasksRequestBuilder> {
  _$DescribeReplaceRootVolumeTasksRequest? _$v;

  _i3.ListBuilder<String>? _replaceRootVolumeTaskIds;
  _i3.ListBuilder<String> get replaceRootVolumeTaskIds =>
      _$this._replaceRootVolumeTaskIds ??= new _i3.ListBuilder<String>();
  set replaceRootVolumeTaskIds(
          _i3.ListBuilder<String>? replaceRootVolumeTaskIds) =>
      _$this._replaceRootVolumeTaskIds = replaceRootVolumeTaskIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeReplaceRootVolumeTasksRequestBuilder() {
    DescribeReplaceRootVolumeTasksRequest._init(this);
  }

  DescribeReplaceRootVolumeTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replaceRootVolumeTaskIds = $v.replaceRootVolumeTaskIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReplaceRootVolumeTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReplaceRootVolumeTasksRequest;
  }

  @override
  void update(
      void Function(DescribeReplaceRootVolumeTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReplaceRootVolumeTasksRequest build() => _build();

  _$DescribeReplaceRootVolumeTasksRequest _build() {
    _$DescribeReplaceRootVolumeTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeReplaceRootVolumeTasksRequest._(
              replaceRootVolumeTaskIds: _replaceRootVolumeTaskIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeReplaceRootVolumeTasksRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeReplaceRootVolumeTasksRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replaceRootVolumeTaskIds';
        _replaceRootVolumeTaskIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReplaceRootVolumeTasksRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
