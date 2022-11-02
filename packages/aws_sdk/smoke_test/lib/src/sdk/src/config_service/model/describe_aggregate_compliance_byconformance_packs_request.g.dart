// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_byconformance_packs_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByconformancePacksRequest
    extends DescribeAggregateComplianceByconformancePacksRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.AggregateConformancePackComplianceFilters? filters;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByconformancePacksRequest(
          [void Function(
                  DescribeAggregateComplianceByconformancePacksRequestBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByconformancePacksRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByconformancePacksRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'DescribeAggregateComplianceByconformancePacksRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(limit,
        r'DescribeAggregateComplianceByconformancePacksRequest', 'limit');
  }

  @override
  DescribeAggregateComplianceByconformancePacksRequest rebuild(
          void Function(
                  DescribeAggregateComplianceByconformancePacksRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByconformancePacksRequestBuilder toBuilder() =>
      new DescribeAggregateComplianceByconformancePacksRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByconformancePacksRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, configurationAggregatorName.hashCode), filters.hashCode),
            limit.hashCode),
        nextToken.hashCode));
  }
}

class DescribeAggregateComplianceByconformancePacksRequestBuilder
    implements
        Builder<DescribeAggregateComplianceByconformancePacksRequest,
            DescribeAggregateComplianceByconformancePacksRequestBuilder> {
  _$DescribeAggregateComplianceByconformancePacksRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.AggregateConformancePackComplianceFiltersBuilder? _filters;
  _i3.AggregateConformancePackComplianceFiltersBuilder get filters =>
      _$this._filters ??=
          new _i3.AggregateConformancePackComplianceFiltersBuilder();
  set filters(_i3.AggregateConformancePackComplianceFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByconformancePacksRequestBuilder() {
    DescribeAggregateComplianceByconformancePacksRequest._init(this);
  }

  DescribeAggregateComplianceByconformancePacksRequestBuilder get _$this {
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
  void replace(DescribeAggregateComplianceByconformancePacksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByconformancePacksRequest;
  }

  @override
  void update(
      void Function(
              DescribeAggregateComplianceByconformancePacksRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByconformancePacksRequest build() => _build();

  _$DescribeAggregateComplianceByconformancePacksRequest _build() {
    _$DescribeAggregateComplianceByconformancePacksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByconformancePacksRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'DescribeAggregateComplianceByconformancePacksRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit,
                  r'DescribeAggregateComplianceByconformancePacksRequest',
                  'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByconformancePacksRequest',
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
