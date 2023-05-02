// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_conformance_pack_detailed_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationConformancePackDetailedStatusResponse
    extends GetOrganizationConformancePackDetailedStatusResponse {
  @override
  final _i3.BuiltList<_i2.OrganizationConformancePackDetailedStatus>?
      organizationConformancePackDetailedStatuses;
  @override
  final String? nextToken;

  factory _$GetOrganizationConformancePackDetailedStatusResponse(
          [void Function(
                  GetOrganizationConformancePackDetailedStatusResponseBuilder)?
              updates]) =>
      (new GetOrganizationConformancePackDetailedStatusResponseBuilder()
            ..update(updates))
          ._build();

  _$GetOrganizationConformancePackDetailedStatusResponse._(
      {this.organizationConformancePackDetailedStatuses, this.nextToken})
      : super._();

  @override
  GetOrganizationConformancePackDetailedStatusResponse rebuild(
          void Function(
                  GetOrganizationConformancePackDetailedStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationConformancePackDetailedStatusResponseBuilder toBuilder() =>
      new GetOrganizationConformancePackDetailedStatusResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationConformancePackDetailedStatusResponse &&
        organizationConformancePackDetailedStatuses ==
            other.organizationConformancePackDetailedStatuses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConformancePackDetailedStatuses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationConformancePackDetailedStatusResponseBuilder
    implements
        Builder<GetOrganizationConformancePackDetailedStatusResponse,
            GetOrganizationConformancePackDetailedStatusResponseBuilder> {
  _$GetOrganizationConformancePackDetailedStatusResponse? _$v;

  _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>?
      _organizationConformancePackDetailedStatuses;
  _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>
      get organizationConformancePackDetailedStatuses => _$this
              ._organizationConformancePackDetailedStatuses ??=
          new _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>();
  set organizationConformancePackDetailedStatuses(
          _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>?
              organizationConformancePackDetailedStatuses) =>
      _$this._organizationConformancePackDetailedStatuses =
          organizationConformancePackDetailedStatuses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetOrganizationConformancePackDetailedStatusResponseBuilder() {
    GetOrganizationConformancePackDetailedStatusResponse._init(this);
  }

  GetOrganizationConformancePackDetailedStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConformancePackDetailedStatuses =
          $v.organizationConformancePackDetailedStatuses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationConformancePackDetailedStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationConformancePackDetailedStatusResponse;
  }

  @override
  void update(
      void Function(
              GetOrganizationConformancePackDetailedStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationConformancePackDetailedStatusResponse build() => _build();

  _$GetOrganizationConformancePackDetailedStatusResponse _build() {
    _$GetOrganizationConformancePackDetailedStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$GetOrganizationConformancePackDetailedStatusResponse._(
              organizationConformancePackDetailedStatuses:
                  _organizationConformancePackDetailedStatuses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConformancePackDetailedStatuses';
        _organizationConformancePackDetailedStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOrganizationConformancePackDetailedStatusResponse',
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
