// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_aggregate_compliance_by_config_rules_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByConfigRulesRequest
    extends DescribeAggregateComplianceByConfigRulesRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.ConfigRuleComplianceFilters? filters;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByConfigRulesRequest(
          [void Function(
                  DescribeAggregateComplianceByConfigRulesRequestBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByConfigRulesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByConfigRulesRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'DescribeAggregateComplianceByConfigRulesRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeAggregateComplianceByConfigRulesRequest', 'limit');
  }

  @override
  DescribeAggregateComplianceByConfigRulesRequest rebuild(
          void Function(DescribeAggregateComplianceByConfigRulesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByConfigRulesRequestBuilder toBuilder() =>
      new DescribeAggregateComplianceByConfigRulesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByConfigRulesRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAggregateComplianceByConfigRulesRequestBuilder
    implements
        Builder<DescribeAggregateComplianceByConfigRulesRequest,
            DescribeAggregateComplianceByConfigRulesRequestBuilder> {
  _$DescribeAggregateComplianceByConfigRulesRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.ConfigRuleComplianceFiltersBuilder? _filters;
  _i3.ConfigRuleComplianceFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ConfigRuleComplianceFiltersBuilder();
  set filters(_i3.ConfigRuleComplianceFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByConfigRulesRequestBuilder() {
    DescribeAggregateComplianceByConfigRulesRequest._init(this);
  }

  DescribeAggregateComplianceByConfigRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateComplianceByConfigRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByConfigRulesRequest;
  }

  @override
  void update(
      void Function(DescribeAggregateComplianceByConfigRulesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByConfigRulesRequest build() => _build();

  _$DescribeAggregateComplianceByConfigRulesRequest _build() {
    _$DescribeAggregateComplianceByConfigRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByConfigRulesRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'DescribeAggregateComplianceByConfigRulesRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'DescribeAggregateComplianceByConfigRulesRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByConfigRulesRequest',
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
