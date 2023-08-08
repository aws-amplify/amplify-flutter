// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aggregate_conformance_pack_compliance_summary_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateConformancePackComplianceSummaryRequest
    extends GetAggregateConformancePackComplianceSummaryRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.AggregateConformancePackComplianceSummaryFilters? filters;
  @override
  final _i4.AggregateConformancePackComplianceSummaryGroupKey? groupByKey;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetAggregateConformancePackComplianceSummaryRequest(
          [void Function(
                  GetAggregateConformancePackComplianceSummaryRequestBuilder)?
              updates]) =>
      (new GetAggregateConformancePackComplianceSummaryRequestBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateConformancePackComplianceSummaryRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      this.groupByKey,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'GetAggregateConformancePackComplianceSummaryRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetAggregateConformancePackComplianceSummaryRequest', 'limit');
  }

  @override
  GetAggregateConformancePackComplianceSummaryRequest rebuild(
          void Function(
                  GetAggregateConformancePackComplianceSummaryRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateConformancePackComplianceSummaryRequestBuilder toBuilder() =>
      new GetAggregateConformancePackComplianceSummaryRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateConformancePackComplianceSummaryRequest &&
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

class GetAggregateConformancePackComplianceSummaryRequestBuilder
    implements
        Builder<GetAggregateConformancePackComplianceSummaryRequest,
            GetAggregateConformancePackComplianceSummaryRequestBuilder> {
  _$GetAggregateConformancePackComplianceSummaryRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.AggregateConformancePackComplianceSummaryFiltersBuilder? _filters;
  _i3.AggregateConformancePackComplianceSummaryFiltersBuilder get filters =>
      _$this._filters ??=
          new _i3.AggregateConformancePackComplianceSummaryFiltersBuilder();
  set filters(
          _i3.AggregateConformancePackComplianceSummaryFiltersBuilder?
              filters) =>
      _$this._filters = filters;

  _i4.AggregateConformancePackComplianceSummaryGroupKey? _groupByKey;
  _i4.AggregateConformancePackComplianceSummaryGroupKey? get groupByKey =>
      _$this._groupByKey;
  set groupByKey(
          _i4.AggregateConformancePackComplianceSummaryGroupKey? groupByKey) =>
      _$this._groupByKey = groupByKey;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateConformancePackComplianceSummaryRequestBuilder() {
    GetAggregateConformancePackComplianceSummaryRequest._init(this);
  }

  GetAggregateConformancePackComplianceSummaryRequestBuilder get _$this {
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
  void replace(GetAggregateConformancePackComplianceSummaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateConformancePackComplianceSummaryRequest;
  }

  @override
  void update(
      void Function(GetAggregateConformancePackComplianceSummaryRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateConformancePackComplianceSummaryRequest build() => _build();

  _$GetAggregateConformancePackComplianceSummaryRequest _build() {
    _$GetAggregateConformancePackComplianceSummaryRequest _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateConformancePackComplianceSummaryRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'GetAggregateConformancePackComplianceSummaryRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              groupByKey: groupByKey,
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit,
                  r'GetAggregateConformancePackComplianceSummaryRequest',
                  'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateConformancePackComplianceSummaryRequest',
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
