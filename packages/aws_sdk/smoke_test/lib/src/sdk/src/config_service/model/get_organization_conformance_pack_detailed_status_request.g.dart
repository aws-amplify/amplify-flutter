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
    return $jf($jc(
        $jc($jc($jc(0, filters.hashCode), limit.hashCode), nextToken.hashCode),
        organizationConformancePackName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
