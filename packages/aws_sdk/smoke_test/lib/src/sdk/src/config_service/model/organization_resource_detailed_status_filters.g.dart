// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_resource_detailed_status_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationResourceDetailedStatusFilters
    extends OrganizationResourceDetailedStatusFilters {
  @override
  final String? accountId;
  @override
  final _i2.OrganizationResourceDetailedStatus? status;

  factory _$OrganizationResourceDetailedStatusFilters(
          [void Function(OrganizationResourceDetailedStatusFiltersBuilder)?
              updates]) =>
      (new OrganizationResourceDetailedStatusFiltersBuilder()..update(updates))
          ._build();

  _$OrganizationResourceDetailedStatusFilters._({this.accountId, this.status})
      : super._();

  @override
  OrganizationResourceDetailedStatusFilters rebuild(
          void Function(OrganizationResourceDetailedStatusFiltersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationResourceDetailedStatusFiltersBuilder toBuilder() =>
      new OrganizationResourceDetailedStatusFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationResourceDetailedStatusFilters &&
        accountId == other.accountId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationResourceDetailedStatusFiltersBuilder
    implements
        Builder<OrganizationResourceDetailedStatusFilters,
            OrganizationResourceDetailedStatusFiltersBuilder> {
  _$OrganizationResourceDetailedStatusFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  _i2.OrganizationResourceDetailedStatus? _status;
  _i2.OrganizationResourceDetailedStatus? get status => _$this._status;
  set status(_i2.OrganizationResourceDetailedStatus? status) =>
      _$this._status = status;

  OrganizationResourceDetailedStatusFiltersBuilder() {
    OrganizationResourceDetailedStatusFilters._init(this);
  }

  OrganizationResourceDetailedStatusFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationResourceDetailedStatusFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationResourceDetailedStatusFilters;
  }

  @override
  void update(
      void Function(OrganizationResourceDetailedStatusFiltersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationResourceDetailedStatusFilters build() => _build();

  _$OrganizationResourceDetailedStatusFilters _build() {
    final _$result = _$v ??
        new _$OrganizationResourceDetailedStatusFilters._(
            accountId: accountId, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
