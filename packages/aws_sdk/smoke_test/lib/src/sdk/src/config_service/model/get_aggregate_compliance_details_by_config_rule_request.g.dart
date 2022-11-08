// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_compliance_details_by_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateComplianceDetailsByConfigRuleRequest
    extends GetAggregateComplianceDetailsByConfigRuleRequest {
  @override
  final String accountId;
  @override
  final String awsRegion;
  @override
  final _i3.ComplianceType? complianceType;
  @override
  final String configRuleName;
  @override
  final String configurationAggregatorName;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$GetAggregateComplianceDetailsByConfigRuleRequest(
          [void Function(
                  GetAggregateComplianceDetailsByConfigRuleRequestBuilder)?
              updates]) =>
      (new GetAggregateComplianceDetailsByConfigRuleRequestBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateComplianceDetailsByConfigRuleRequest._(
      {required this.accountId,
      required this.awsRegion,
      this.complianceType,
      required this.configRuleName,
      required this.configurationAggregatorName,
      this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(accountId,
        r'GetAggregateComplianceDetailsByConfigRuleRequest', 'accountId');
    BuiltValueNullFieldError.checkNotNull(awsRegion,
        r'GetAggregateComplianceDetailsByConfigRuleRequest', 'awsRegion');
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'GetAggregateComplianceDetailsByConfigRuleRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'GetAggregateComplianceDetailsByConfigRuleRequest',
        'configurationAggregatorName');
  }

  @override
  GetAggregateComplianceDetailsByConfigRuleRequest rebuild(
          void Function(GetAggregateComplianceDetailsByConfigRuleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateComplianceDetailsByConfigRuleRequestBuilder toBuilder() =>
      new GetAggregateComplianceDetailsByConfigRuleRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateComplianceDetailsByConfigRuleRequest &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion &&
        complianceType == other.complianceType &&
        configRuleName == other.configRuleName &&
        configurationAggregatorName == other.configurationAggregatorName &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, accountId.hashCode), awsRegion.hashCode),
                        complianceType.hashCode),
                    configRuleName.hashCode),
                configurationAggregatorName.hashCode),
            limit.hashCode),
        nextToken.hashCode));
  }
}

class GetAggregateComplianceDetailsByConfigRuleRequestBuilder
    implements
        Builder<GetAggregateComplianceDetailsByConfigRuleRequest,
            GetAggregateComplianceDetailsByConfigRuleRequestBuilder> {
  _$GetAggregateComplianceDetailsByConfigRuleRequest? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i3.ComplianceType? _complianceType;
  _i3.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i3.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateComplianceDetailsByConfigRuleRequestBuilder() {
    GetAggregateComplianceDetailsByConfigRuleRequest._init(this);
  }

  GetAggregateComplianceDetailsByConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _complianceType = $v.complianceType;
      _configRuleName = $v.configRuleName;
      _configurationAggregatorName = $v.configurationAggregatorName;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateComplianceDetailsByConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateComplianceDetailsByConfigRuleRequest;
  }

  @override
  void update(
      void Function(GetAggregateComplianceDetailsByConfigRuleRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateComplianceDetailsByConfigRuleRequest build() => _build();

  _$GetAggregateComplianceDetailsByConfigRuleRequest _build() {
    final _$result = _$v ??
        new _$GetAggregateComplianceDetailsByConfigRuleRequest._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'accountId'),
            awsRegion: BuiltValueNullFieldError.checkNotNull(
                awsRegion,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'awsRegion'),
            complianceType: complianceType,
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'configRuleName'),
            configurationAggregatorName: BuiltValueNullFieldError.checkNotNull(
                configurationAggregatorName,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'configurationAggregatorName'),
            limit: limit,
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
