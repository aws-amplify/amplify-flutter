// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_flow_logs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFlowLogsRequest extends DescribeFlowLogsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filter;
  @override
  final _i3.BuiltList<String>? flowLogIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeFlowLogsRequest(
          [void Function(DescribeFlowLogsRequestBuilder)? updates]) =>
      (new DescribeFlowLogsRequestBuilder()..update(updates))._build();

  _$DescribeFlowLogsRequest._(
      {required this.dryRun,
      this.filter,
      this.flowLogIds,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFlowLogsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeFlowLogsRequest', 'maxResults');
  }

  @override
  DescribeFlowLogsRequest rebuild(
          void Function(DescribeFlowLogsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFlowLogsRequestBuilder toBuilder() =>
      new DescribeFlowLogsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFlowLogsRequest &&
        dryRun == other.dryRun &&
        filter == other.filter &&
        flowLogIds == other.flowLogIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, flowLogIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFlowLogsRequestBuilder
    implements
        Builder<DescribeFlowLogsRequest, DescribeFlowLogsRequestBuilder> {
  _$DescribeFlowLogsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filter;
  _i3.ListBuilder<Filter> get filter =>
      _$this._filter ??= new _i3.ListBuilder<Filter>();
  set filter(_i3.ListBuilder<Filter>? filter) => _$this._filter = filter;

  _i3.ListBuilder<String>? _flowLogIds;
  _i3.ListBuilder<String> get flowLogIds =>
      _$this._flowLogIds ??= new _i3.ListBuilder<String>();
  set flowLogIds(_i3.ListBuilder<String>? flowLogIds) =>
      _$this._flowLogIds = flowLogIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeFlowLogsRequestBuilder() {
    DescribeFlowLogsRequest._init(this);
  }

  DescribeFlowLogsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filter = $v.filter?.toBuilder();
      _flowLogIds = $v.flowLogIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFlowLogsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFlowLogsRequest;
  }

  @override
  void update(void Function(DescribeFlowLogsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFlowLogsRequest build() => _build();

  _$DescribeFlowLogsRequest _build() {
    _$DescribeFlowLogsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeFlowLogsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeFlowLogsRequest', 'dryRun'),
              filter: _filter?.build(),
              flowLogIds: _flowLogIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeFlowLogsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
        _$failedField = 'flowLogIds';
        _flowLogIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFlowLogsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
