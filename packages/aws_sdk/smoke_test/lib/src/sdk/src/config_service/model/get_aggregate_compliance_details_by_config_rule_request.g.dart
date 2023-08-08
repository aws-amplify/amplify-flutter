// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aggregate_compliance_details_by_config_rule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateComplianceDetailsByConfigRuleRequest
    extends GetAggregateComplianceDetailsByConfigRuleRequest {
  @override
  final String configurationAggregatorName;
  @override
  final String configRuleName;
  @override
  final String accountId;
  @override
  final String awsRegion;
  @override
  final _i3.ComplianceType? complianceType;
  @override
  final int limit;
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
      {required this.configurationAggregatorName,
      required this.configRuleName,
      required this.accountId,
      required this.awsRegion,
      this.complianceType,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'GetAggregateComplianceDetailsByConfigRuleRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'GetAggregateComplianceDetailsByConfigRuleRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(accountId,
        r'GetAggregateComplianceDetailsByConfigRuleRequest', 'accountId');
    BuiltValueNullFieldError.checkNotNull(awsRegion,
        r'GetAggregateComplianceDetailsByConfigRuleRequest', 'awsRegion');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetAggregateComplianceDetailsByConfigRuleRequest', 'limit');
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
        configurationAggregatorName == other.configurationAggregatorName &&
        configRuleName == other.configRuleName &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion &&
        complianceType == other.complianceType &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateComplianceDetailsByConfigRuleRequestBuilder
    implements
        Builder<GetAggregateComplianceDetailsByConfigRuleRequest,
            GetAggregateComplianceDetailsByConfigRuleRequestBuilder> {
  _$GetAggregateComplianceDetailsByConfigRuleRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

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
      _configurationAggregatorName = $v.configurationAggregatorName;
      _configRuleName = $v.configRuleName;
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _complianceType = $v.complianceType;
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
            configurationAggregatorName: BuiltValueNullFieldError.checkNotNull(
                configurationAggregatorName,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'configurationAggregatorName'),
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'configRuleName'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'GetAggregateComplianceDetailsByConfigRuleRequest', 'accountId'),
            awsRegion: BuiltValueNullFieldError.checkNotNull(
                awsRegion,
                r'GetAggregateComplianceDetailsByConfigRuleRequest',
                'awsRegion'),
            complianceType: complianceType,
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GetAggregateComplianceDetailsByConfigRuleRequest', 'limit'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
