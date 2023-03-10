// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_conformance_pack_detailed_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationConformancePackDetailedStatusRequest
    extends GetOrganizationConformancePackDetailedStatusRequest {
  @override
  final _i3.OrganizationResourceDetailedStatusFilters? filters;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final String organizationConformancePackName;

  factory _$GetOrganizationConformancePackDetailedStatusRequest(
          [void Function(
                  GetOrganizationConformancePackDetailedStatusRequestBuilder)?
              updates]) =>
      (new GetOrganizationConformancePackDetailedStatusRequestBuilder()
            ..update(updates))
          ._build();

  _$GetOrganizationConformancePackDetailedStatusRequest._(
      {this.filters,
      this.limit,
      this.nextToken,
      required this.organizationConformancePackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organizationConformancePackName,
        r'GetOrganizationConformancePackDetailedStatusRequest',
        'organizationConformancePackName');
  }

  @override
  GetOrganizationConformancePackDetailedStatusRequest rebuild(
          void Function(
                  GetOrganizationConformancePackDetailedStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationConformancePackDetailedStatusRequestBuilder toBuilder() =>
      new GetOrganizationConformancePackDetailedStatusRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationConformancePackDetailedStatusRequest &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        organizationConformancePackName ==
            other.organizationConformancePackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConformancePackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationConformancePackDetailedStatusRequestBuilder
    implements
        Builder<GetOrganizationConformancePackDetailedStatusRequest,
            GetOrganizationConformancePackDetailedStatusRequestBuilder> {
  _$GetOrganizationConformancePackDetailedStatusRequest? _$v;

  _i3.OrganizationResourceDetailedStatusFiltersBuilder? _filters;
  _i3.OrganizationResourceDetailedStatusFiltersBuilder get filters =>
      _$this._filters ??=
          new _i3.OrganizationResourceDetailedStatusFiltersBuilder();
  set filters(_i3.OrganizationResourceDetailedStatusFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _organizationConformancePackName;
  String? get organizationConformancePackName =>
      _$this._organizationConformancePackName;
  set organizationConformancePackName(
          String? organizationConformancePackName) =>
      _$this._organizationConformancePackName = organizationConformancePackName;

  GetOrganizationConformancePackDetailedStatusRequestBuilder() {
    GetOrganizationConformancePackDetailedStatusRequest._init(this);
  }

  GetOrganizationConformancePackDetailedStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _organizationConformancePackName = $v.organizationConformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationConformancePackDetailedStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationConformancePackDetailedStatusRequest;
  }

  @override
  void update(
      void Function(GetOrganizationConformancePackDetailedStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationConformancePackDetailedStatusRequest build() => _build();

  _$GetOrganizationConformancePackDetailedStatusRequest _build() {
    _$GetOrganizationConformancePackDetailedStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$GetOrganizationConformancePackDetailedStatusRequest._(
              filters: _filters?.build(),
              limit: limit,
              nextToken: nextToken,
              organizationConformancePackName:
                  BuiltValueNullFieldError.checkNotNull(
                      organizationConformancePackName,
                      r'GetOrganizationConformancePackDetailedStatusRequest',
                      'organizationConformancePackName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOrganizationConformancePackDetailedStatusRequest',
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
