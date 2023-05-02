// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_by_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByConfigRuleRequest
    extends DescribeComplianceByConfigRuleRequest {
  @override
  final _i4.BuiltList<String>? configRuleNames;
  @override
  final _i4.BuiltList<_i3.ComplianceType>? complianceTypes;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByConfigRuleRequest(
          [void Function(DescribeComplianceByConfigRuleRequestBuilder)?
              updates]) =>
      (new DescribeComplianceByConfigRuleRequestBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByConfigRuleRequest._(
      {this.configRuleNames, this.complianceTypes, this.nextToken})
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
        configRuleNames == other.configRuleNames &&
        complianceTypes == other.complianceTypes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jc(_$hash, complianceTypes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeComplianceByConfigRuleRequestBuilder
    implements
        Builder<DescribeComplianceByConfigRuleRequest,
            DescribeComplianceByConfigRuleRequestBuilder> {
  _$DescribeComplianceByConfigRuleRequest? _$v;

  _i4.ListBuilder<String>? _configRuleNames;
  _i4.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i4.ListBuilder<String>();
  set configRuleNames(_i4.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  _i4.ListBuilder<_i3.ComplianceType>? _complianceTypes;
  _i4.ListBuilder<_i3.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i4.ListBuilder<_i3.ComplianceType>();
  set complianceTypes(_i4.ListBuilder<_i3.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByConfigRuleRequestBuilder() {
    DescribeComplianceByConfigRuleRequest._init(this);
  }

  DescribeComplianceByConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _complianceTypes = $v.complianceTypes?.toBuilder();
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
              configRuleNames: _configRuleNames?.build(),
              complianceTypes: _complianceTypes?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
        _$failedField = 'complianceTypes';
        _complianceTypes?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
