// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_by_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByConfigRuleRequest
    extends DescribeComplianceByConfigRuleRequest {
  @override
  final _i4.BuiltList<_i3.ComplianceType>? complianceTypes;
  @override
  final _i4.BuiltList<String>? configRuleNames;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByConfigRuleRequest(
          [void Function(DescribeComplianceByConfigRuleRequestBuilder)?
              updates]) =>
      (new DescribeComplianceByConfigRuleRequestBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByConfigRuleRequest._(
      {this.complianceTypes, this.configRuleNames, this.nextToken})
      : super._();

  @override
  DescribeComplianceByConfigRuleRequest rebuild(
          void Function(DescribeComplianceByConfigRuleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByConfigRuleRequestBuilder toBuilder() =>
      new DescribeComplianceByConfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByConfigRuleRequest &&
        complianceTypes == other.complianceTypes &&
        configRuleNames == other.configRuleNames &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, complianceTypes.hashCode), configRuleNames.hashCode),
        nextToken.hashCode));
  }
}

class DescribeComplianceByConfigRuleRequestBuilder
    implements
        Builder<DescribeComplianceByConfigRuleRequest,
            DescribeComplianceByConfigRuleRequestBuilder> {
  _$DescribeComplianceByConfigRuleRequest? _$v;

  _i4.ListBuilder<_i3.ComplianceType>? _complianceTypes;
  _i4.ListBuilder<_i3.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i4.ListBuilder<_i3.ComplianceType>();
  set complianceTypes(_i4.ListBuilder<_i3.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  _i4.ListBuilder<String>? _configRuleNames;
  _i4.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i4.ListBuilder<String>();
  set configRuleNames(_i4.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByConfigRuleRequestBuilder() {
    DescribeComplianceByConfigRuleRequest._init(this);
  }

  DescribeComplianceByConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceTypes = $v.complianceTypes?.toBuilder();
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeComplianceByConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByConfigRuleRequest;
  }

  @override
  void update(
      void Function(DescribeComplianceByConfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByConfigRuleRequest build() => _build();

  _$DescribeComplianceByConfigRuleRequest _build() {
    _$DescribeComplianceByConfigRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByConfigRuleRequest._(
              complianceTypes: _complianceTypes?.build(),
              configRuleNames: _configRuleNames?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceTypes';
        _complianceTypes?.build();
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeComplianceByConfigRuleRequest',
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
