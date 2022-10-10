// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_summary_byconfig_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceSummaryByconfigRuleResponse
    extends GetComplianceSummaryByconfigRuleResponse {
  @override
  final _i2.ComplianceSummary? complianceSummary;

  factory _$GetComplianceSummaryByconfigRuleResponse(
          [void Function(GetComplianceSummaryByconfigRuleResponseBuilder)?
              updates]) =>
      (new GetComplianceSummaryByconfigRuleResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceSummaryByconfigRuleResponse._({this.complianceSummary})
      : super._();

  @override
  GetComplianceSummaryByconfigRuleResponse rebuild(
          void Function(GetComplianceSummaryByconfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceSummaryByconfigRuleResponseBuilder toBuilder() =>
      new GetComplianceSummaryByconfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceSummaryByconfigRuleResponse &&
        complianceSummary == other.complianceSummary;
  }

  @override
  int get hashCode {
    return $jf($jc(0, complianceSummary.hashCode));
  }
}

class GetComplianceSummaryByconfigRuleResponseBuilder
    implements
        Builder<GetComplianceSummaryByconfigRuleResponse,
            GetComplianceSummaryByconfigRuleResponseBuilder> {
  _$GetComplianceSummaryByconfigRuleResponse? _$v;

  _i2.ComplianceSummaryBuilder? _complianceSummary;
  _i2.ComplianceSummaryBuilder get complianceSummary =>
      _$this._complianceSummary ??= new _i2.ComplianceSummaryBuilder();
  set complianceSummary(_i2.ComplianceSummaryBuilder? complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  GetComplianceSummaryByconfigRuleResponseBuilder() {
    GetComplianceSummaryByconfigRuleResponse._init(this);
  }

  GetComplianceSummaryByconfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceSummaryByconfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceSummaryByconfigRuleResponse;
  }

  @override
  void update(
      void Function(GetComplianceSummaryByconfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceSummaryByconfigRuleResponse build() => _build();

  _$GetComplianceSummaryByconfigRuleResponse _build() {
    _$GetComplianceSummaryByconfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceSummaryByconfigRuleResponse._(
              complianceSummary: _complianceSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummary';
        _complianceSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceSummaryByconfigRuleResponse',
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
