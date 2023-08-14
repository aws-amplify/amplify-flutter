// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_aws_network_performance_metric_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableAwsNetworkPerformanceMetricSubscriptionRequest
    extends EnableAwsNetworkPerformanceMetricSubscriptionRequest {
  @override
  final String? source;
  @override
  final String? destination;
  @override
  final MetricType? metric;
  @override
  final StatisticType? statistic;
  @override
  final bool dryRun;

  factory _$EnableAwsNetworkPerformanceMetricSubscriptionRequest(
          [void Function(
                  EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder)?
              updates]) =>
      (new EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder()
            ..update(updates))
          ._build();

  _$EnableAwsNetworkPerformanceMetricSubscriptionRequest._(
      {this.source,
      this.destination,
      this.metric,
      this.statistic,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'EnableAwsNetworkPerformanceMetricSubscriptionRequest', 'dryRun');
  }

  @override
  EnableAwsNetworkPerformanceMetricSubscriptionRequest rebuild(
          void Function(
                  EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder toBuilder() =>
      new EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableAwsNetworkPerformanceMetricSubscriptionRequest &&
        source == other.source &&
        destination == other.destination &&
        metric == other.metric &&
        statistic == other.statistic &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jc(_$hash, statistic.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder
    implements
        Builder<EnableAwsNetworkPerformanceMetricSubscriptionRequest,
            EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder> {
  _$EnableAwsNetworkPerformanceMetricSubscriptionRequest? _$v;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  MetricType? _metric;
  MetricType? get metric => _$this._metric;
  set metric(MetricType? metric) => _$this._metric = metric;

  StatisticType? _statistic;
  StatisticType? get statistic => _$this._statistic;
  set statistic(StatisticType? statistic) => _$this._statistic = statistic;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder() {
    EnableAwsNetworkPerformanceMetricSubscriptionRequest._init(this);
  }

  EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source;
      _destination = $v.destination;
      _metric = $v.metric;
      _statistic = $v.statistic;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableAwsNetworkPerformanceMetricSubscriptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableAwsNetworkPerformanceMetricSubscriptionRequest;
  }

  @override
  void update(
      void Function(
              EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableAwsNetworkPerformanceMetricSubscriptionRequest build() => _build();

  _$EnableAwsNetworkPerformanceMetricSubscriptionRequest _build() {
    final _$result = _$v ??
        new _$EnableAwsNetworkPerformanceMetricSubscriptionRequest._(
            source: source,
            destination: destination,
            metric: metric,
            statistic: statistic,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'EnableAwsNetworkPerformanceMetricSubscriptionRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
