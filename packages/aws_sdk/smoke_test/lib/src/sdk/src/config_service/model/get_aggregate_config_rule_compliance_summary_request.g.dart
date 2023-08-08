// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aggregate_config_rule_compliance_summary_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateConfigRuleComplianceSummaryRequest
    extends GetAggregateConfigRuleComplianceSummaryRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.ConfigRuleComplianceSummaryFilters? filters;
  @override
  final _i4.ConfigRuleComplianceSummaryGroupKey? groupByKey;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetAggregateConfigRuleComplianceSummaryRequest(
          [void Function(GetAggregateConfigRuleComplianceSummaryRequestBuilder)?
              updates]) =>
      (new GetAggregateConfigRuleComplianceSummaryRequestBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateConfigRuleComplianceSummaryRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      this.groupByKey,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'GetAggregateConfigRuleComplianceSummaryRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetAggregateConfigRuleComplianceSummaryRequest', 'limit');
  }

  @override
  GetAggregateConfigRuleComplianceSummaryRequest rebuild(
          void Function(GetAggregateConfigRuleComplianceSummaryRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateConfigRuleComplianceSummaryRequestBuilder toBuilder() =>
      new GetAggregateConfigRuleComplianceSummaryRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateConfigRuleComplianceSummaryRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        filters == other.filters &&
        groupByKey == other.groupByKey &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, groupByKey.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateConfigRuleComplianceSummaryRequestBuilder
    implements
        Builder<GetAggregateConfigRuleComplianceSummaryRequest,
            GetAggregateConfigRuleComplianceSummaryRequestBuilder> {
  _$GetAggregateConfigRuleComplianceSummaryRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.ConfigRuleComplianceSummaryFiltersBuilder? _filters;
  _i3.ConfigRuleComplianceSummaryFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ConfigRuleComplianceSummaryFiltersBuilder();
  set filters(_i3.ConfigRuleComplianceSummaryFiltersBuilder? filters) =>
      _$this._filters = filters;

  _i4.ConfigRuleComplianceSummaryGroupKey? _groupByKey;
  _i4.ConfigRuleComplianceSummaryGroupKey? get groupByKey => _$this._groupByKey;
  set groupByKey(_i4.ConfigRuleComplianceSummaryGroupKey? groupByKey) =>
      _$this._groupByKey = groupByKey;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateConfigRuleComplianceSummaryRequestBuilder() {
    GetAggregateConfigRuleComplianceSummaryRequest._init(this);
  }

  GetAggregateConfigRuleComplianceSummaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _filters = $v.filters?.toBuilder();
      _groupByKey = $v.groupByKey;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateConfigRuleComplianceSummaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateConfigRuleComplianceSummaryRequest;
  }

  @override
  void update(
      void Function(GetAggregateConfigRuleComplianceSummaryRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateConfigRuleComplianceSummaryRequest build() => _build();

  _$GetAggregateConfigRuleComplianceSummaryRequest _build() {
    _$GetAggregateConfigRuleComplianceSummaryRequest _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateConfigRuleComplianceSummaryRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'GetAggregateConfigRuleComplianceSummaryRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              groupByKey: groupByKey,
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'GetAggregateConfigRuleComplianceSummaryRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateConfigRuleComplianceSummaryRequest',
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
