// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_byconfig_rules_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByconfigRulesResponse
    extends DescribeAggregateComplianceByconfigRulesResponse {
  @override
  final _i2.BuiltList<_i3.AggregateComplianceByconfigRule>?
      aggregateComplianceByconfigRules;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByconfigRulesResponse(
          [void Function(
                  DescribeAggregateComplianceByconfigRulesResponseBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByconfigRulesResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByconfigRulesResponse._(
      {this.aggregateComplianceByconfigRules, this.nextToken})
      : super._();

  @override
  DescribeAggregateComplianceByconfigRulesResponse rebuild(
          void Function(DescribeAggregateComplianceByconfigRulesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByconfigRulesResponseBuilder toBuilder() =>
      new DescribeAggregateComplianceByconfigRulesResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByconfigRulesResponse &&
        aggregateComplianceByconfigRules ==
            other.aggregateComplianceByconfigRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, aggregateComplianceByconfigRules.hashCode), nextToken.hashCode));
  }
}

class DescribeAggregateComplianceByconfigRulesResponseBuilder
    implements
        Builder<DescribeAggregateComplianceByconfigRulesResponse,
            DescribeAggregateComplianceByconfigRulesResponseBuilder> {
  _$DescribeAggregateComplianceByconfigRulesResponse? _$v;

  _i2.ListBuilder<_i3.AggregateComplianceByconfigRule>?
      _aggregateComplianceByconfigRules;
  _i2.ListBuilder<_i3.AggregateComplianceByconfigRule>
      get aggregateComplianceByconfigRules =>
          _$this._aggregateComplianceByconfigRules ??=
              new _i2.ListBuilder<_i3.AggregateComplianceByconfigRule>();
  set aggregateComplianceByconfigRules(
          _i2.ListBuilder<_i3.AggregateComplianceByconfigRule>?
              aggregateComplianceByconfigRules) =>
      _$this._aggregateComplianceByconfigRules =
          aggregateComplianceByconfigRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByconfigRulesResponseBuilder() {
    DescribeAggregateComplianceByconfigRulesResponse._init(this);
  }

  DescribeAggregateComplianceByconfigRulesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateComplianceByconfigRules =
          $v.aggregateComplianceByconfigRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateComplianceByconfigRulesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByconfigRulesResponse;
  }

  @override
  void update(
      void Function(DescribeAggregateComplianceByconfigRulesResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByconfigRulesResponse build() => _build();

  _$DescribeAggregateComplianceByconfigRulesResponse _build() {
    _$DescribeAggregateComplianceByconfigRulesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByconfigRulesResponse._(
              aggregateComplianceByconfigRules:
                  _aggregateComplianceByconfigRules?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateComplianceByconfigRules';
        _aggregateComplianceByconfigRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByconfigRulesResponse',
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
