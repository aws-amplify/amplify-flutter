// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_aws_network_performance_metric_subscriptions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest
    extends DescribeAwsNetworkPerformanceMetricSubscriptionsRequest {
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest(
          [void Function(
                  DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder)?
              updates]) =>
      (new DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest._(
      {required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults,
        r'DescribeAwsNetworkPerformanceMetricSubscriptionsRequest',
        'maxResults');
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'DescribeAwsNetworkPerformanceMetricSubscriptionsRequest', 'dryRun');
  }

  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsRequest rebuild(
          void Function(
                  DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder toBuilder() =>
      new DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAwsNetworkPerformanceMetricSubscriptionsRequest &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder
    implements
        Builder<DescribeAwsNetworkPerformanceMetricSubscriptionsRequest,
            DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder> {
  _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder() {
    DescribeAwsNetworkPerformanceMetricSubscriptionsRequest._init(this);
  }

  DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAwsNetworkPerformanceMetricSubscriptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest;
  }

  @override
  void update(
      void Function(
              DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsRequest build() => _build();

  _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest _build() {
    _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest._(
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeAwsNetworkPerformanceMetricSubscriptionsRequest',
                  'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeAwsNetworkPerformanceMetricSubscriptionsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAwsNetworkPerformanceMetricSubscriptionsRequest',
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
