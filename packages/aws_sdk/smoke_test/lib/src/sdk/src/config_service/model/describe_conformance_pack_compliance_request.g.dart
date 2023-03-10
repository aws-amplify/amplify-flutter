// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_conformance_pack_compliance_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConformancePackComplianceRequest
    extends DescribeConformancePackComplianceRequest {
  @override
  final String conformancePackName;
  @override
  final _i3.ConformancePackComplianceFilters? filters;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribeConformancePackComplianceRequest(
          [void Function(DescribeConformancePackComplianceRequestBuilder)?
              updates]) =>
      (new DescribeConformancePackComplianceRequestBuilder()..update(updates))
          ._build();

  _$DescribeConformancePackComplianceRequest._(
      {required this.conformancePackName,
      this.filters,
      this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'DescribeConformancePackComplianceRequest', 'conformancePackName');
  }

  @override
  DescribeConformancePackComplianceRequest rebuild(
          void Function(DescribeConformancePackComplianceRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConformancePackComplianceRequestBuilder toBuilder() =>
      new DescribeConformancePackComplianceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConformancePackComplianceRequest &&
        conformancePackName == other.conformancePackName &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConformancePackComplianceRequestBuilder
    implements
        Builder<DescribeConformancePackComplianceRequest,
            DescribeConformancePackComplianceRequestBuilder> {
  _$DescribeConformancePackComplianceRequest? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  _i3.ConformancePackComplianceFiltersBuilder? _filters;
  _i3.ConformancePackComplianceFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ConformancePackComplianceFiltersBuilder();
  set filters(_i3.ConformancePackComplianceFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConformancePackComplianceRequestBuilder() {
    DescribeConformancePackComplianceRequest._init(this);
  }

  DescribeConformancePackComplianceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConformancePackComplianceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConformancePackComplianceRequest;
  }

  @override
  void update(
      void Function(DescribeConformancePackComplianceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConformancePackComplianceRequest build() => _build();

  _$DescribeConformancePackComplianceRequest _build() {
    _$DescribeConformancePackComplianceRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConformancePackComplianceRequest._(
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'DescribeConformancePackComplianceRequest',
                  'conformancePackName'),
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
            r'DescribeConformancePackComplianceRequest',
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
