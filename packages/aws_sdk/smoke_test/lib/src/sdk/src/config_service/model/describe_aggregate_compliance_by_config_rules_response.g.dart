// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_by_config_rules_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByConfigRulesResponse
    extends DescribeAggregateComplianceByConfigRulesResponse {
  @override
  final _i3.BuiltList<_i2.AggregateComplianceByConfigRule>?
      aggregateComplianceByConfigRules;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByConfigRulesResponse(
          [void Function(
                  DescribeAggregateComplianceByConfigRulesResponseBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByConfigRulesResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByConfigRulesResponse._(
      {this.aggregateComplianceByConfigRules, this.nextToken})
      : super._();

  @override
  DescribeAggregateComplianceByConfigRulesResponse rebuild(
          void Function(DescribeAggregateComplianceByConfigRulesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByConfigRulesResponseBuilder toBuilder() =>
      new DescribeAggregateComplianceByConfigRulesResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByConfigRulesResponse &&
        aggregateComplianceByConfigRules ==
            other.aggregateComplianceByConfigRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, aggregateComplianceByConfigRules.hashCode), nextToken.hashCode));
  }
}

class DescribeAggregateComplianceByConfigRulesResponseBuilder
    implements
        Builder<DescribeAggregateComplianceByConfigRulesResponse,
            DescribeAggregateComplianceByConfigRulesResponseBuilder> {
  _$DescribeAggregateComplianceByConfigRulesResponse? _$v;

  _i3.ListBuilder<_i2.AggregateComplianceByConfigRule>?
      _aggregateComplianceByConfigRules;
  _i3.ListBuilder<_i2.AggregateComplianceByConfigRule>
      get aggregateComplianceByConfigRules =>
          _$this._aggregateComplianceByConfigRules ??=
              new _i3.ListBuilder<_i2.AggregateComplianceByConfigRule>();
  set aggregateComplianceByConfigRules(
          _i3.ListBuilder<_i2.AggregateComplianceByConfigRule>?
              aggregateComplianceByConfigRules) =>
      _$this._aggregateComplianceByConfigRules =
          aggregateComplianceByConfigRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByConfigRulesResponseBuilder() {
    DescribeAggregateComplianceByConfigRulesResponse._init(this);
  }

  DescribeAggregateComplianceByConfigRulesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateComplianceByConfigRules =
          $v.aggregateComplianceByConfigRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateComplianceByConfigRulesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByConfigRulesResponse;
  }

  @override
  void update(
      void Function(DescribeAggregateComplianceByConfigRulesResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByConfigRulesResponse build() => _build();

  _$DescribeAggregateComplianceByConfigRulesResponse _build() {
    _$DescribeAggregateComplianceByConfigRulesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByConfigRulesResponse._(
              aggregateComplianceByConfigRules:
                  _aggregateComplianceByConfigRules?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateComplianceByConfigRules';
        _aggregateComplianceByConfigRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByConfigRulesResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
