// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_config_rule_detailed_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationConfigRuleDetailedStatusRequest
    extends GetOrganizationConfigRuleDetailedStatusRequest {
  @override
  final _i3.StatusDetailFilters? filters;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final String organizationConfigRuleName;

  factory _$GetOrganizationConfigRuleDetailedStatusRequest(
          [void Function(GetOrganizationConfigRuleDetailedStatusRequestBuilder)?
              updates]) =>
      (new GetOrganizationConfigRuleDetailedStatusRequestBuilder()
            ..update(updates))
          ._build();

  _$GetOrganizationConfigRuleDetailedStatusRequest._(
      {this.filters,
      this.limit,
      this.nextToken,
      required this.organizationConfigRuleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organizationConfigRuleName,
        r'GetOrganizationConfigRuleDetailedStatusRequest',
        'organizationConfigRuleName');
  }

  @override
  GetOrganizationConfigRuleDetailedStatusRequest rebuild(
          void Function(GetOrganizationConfigRuleDetailedStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationConfigRuleDetailedStatusRequestBuilder toBuilder() =>
      new GetOrganizationConfigRuleDetailedStatusRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationConfigRuleDetailedStatusRequest &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        organizationConfigRuleName == other.organizationConfigRuleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConfigRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationConfigRuleDetailedStatusRequestBuilder
    implements
        Builder<GetOrganizationConfigRuleDetailedStatusRequest,
            GetOrganizationConfigRuleDetailedStatusRequestBuilder> {
  _$GetOrganizationConfigRuleDetailedStatusRequest? _$v;

  _i3.StatusDetailFiltersBuilder? _filters;
  _i3.StatusDetailFiltersBuilder get filters =>
      _$this._filters ??= new _i3.StatusDetailFiltersBuilder();
  set filters(_i3.StatusDetailFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  GetOrganizationConfigRuleDetailedStatusRequestBuilder() {
    GetOrganizationConfigRuleDetailedStatusRequest._init(this);
  }

  GetOrganizationConfigRuleDetailedStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationConfigRuleDetailedStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationConfigRuleDetailedStatusRequest;
  }

  @override
  void update(
      void Function(GetOrganizationConfigRuleDetailedStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationConfigRuleDetailedStatusRequest build() => _build();

  _$GetOrganizationConfigRuleDetailedStatusRequest _build() {
    _$GetOrganizationConfigRuleDetailedStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$GetOrganizationConfigRuleDetailedStatusRequest._(
              filters: _filters?.build(),
              limit: limit,
              nextToken: nextToken,
              organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                  organizationConfigRuleName,
                  r'GetOrganizationConfigRuleDetailedStatusRequest',
                  'organizationConfigRuleName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOrganizationConfigRuleDetailedStatusRequest',
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
