// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_by_config_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByConfigRuleResponse
    extends DescribeComplianceByConfigRuleResponse {
  @override
  final _i3.BuiltList<_i2.ComplianceByConfigRule>? complianceByConfigRules;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByConfigRuleResponse(
          [void Function(DescribeComplianceByConfigRuleResponseBuilder)?
              updates]) =>
      (new DescribeComplianceByConfigRuleResponseBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByConfigRuleResponse._(
      {this.complianceByConfigRules, this.nextToken})
      : super._();

  @override
  DescribeComplianceByConfigRuleResponse rebuild(
          void Function(DescribeComplianceByConfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByConfigRuleResponseBuilder toBuilder() =>
      new DescribeComplianceByConfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByConfigRuleResponse &&
        complianceByConfigRules == other.complianceByConfigRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, complianceByConfigRules.hashCode), nextToken.hashCode));
  }
}

class DescribeComplianceByConfigRuleResponseBuilder
    implements
        Builder<DescribeComplianceByConfigRuleResponse,
            DescribeComplianceByConfigRuleResponseBuilder> {
  _$DescribeComplianceByConfigRuleResponse? _$v;

  _i3.ListBuilder<_i2.ComplianceByConfigRule>? _complianceByConfigRules;
  _i3.ListBuilder<_i2.ComplianceByConfigRule> get complianceByConfigRules =>
      _$this._complianceByConfigRules ??=
          new _i3.ListBuilder<_i2.ComplianceByConfigRule>();
  set complianceByConfigRules(
          _i3.ListBuilder<_i2.ComplianceByConfigRule>?
              complianceByConfigRules) =>
      _$this._complianceByConfigRules = complianceByConfigRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByConfigRuleResponseBuilder() {
    DescribeComplianceByConfigRuleResponse._init(this);
  }

  DescribeComplianceByConfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceByConfigRules = $v.complianceByConfigRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeComplianceByConfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByConfigRuleResponse;
  }

  @override
  void update(
      void Function(DescribeComplianceByConfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByConfigRuleResponse build() => _build();

  _$DescribeComplianceByConfigRuleResponse _build() {
    _$DescribeComplianceByConfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByConfigRuleResponse._(
              complianceByConfigRules: _complianceByConfigRules?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceByConfigRules';
        _complianceByConfigRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeComplianceByConfigRuleResponse',
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
