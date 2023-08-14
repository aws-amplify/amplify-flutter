// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_compliance_details_by_config_rule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByConfigRuleRequest
    extends GetComplianceDetailsByConfigRuleRequest {
  @override
  final String configRuleName;
  @override
  final _i3.BuiltList<ComplianceType>? complianceTypes;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetComplianceDetailsByConfigRuleRequest(
          [void Function(GetComplianceDetailsByConfigRuleRequestBuilder)?
              updates]) =>
      (new GetComplianceDetailsByConfigRuleRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByConfigRuleRequest._(
      {required this.configRuleName,
      this.complianceTypes,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'GetComplianceDetailsByConfigRuleRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetComplianceDetailsByConfigRuleRequest', 'limit');
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
        configRuleName == other.configRuleName &&
        complianceTypes == other.complianceTypes &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, complianceTypes.hashCode);
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

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i3.ListBuilder<ComplianceType>? _complianceTypes;
  _i3.ListBuilder<ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i3.ListBuilder<ComplianceType>();
  set complianceTypes(_i3.ListBuilder<ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

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
      _configRuleName = $v.configRuleName;
      _complianceTypes = $v.complianceTypes?.toBuilder();
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
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'GetComplianceDetailsByConfigRuleRequest',
                  'configRuleName'),
              complianceTypes: _complianceTypes?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'GetComplianceDetailsByConfigRuleRequest', 'limit'),
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
