// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_details_by_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByConfigRuleRequest
    extends GetComplianceDetailsByConfigRuleRequest {
  @override
  final _i4.BuiltList<_i3.ComplianceType>? complianceTypes;
  @override
  final String configRuleName;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$GetComplianceDetailsByConfigRuleRequest(
          [void Function(GetComplianceDetailsByConfigRuleRequestBuilder)?
              updates]) =>
      (new GetComplianceDetailsByConfigRuleRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByConfigRuleRequest._(
      {this.complianceTypes,
      required this.configRuleName,
      this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'GetComplianceDetailsByConfigRuleRequest', 'configRuleName');
  }

  @override
  GetComplianceDetailsByConfigRuleRequest rebuild(
          void Function(GetComplianceDetailsByConfigRuleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceDetailsByConfigRuleRequestBuilder toBuilder() =>
      new GetComplianceDetailsByConfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceDetailsByConfigRuleRequest &&
        complianceTypes == other.complianceTypes &&
        configRuleName == other.configRuleName &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceTypes.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetComplianceDetailsByConfigRuleRequestBuilder
    implements
        Builder<GetComplianceDetailsByConfigRuleRequest,
            GetComplianceDetailsByConfigRuleRequestBuilder> {
  _$GetComplianceDetailsByConfigRuleRequest? _$v;

  _i4.ListBuilder<_i3.ComplianceType>? _complianceTypes;
  _i4.ListBuilder<_i3.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i4.ListBuilder<_i3.ComplianceType>();
  set complianceTypes(_i4.ListBuilder<_i3.ComplianceType>? complianceTypes) =>
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

  GetComplianceDetailsByConfigRuleRequestBuilder() {
    GetComplianceDetailsByConfigRuleRequest._init(this);
  }

  GetComplianceDetailsByConfigRuleRequestBuilder get _$this {
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
  void replace(GetComplianceDetailsByConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceDetailsByConfigRuleRequest;
  }

  @override
  void update(
      void Function(GetComplianceDetailsByConfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceDetailsByConfigRuleRequest build() => _build();

  _$GetComplianceDetailsByConfigRuleRequest _build() {
    _$GetComplianceDetailsByConfigRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceDetailsByConfigRuleRequest._(
              complianceTypes: _complianceTypes?.build(),
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'GetComplianceDetailsByConfigRuleRequest',
                  'configRuleName'),
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceTypes';
        _complianceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceDetailsByConfigRuleRequest',
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
