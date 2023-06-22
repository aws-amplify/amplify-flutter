// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_config_rules_filters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigRulesFilters extends DescribeConfigRulesFilters {
  @override
  final _i2.EvaluationMode? evaluationMode;

  factory _$DescribeConfigRulesFilters(
          [void Function(DescribeConfigRulesFiltersBuilder)? updates]) =>
      (new DescribeConfigRulesFiltersBuilder()..update(updates))._build();

  _$DescribeConfigRulesFilters._({this.evaluationMode}) : super._();

  @override
  DescribeConfigRulesFilters rebuild(
          void Function(DescribeConfigRulesFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigRulesFiltersBuilder toBuilder() =>
      new DescribeConfigRulesFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigRulesFilters &&
        evaluationMode == other.evaluationMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigRulesFiltersBuilder
    implements
        Builder<DescribeConfigRulesFilters, DescribeConfigRulesFiltersBuilder> {
  _$DescribeConfigRulesFilters? _$v;

  _i2.EvaluationMode? _evaluationMode;
  _i2.EvaluationMode? get evaluationMode => _$this._evaluationMode;
  set evaluationMode(_i2.EvaluationMode? evaluationMode) =>
      _$this._evaluationMode = evaluationMode;

  DescribeConfigRulesFiltersBuilder() {
    DescribeConfigRulesFilters._init(this);
  }

  DescribeConfigRulesFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationMode = $v.evaluationMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigRulesFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigRulesFilters;
  }

  @override
  void update(void Function(DescribeConfigRulesFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigRulesFilters build() => _build();

  _$DescribeConfigRulesFilters _build() {
    final _$result = _$v ??
        new _$DescribeConfigRulesFilters._(evaluationMode: evaluationMode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
