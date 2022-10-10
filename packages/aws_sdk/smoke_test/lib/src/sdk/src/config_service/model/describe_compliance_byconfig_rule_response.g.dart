// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_byconfig_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByconfigRuleResponse
    extends DescribeComplianceByconfigRuleResponse {
  @override
  final _i2.BuiltList<_i3.ComplianceByconfigRule>? complianceByconfigRules;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByconfigRuleResponse(
          [void Function(DescribeComplianceByconfigRuleResponseBuilder)?
              updates]) =>
      (new DescribeComplianceByconfigRuleResponseBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByconfigRuleResponse._(
      {this.complianceByconfigRules, this.nextToken})
      : super._();

  @override
  DescribeComplianceByconfigRuleResponse rebuild(
          void Function(DescribeComplianceByconfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByconfigRuleResponseBuilder toBuilder() =>
      new DescribeComplianceByconfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByconfigRuleResponse &&
        complianceByconfigRules == other.complianceByconfigRules &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, complianceByconfigRules.hashCode), nextToken.hashCode));
  }
}

class DescribeComplianceByconfigRuleResponseBuilder
    implements
        Builder<DescribeComplianceByconfigRuleResponse,
            DescribeComplianceByconfigRuleResponseBuilder> {
  _$DescribeComplianceByconfigRuleResponse? _$v;

  _i2.ListBuilder<_i3.ComplianceByconfigRule>? _complianceByconfigRules;
  _i2.ListBuilder<_i3.ComplianceByconfigRule> get complianceByconfigRules =>
      _$this._complianceByconfigRules ??=
          new _i2.ListBuilder<_i3.ComplianceByconfigRule>();
  set complianceByconfigRules(
          _i2.ListBuilder<_i3.ComplianceByconfigRule>?
              complianceByconfigRules) =>
      _$this._complianceByconfigRules = complianceByconfigRules;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByconfigRuleResponseBuilder() {
    DescribeComplianceByconfigRuleResponse._init(this);
  }

  DescribeComplianceByconfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceByconfigRules = $v.complianceByconfigRules?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeComplianceByconfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByconfigRuleResponse;
  }

  @override
  void update(
      void Function(DescribeComplianceByconfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByconfigRuleResponse build() => _build();

  _$DescribeComplianceByconfigRuleResponse _build() {
    _$DescribeComplianceByconfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByconfigRuleResponse._(
              complianceByconfigRules: _complianceByconfigRules?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceByconfigRules';
        _complianceByconfigRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeComplianceByconfigRuleResponse',
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
