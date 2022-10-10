// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_by_conformance_packs_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByConformancePacksRequest
    extends DescribeAggregateComplianceByConformancePacksRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.AggregateConformancePackComplianceFilters? filters;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByConformancePacksRequest(
          [void Function(
                  DescribeAggregateComplianceByConformancePacksRequestBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByConformancePacksRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByConformancePacksRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'DescribeAggregateComplianceByConformancePacksRequest',
        'configurationAggregatorName');
  }

  @override
  DescribeAggregateComplianceByConformancePacksRequest rebuild(
          void Function(
                  DescribeAggregateComplianceByConformancePacksRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByConformancePacksRequestBuilder toBuilder() =>
      new DescribeAggregateComplianceByConformancePacksRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByConformancePacksRequest &&
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

class DescribeAggregateComplianceByConformancePacksRequestBuilder
    implements
        Builder<DescribeAggregateComplianceByConformancePacksRequest,
            DescribeAggregateComplianceByConformancePacksRequestBuilder> {
  _$DescribeAggregateComplianceByConformancePacksRequest? _$v;

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

  DescribeAggregateComplianceByConformancePacksRequestBuilder() {
    DescribeAggregateComplianceByConformancePacksRequest._init(this);
  }

  DescribeAggregateComplianceByConformancePacksRequestBuilder get _$this {
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
  void replace(DescribeAggregateComplianceByConformancePacksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByConformancePacksRequest;
  }

  @override
  void update(
      void Function(
              DescribeAggregateComplianceByConformancePacksRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByConformancePacksRequest build() => _build();

  _$DescribeAggregateComplianceByConformancePacksRequest _build() {
    _$DescribeAggregateComplianceByConformancePacksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByConformancePacksRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'DescribeAggregateComplianceByConformancePacksRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByConformancePacksRequest',
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
