// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_traffic_mirror_sessions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrafficMirrorSessionsRequest
    extends DescribeTrafficMirrorSessionsRequest {
  @override
  final _i3.BuiltList<String>? trafficMirrorSessionIds;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeTrafficMirrorSessionsRequest(
          [void Function(DescribeTrafficMirrorSessionsRequestBuilder)?
              updates]) =>
      (new DescribeTrafficMirrorSessionsRequestBuilder()..update(updates))
          ._build();

  _$DescribeTrafficMirrorSessionsRequest._(
      {this.trafficMirrorSessionIds,
      required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTrafficMirrorSessionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTrafficMirrorSessionsRequest', 'maxResults');
  }

  @override
  DescribeTrafficMirrorSessionsRequest rebuild(
          void Function(DescribeTrafficMirrorSessionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrafficMirrorSessionsRequestBuilder toBuilder() =>
      new DescribeTrafficMirrorSessionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrafficMirrorSessionsRequest &&
        trafficMirrorSessionIds == other.trafficMirrorSessionIds &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSessionIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrafficMirrorSessionsRequestBuilder
    implements
        Builder<DescribeTrafficMirrorSessionsRequest,
            DescribeTrafficMirrorSessionsRequestBuilder> {
  _$DescribeTrafficMirrorSessionsRequest? _$v;

  _i3.ListBuilder<String>? _trafficMirrorSessionIds;
  _i3.ListBuilder<String> get trafficMirrorSessionIds =>
      _$this._trafficMirrorSessionIds ??= new _i3.ListBuilder<String>();
  set trafficMirrorSessionIds(
          _i3.ListBuilder<String>? trafficMirrorSessionIds) =>
      _$this._trafficMirrorSessionIds = trafficMirrorSessionIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

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

  DescribeTrafficMirrorSessionsRequestBuilder() {
    DescribeTrafficMirrorSessionsRequest._init(this);
  }

  DescribeTrafficMirrorSessionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSessionIds = $v.trafficMirrorSessionIds?.toBuilder();
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrafficMirrorSessionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrafficMirrorSessionsRequest;
  }

  @override
  void update(
      void Function(DescribeTrafficMirrorSessionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrafficMirrorSessionsRequest build() => _build();

  _$DescribeTrafficMirrorSessionsRequest _build() {
    _$DescribeTrafficMirrorSessionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrafficMirrorSessionsRequest._(
              trafficMirrorSessionIds: _trafficMirrorSessionIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeTrafficMirrorSessionsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTrafficMirrorSessionsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorSessionIds';
        _trafficMirrorSessionIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrafficMirrorSessionsRequest',
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
