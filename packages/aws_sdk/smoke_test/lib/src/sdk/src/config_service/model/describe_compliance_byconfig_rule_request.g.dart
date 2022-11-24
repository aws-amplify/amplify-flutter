// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_byconfig_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByconfigRuleRequest
    extends DescribeComplianceByconfigRuleRequest {
  @override
  final _i3.BuiltList<_i4.ComplianceType>? complianceTypes;
  @override
  final _i3.BuiltList<String>? configRuleNames;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByconfigRuleRequest(
          [void Function(DescribeComplianceByconfigRuleRequestBuilder)?
              updates]) =>
      (new DescribeComplianceByconfigRuleRequestBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByconfigRuleRequest._(
      {this.complianceTypes, this.configRuleNames, this.nextToken})
      : super._();

  @override
  DescribeComplianceByconfigRuleRequest rebuild(
          void Function(DescribeComplianceByconfigRuleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByconfigRuleRequestBuilder toBuilder() =>
      new DescribeComplianceByconfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByconfigRuleRequest &&
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

class DescribeComplianceByconfigRuleRequestBuilder
    implements
        Builder<DescribeComplianceByconfigRuleRequest,
            DescribeComplianceByconfigRuleRequestBuilder> {
  _$DescribeComplianceByconfigRuleRequest? _$v;

  _i3.ListBuilder<_i4.ComplianceType>? _complianceTypes;
  _i3.ListBuilder<_i4.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i3.ListBuilder<_i4.ComplianceType>();
  set complianceTypes(_i3.ListBuilder<_i4.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByconfigRuleRequestBuilder() {
    DescribeComplianceByconfigRuleRequest._init(this);
  }

  DescribeComplianceByconfigRuleRequestBuilder get _$this {
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
  void replace(DescribeComplianceByconfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByconfigRuleRequest;
  }

  @override
  void update(
      void Function(DescribeComplianceByconfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByconfigRuleRequest build() => _build();

  _$DescribeComplianceByconfigRuleRequest _build() {
    _$DescribeComplianceByconfigRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByconfigRuleRequest._(
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
            r'DescribeComplianceByconfigRuleRequest',
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
