// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataResponse extends DataResponse {
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
  @override
  final _i2.BuiltList<MetricPoint>? metricPoints;

  factory _$DataResponse([void Function(DataResponseBuilder)? updates]) =>
      (new DataResponseBuilder()..update(updates))._build();

  _$DataResponse._(
      {this.id,
      this.source,
      this.destination,
      this.metric,
      this.statistic,
      this.period,
      this.metricPoints})
      : super._();

  @override
  DataResponse rebuild(void Function(DataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataResponseBuilder toBuilder() => new DataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataResponse &&
        id == other.id &&
        source == other.source &&
        destination == other.destination &&
        metric == other.metric &&
        statistic == other.statistic &&
        period == other.period &&
        metricPoints == other.metricPoints;
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
    _$hash = $jc(_$hash, metricPoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DataResponseBuilder
    implements Builder<DataResponse, DataResponseBuilder> {
  _$DataResponse? _$v;

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

  _i2.ListBuilder<MetricPoint>? _metricPoints;
  _i2.ListBuilder<MetricPoint> get metricPoints =>
      _$this._metricPoints ??= new _i2.ListBuilder<MetricPoint>();
  set metricPoints(_i2.ListBuilder<MetricPoint>? metricPoints) =>
      _$this._metricPoints = metricPoints;

  DataResponseBuilder();

  DataResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _source = $v.source;
      _destination = $v.destination;
      _metric = $v.metric;
      _statistic = $v.statistic;
      _period = $v.period;
      _metricPoints = $v.metricPoints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataResponse;
  }

  @override
  void update(void Function(DataResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataResponse build() => _build();

  _$DataResponse _build() {
    _$DataResponse _$result;
    try {
      _$result = _$v ??
          new _$DataResponse._(
              id: id,
              source: source,
              destination: destination,
              metric: metric,
              statistic: statistic,
              period: period,
              metricPoints: _metricPoints?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metricPoints';
        _metricPoints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
