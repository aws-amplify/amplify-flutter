// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_traffic_mirror_targets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrafficMirrorTargetsRequest
    extends DescribeTrafficMirrorTargetsRequest {
  @override
  final _i3.BuiltList<String>? trafficMirrorTargetIds;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeTrafficMirrorTargetsRequest(
          [void Function(DescribeTrafficMirrorTargetsRequestBuilder)?
              updates]) =>
      (new DescribeTrafficMirrorTargetsRequestBuilder()..update(updates))
          ._build();

  _$DescribeTrafficMirrorTargetsRequest._(
      {this.trafficMirrorTargetIds,
      required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTrafficMirrorTargetsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTrafficMirrorTargetsRequest', 'maxResults');
  }

  @override
  DescribeTrafficMirrorTargetsRequest rebuild(
          void Function(DescribeTrafficMirrorTargetsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrafficMirrorTargetsRequestBuilder toBuilder() =>
      new DescribeTrafficMirrorTargetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrafficMirrorTargetsRequest &&
        trafficMirrorTargetIds == other.trafficMirrorTargetIds &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorTargetIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrafficMirrorTargetsRequestBuilder
    implements
        Builder<DescribeTrafficMirrorTargetsRequest,
            DescribeTrafficMirrorTargetsRequestBuilder> {
  _$DescribeTrafficMirrorTargetsRequest? _$v;

  _i3.ListBuilder<String>? _trafficMirrorTargetIds;
  _i3.ListBuilder<String> get trafficMirrorTargetIds =>
      _$this._trafficMirrorTargetIds ??= new _i3.ListBuilder<String>();
  set trafficMirrorTargetIds(_i3.ListBuilder<String>? trafficMirrorTargetIds) =>
      _$this._trafficMirrorTargetIds = trafficMirrorTargetIds;

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

  DescribeTrafficMirrorTargetsRequestBuilder() {
    DescribeTrafficMirrorTargetsRequest._init(this);
  }

  DescribeTrafficMirrorTargetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorTargetIds = $v.trafficMirrorTargetIds?.toBuilder();
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrafficMirrorTargetsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrafficMirrorTargetsRequest;
  }

  @override
  void update(
      void Function(DescribeTrafficMirrorTargetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrafficMirrorTargetsRequest build() => _build();

  _$DescribeTrafficMirrorTargetsRequest _build() {
    _$DescribeTrafficMirrorTargetsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrafficMirrorTargetsRequest._(
              trafficMirrorTargetIds: _trafficMirrorTargetIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeTrafficMirrorTargetsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTrafficMirrorTargetsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorTargetIds';
        _trafficMirrorTargetIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrafficMirrorTargetsRequest',
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
