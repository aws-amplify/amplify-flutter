// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricPoint extends MetricPoint {
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double value;
  @override
  final String? status;

  factory _$MetricPoint([void Function(MetricPointBuilder)? updates]) =>
      (new MetricPointBuilder()..update(updates))._build();

  _$MetricPoint._(
      {this.startDate, this.endDate, required this.value, this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'MetricPoint', 'value');
  }

  @override
  MetricPoint rebuild(void Function(MetricPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricPointBuilder toBuilder() => new MetricPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricPoint &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        value == other.value &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MetricPointBuilder implements Builder<MetricPoint, MetricPointBuilder> {
  _$MetricPoint? _$v;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MetricPointBuilder() {
    MetricPoint._init(this);
  }

  MetricPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _value = $v.value;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricPoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetricPoint;
  }

  @override
  void update(void Function(MetricPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricPoint build() => _build();

  _$MetricPoint _build() {
    final _$result = _$v ??
        new _$MetricPoint._(
            startDate: startDate,
            endDate: endDate,
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'MetricPoint', 'value'),
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
