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
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
