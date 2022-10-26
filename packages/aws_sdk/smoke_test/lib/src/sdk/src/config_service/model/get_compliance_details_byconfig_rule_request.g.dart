// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_details_byconfig_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByconfigRuleRequest
    extends GetComplianceDetailsByconfigRuleRequest {
  @override
  final _i3.BuiltList<_i4.ComplianceType>? complianceTypes;
  @override
  final String configRuleName;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetComplianceDetailsByconfigRuleRequest(
          [void Function(GetComplianceDetailsByconfigRuleRequestBuilder)?
              updates]) =>
      (new GetComplianceDetailsByconfigRuleRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByconfigRuleRequest._(
      {this.complianceTypes,
      required this.configRuleName,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'GetComplianceDetailsByconfigRuleRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetComplianceDetailsByconfigRuleRequest', 'limit');
  }

  @override
  GetComplianceDetailsByconfigRuleRequest rebuild(
          void Function(GetComplianceDetailsByconfigRuleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceDetailsByconfigRuleRequestBuilder toBuilder() =>
      new GetComplianceDetailsByconfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceDetailsByconfigRuleRequest &&
        complianceTypes == other.complianceTypes &&
        configRuleName == other.configRuleName &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, complianceTypes.hashCode), configRuleName.hashCode),
            limit.hashCode),
        nextToken.hashCode));
  }
}

class GetComplianceDetailsByconfigRuleRequestBuilder
    implements
        Builder<GetComplianceDetailsByconfigRuleRequest,
            GetComplianceDetailsByconfigRuleRequestBuilder> {
  _$GetComplianceDetailsByconfigRuleRequest? _$v;

  _i3.ListBuilder<_i4.ComplianceType>? _complianceTypes;
  _i3.ListBuilder<_i4.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i3.ListBuilder<_i4.ComplianceType>();
  set complianceTypes(_i3.ListBuilder<_i4.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetComplianceDetailsByconfigRuleRequestBuilder() {
    GetComplianceDetailsByconfigRuleRequest._init(this);
  }

  GetComplianceDetailsByconfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceTypes = $v.complianceTypes?.toBuilder();
      _configRuleName = $v.configRuleName;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceDetailsByconfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceDetailsByconfigRuleRequest;
  }

  @override
  void update(
      void Function(GetComplianceDetailsByconfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceDetailsByconfigRuleRequest build() => _build();

  _$GetComplianceDetailsByconfigRuleRequest _build() {
    _$GetComplianceDetailsByconfigRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceDetailsByconfigRuleRequest._(
              complianceTypes: _complianceTypes?.build(),
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'GetComplianceDetailsByconfigRuleRequest',
                  'configRuleName'),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'GetComplianceDetailsByconfigRuleRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceTypes';
        _complianceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceDetailsByconfigRuleRequest',
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
