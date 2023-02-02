// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_conformance_pack_statuses_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConformancePackStatusesResponse
    extends DescribeOrganizationConformancePackStatusesResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.OrganizationConformancePackStatus>?
      organizationConformancePackStatuses;

  factory _$DescribeOrganizationConformancePackStatusesResponse(
          [void Function(
                  DescribeOrganizationConformancePackStatusesResponseBuilder)?
              updates]) =>
      (new DescribeOrganizationConformancePackStatusesResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConformancePackStatusesResponse._(
      {this.nextToken, this.organizationConformancePackStatuses})
      : super._();

  @override
  DescribeOrganizationConformancePackStatusesResponse rebuild(
          void Function(
                  DescribeOrganizationConformancePackStatusesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConformancePackStatusesResponseBuilder toBuilder() =>
      new DescribeOrganizationConformancePackStatusesResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConformancePackStatusesResponse &&
        nextToken == other.nextToken &&
        organizationConformancePackStatuses ==
            other.organizationConformancePackStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConformancePackStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationConformancePackStatusesResponseBuilder
    implements
        Builder<DescribeOrganizationConformancePackStatusesResponse,
            DescribeOrganizationConformancePackStatusesResponseBuilder> {
  _$DescribeOrganizationConformancePackStatusesResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.OrganizationConformancePackStatus>?
      _organizationConformancePackStatuses;
  _i3.ListBuilder<_i2.OrganizationConformancePackStatus>
      get organizationConformancePackStatuses =>
          _$this._organizationConformancePackStatuses ??=
              new _i3.ListBuilder<_i2.OrganizationConformancePackStatus>();
  set organizationConformancePackStatuses(
          _i3.ListBuilder<_i2.OrganizationConformancePackStatus>?
              organizationConformancePackStatuses) =>
      _$this._organizationConformancePackStatuses =
          organizationConformancePackStatuses;

  DescribeOrganizationConformancePackStatusesResponseBuilder() {
    DescribeOrganizationConformancePackStatusesResponse._init(this);
  }

  DescribeOrganizationConformancePackStatusesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _organizationConformancePackStatuses =
          $v.organizationConformancePackStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationConformancePackStatusesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConformancePackStatusesResponse;
  }

  @override
  void update(
      void Function(DescribeOrganizationConformancePackStatusesResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConformancePackStatusesResponse build() => _build();

  _$DescribeOrganizationConformancePackStatusesResponse _build() {
    _$DescribeOrganizationConformancePackStatusesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConformancePackStatusesResponse._(
              nextToken: nextToken,
              organizationConformancePackStatuses:
                  _organizationConformancePackStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConformancePackStatuses';
        _organizationConformancePackStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeOrganizationConformancePackStatusesResponse',
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
