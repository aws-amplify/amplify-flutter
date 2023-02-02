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
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceByConfigRules.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
