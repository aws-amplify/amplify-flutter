// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataQuery extends DataQuery {
  @override
  final String? id;
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

  factory _$DataQuery([void Function(DataQueryBuilder)? updates]) =>
      (new DataQueryBuilder()..update(updates))._build();

  _$DataQuery._(
      {this.id,
      this.source,
      this.destination,
      this.metric,
      this.statistic,
      this.period})
      : super._();

  @override
  DataQuery rebuild(void Function(DataQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataQueryBuilder toBuilder() => new DataQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataQuery &&
        id == other.id &&
        source == other.source &&
        destination == other.destination &&
        metric == other.metric &&
        statistic == other.statistic &&
        period == other.period;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jc(_$hash, statistic.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DataQueryBuilder implements Builder<DataQuery, DataQueryBuilder> {
  _$DataQuery? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  DataQueryBuilder();

  DataQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(DataQuery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataQuery;
  }

  @override
  void update(void Function(DataQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataQuery build() => _build();

  _$DataQuery _build() {
    final _$result = _$v ??
        new _$DataQuery._(
            id: id,
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
