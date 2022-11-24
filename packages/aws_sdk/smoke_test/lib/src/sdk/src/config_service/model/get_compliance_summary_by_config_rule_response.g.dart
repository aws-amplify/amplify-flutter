// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_summary_by_config_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceSummaryByConfigRuleResponse
    extends GetComplianceSummaryByConfigRuleResponse {
  @override
  final _i2.ComplianceSummary? complianceSummary;

  factory _$GetComplianceSummaryByConfigRuleResponse(
          [void Function(GetComplianceSummaryByConfigRuleResponseBuilder)?
              updates]) =>
      (new GetComplianceSummaryByConfigRuleResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceSummaryByConfigRuleResponse._({this.complianceSummary})
      : super._();

  @override
  GetComplianceSummaryByConfigRuleResponse rebuild(
          void Function(GetComplianceSummaryByConfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceSummaryByConfigRuleResponseBuilder toBuilder() =>
      new GetComplianceSummaryByConfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceSummaryByConfigRuleResponse &&
        complianceSummary == other.complianceSummary;
  }

  @override
  int get hashCode {
    return $jf($jc(0, complianceSummary.hashCode));
  }
}

class GetComplianceSummaryByConfigRuleResponseBuilder
    implements
        Builder<GetComplianceSummaryByConfigRuleResponse,
            GetComplianceSummaryByConfigRuleResponseBuilder> {
  _$GetComplianceSummaryByConfigRuleResponse? _$v;

  _i2.ComplianceSummaryBuilder? _complianceSummary;
  _i2.ComplianceSummaryBuilder get complianceSummary =>
      _$this._complianceSummary ??= new _i2.ComplianceSummaryBuilder();
  set complianceSummary(_i2.ComplianceSummaryBuilder? complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  GetComplianceSummaryByConfigRuleResponseBuilder() {
    GetComplianceSummaryByConfigRuleResponse._init(this);
  }

  GetComplianceSummaryByConfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceSummaryByConfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceSummaryByConfigRuleResponse;
  }

  @override
  void update(
      void Function(GetComplianceSummaryByConfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceSummaryByConfigRuleResponse build() => _build();

  _$GetComplianceSummaryByConfigRuleResponse _build() {
    _$GetComplianceSummaryByConfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceSummaryByConfigRuleResponse._(
              complianceSummary: _complianceSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummary';
        _complianceSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceSummaryByConfigRuleResponse',
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
