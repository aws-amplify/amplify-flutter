// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Subscription extends Subscription {
  @override
  final String? source;
  @override
  final String? destination;
  @override
  final MetricType? metric;
  @override
  final StatisticType? statistic;
  @override
  final PeriodType? period;

  factory _$Subscription([void Function(SubscriptionBuilder)? updates]) =>
      (new SubscriptionBuilder()..update(updates))._build();

  _$Subscription._(
      {this.source, this.destination, this.metric, this.statistic, this.period})
      : super._();

  @override
  Subscription rebuild(void Function(SubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionBuilder toBuilder() => new SubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subscription &&
        source == other.source &&
        destination == other.destination &&
        metric == other.metric &&
        statistic == other.statistic &&
        period == other.period;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jc(_$hash, statistic.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubscriptionBuilder
    implements Builder<Subscription, SubscriptionBuilder> {
  _$Subscription? _$v;

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

  PeriodType? _period;
  PeriodType? get period => _$this._period;
  set period(PeriodType? period) => _$this._period = period;

  SubscriptionBuilder();

  SubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source;
      _destination = $v.destination;
      _metric = $v.metric;
      _statistic = $v.statistic;
      _period = $v.period;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Subscription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Subscription;
  }

  @override
  void update(void Function(SubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Subscription build() => _build();

  _$Subscription _build() {
    final _$result = _$v ??
        new _$Subscription._(
            source: source,
            destination: destination,
            metric: metric,
            statistic: statistic,
            period: period);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
