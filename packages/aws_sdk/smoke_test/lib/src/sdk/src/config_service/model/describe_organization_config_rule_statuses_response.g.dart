// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_organization_config_rule_statuses_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRuleStatusesResponse
    extends DescribeOrganizationConfigRuleStatusesResponse {
  @override
  final _i2.BuiltList<OrganizationConfigRuleStatus>?
      organizationConfigRuleStatuses;
  @override
  final String? nextToken;

  factory _$DescribeOrganizationConfigRuleStatusesResponse(
          [void Function(DescribeOrganizationConfigRuleStatusesResponseBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRuleStatusesResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConfigRuleStatusesResponse._(
      {this.organizationConfigRuleStatuses, this.nextToken})
      : super._();

  @override
  DescribeOrganizationConfigRuleStatusesResponse rebuild(
          void Function(DescribeOrganizationConfigRuleStatusesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConfigRuleStatusesResponseBuilder toBuilder() =>
      new DescribeOrganizationConfigRuleStatusesResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConfigRuleStatusesResponse &&
        organizationConfigRuleStatuses ==
            other.organizationConfigRuleStatuses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleStatuses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationConfigRuleStatusesResponseBuilder
    implements
        Builder<DescribeOrganizationConfigRuleStatusesResponse,
            DescribeOrganizationConfigRuleStatusesResponseBuilder> {
  _$DescribeOrganizationConfigRuleStatusesResponse? _$v;

  _i2.ListBuilder<OrganizationConfigRuleStatus>?
      _organizationConfigRuleStatuses;
  _i2.ListBuilder<OrganizationConfigRuleStatus>
      get organizationConfigRuleStatuses =>
          _$this._organizationConfigRuleStatuses ??=
              new _i2.ListBuilder<OrganizationConfigRuleStatus>();
  set organizationConfigRuleStatuses(
          _i2.ListBuilder<OrganizationConfigRuleStatus>?
              organizationConfigRuleStatuses) =>
      _$this._organizationConfigRuleStatuses = organizationConfigRuleStatuses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeOrganizationConfigRuleStatusesResponseBuilder();

  DescribeOrganizationConfigRuleStatusesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleStatuses =
          $v.organizationConfigRuleStatuses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationConfigRuleStatusesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConfigRuleStatusesResponse;
  }

  @override
  void update(
      void Function(DescribeOrganizationConfigRuleStatusesResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConfigRuleStatusesResponse build() => _build();

  _$DescribeOrganizationConfigRuleStatusesResponse _build() {
    _$DescribeOrganizationConfigRuleStatusesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConfigRuleStatusesResponse._(
              organizationConfigRuleStatuses:
                  _organizationConfigRuleStatuses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConfigRuleStatuses';
        _organizationConfigRuleStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeOrganizationConfigRuleStatusesResponse',
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
