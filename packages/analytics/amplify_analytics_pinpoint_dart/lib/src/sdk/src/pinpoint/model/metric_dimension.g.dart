// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.metric_dimension;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricDimension extends MetricDimension {
  @override
  final String comparisonOperator;
  @override
  final double value;

  factory _$MetricDimension([void Function(MetricDimensionBuilder)? updates]) =>
      (new MetricDimensionBuilder()..update(updates))._build();

  _$MetricDimension._({required this.comparisonOperator, required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        comparisonOperator, r'MetricDimension', 'comparisonOperator');
    BuiltValueNullFieldError.checkNotNull(value, r'MetricDimension', 'value');
  }

  @override
  MetricDimension rebuild(void Function(MetricDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricDimensionBuilder toBuilder() =>
      new MetricDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricDimension &&
        comparisonOperator == other.comparisonOperator &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, comparisonOperator.hashCode), value.hashCode));
  }
}

class MetricDimensionBuilder
    implements Builder<MetricDimension, MetricDimensionBuilder> {
  _$MetricDimension? _$v;

  String? _comparisonOperator;
  String? get comparisonOperator => _$this._comparisonOperator;
  set comparisonOperator(String? comparisonOperator) =>
      _$this._comparisonOperator = comparisonOperator;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  MetricDimensionBuilder() {
    MetricDimension._init(this);
  }

  MetricDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comparisonOperator = $v.comparisonOperator;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricDimension other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetricDimension;
  }

  @override
  void update(void Function(MetricDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricDimension build() => _build();

  _$MetricDimension _build() {
    final _$result = _$v ??
        new _$MetricDimension._(
            comparisonOperator: BuiltValueNullFieldError.checkNotNull(
                comparisonOperator, r'MetricDimension', 'comparisonOperator'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'MetricDimension', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
