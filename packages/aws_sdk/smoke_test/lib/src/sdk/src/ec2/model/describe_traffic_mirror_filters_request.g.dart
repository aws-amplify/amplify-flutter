// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_traffic_mirror_filters_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrafficMirrorFiltersRequest
    extends DescribeTrafficMirrorFiltersRequest {
  @override
  final _i3.BuiltList<String>? trafficMirrorFilterIds;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeTrafficMirrorFiltersRequest(
          [void Function(DescribeTrafficMirrorFiltersRequestBuilder)?
              updates]) =>
      (new DescribeTrafficMirrorFiltersRequestBuilder()..update(updates))
          ._build();

  _$DescribeTrafficMirrorFiltersRequest._(
      {this.trafficMirrorFilterIds,
      required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTrafficMirrorFiltersRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTrafficMirrorFiltersRequest', 'maxResults');
  }

  @override
  DescribeTrafficMirrorFiltersRequest rebuild(
          void Function(DescribeTrafficMirrorFiltersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrafficMirrorFiltersRequestBuilder toBuilder() =>
      new DescribeTrafficMirrorFiltersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrafficMirrorFiltersRequest &&
        trafficMirrorFilterIds == other.trafficMirrorFilterIds &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrafficMirrorFiltersRequestBuilder
    implements
        Builder<DescribeTrafficMirrorFiltersRequest,
            DescribeTrafficMirrorFiltersRequestBuilder> {
  _$DescribeTrafficMirrorFiltersRequest? _$v;

  _i3.ListBuilder<String>? _trafficMirrorFilterIds;
  _i3.ListBuilder<String> get trafficMirrorFilterIds =>
      _$this._trafficMirrorFilterIds ??= new _i3.ListBuilder<String>();
  set trafficMirrorFilterIds(_i3.ListBuilder<String>? trafficMirrorFilterIds) =>
      _$this._trafficMirrorFilterIds = trafficMirrorFilterIds;

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

  DescribeTrafficMirrorFiltersRequestBuilder() {
    DescribeTrafficMirrorFiltersRequest._init(this);
  }

  DescribeTrafficMirrorFiltersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterIds = $v.trafficMirrorFilterIds?.toBuilder();
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrafficMirrorFiltersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrafficMirrorFiltersRequest;
  }

  @override
  void update(
      void Function(DescribeTrafficMirrorFiltersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrafficMirrorFiltersRequest build() => _build();

  _$DescribeTrafficMirrorFiltersRequest _build() {
    _$DescribeTrafficMirrorFiltersRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrafficMirrorFiltersRequest._(
              trafficMirrorFilterIds: _trafficMirrorFilterIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeTrafficMirrorFiltersRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTrafficMirrorFiltersRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorFilterIds';
        _trafficMirrorFilterIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrafficMirrorFiltersRequest',
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
