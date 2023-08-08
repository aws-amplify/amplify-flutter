// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_conformance_pack_compliance_details_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConformancePackComplianceDetailsRequest
    extends GetConformancePackComplianceDetailsRequest {
  @override
  final String conformancePackName;
  @override
  final _i3.ConformancePackEvaluationFilters? filters;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetConformancePackComplianceDetailsRequest(
          [void Function(GetConformancePackComplianceDetailsRequestBuilder)?
              updates]) =>
      (new GetConformancePackComplianceDetailsRequestBuilder()..update(updates))
          ._build();

  _$GetConformancePackComplianceDetailsRequest._(
      {required this.conformancePackName,
      this.filters,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'GetConformancePackComplianceDetailsRequest', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetConformancePackComplianceDetailsRequest', 'limit');
  }

  @override
  GetConformancePackComplianceDetailsRequest rebuild(
          void Function(GetConformancePackComplianceDetailsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConformancePackComplianceDetailsRequestBuilder toBuilder() =>
      new GetConformancePackComplianceDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConformancePackComplianceDetailsRequest &&
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

class GetConformancePackComplianceDetailsRequestBuilder
    implements
        Builder<GetConformancePackComplianceDetailsRequest,
            GetConformancePackComplianceDetailsRequestBuilder> {
  _$GetConformancePackComplianceDetailsRequest? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  _i3.ConformancePackEvaluationFiltersBuilder? _filters;
  _i3.ConformancePackEvaluationFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ConformancePackEvaluationFiltersBuilder();
  set filters(_i3.ConformancePackEvaluationFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetConformancePackComplianceDetailsRequestBuilder() {
    GetConformancePackComplianceDetailsRequest._init(this);
  }

  GetConformancePackComplianceDetailsRequestBuilder get _$this {
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
  void replace(GetConformancePackComplianceDetailsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConformancePackComplianceDetailsRequest;
  }

  @override
  void update(
      void Function(GetConformancePackComplianceDetailsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConformancePackComplianceDetailsRequest build() => _build();

  _$GetConformancePackComplianceDetailsRequest _build() {
    _$GetConformancePackComplianceDetailsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetConformancePackComplianceDetailsRequest._(
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'GetConformancePackComplianceDetailsRequest',
                  'conformancePackName'),
              filters: _filters?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'GetConformancePackComplianceDetailsRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetConformancePackComplianceDetailsRequest',
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
