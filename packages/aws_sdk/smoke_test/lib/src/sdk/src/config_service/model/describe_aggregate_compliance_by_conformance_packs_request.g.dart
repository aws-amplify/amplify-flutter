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
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
