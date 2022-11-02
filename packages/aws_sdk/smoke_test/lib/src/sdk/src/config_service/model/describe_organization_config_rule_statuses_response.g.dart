// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_config_rule_statuses_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRuleStatusesResponse
    extends DescribeOrganizationConfigRuleStatusesResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.OrganizationConfigRuleStatus>?
      organizationConfigRuleStatuses;

  factory _$DescribeOrganizationConfigRuleStatusesResponse(
          [void Function(DescribeOrganizationConfigRuleStatusesResponseBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRuleStatusesResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConfigRuleStatusesResponse._(
      {this.nextToken, this.organizationConfigRuleStatuses})
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
        nextToken == other.nextToken &&
        organizationConfigRuleStatuses == other.organizationConfigRuleStatuses;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, nextToken.hashCode), organizationConfigRuleStatuses.hashCode));
  }
}

class DescribeOrganizationConfigRuleStatusesResponseBuilder
    implements
        Builder<DescribeOrganizationConfigRuleStatusesResponse,
            DescribeOrganizationConfigRuleStatusesResponseBuilder> {
  _$DescribeOrganizationConfigRuleStatusesResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.OrganizationConfigRuleStatus>?
      _organizationConfigRuleStatuses;
  _i3.ListBuilder<_i2.OrganizationConfigRuleStatus>
      get organizationConfigRuleStatuses =>
          _$this._organizationConfigRuleStatuses ??=
              new _i3.ListBuilder<_i2.OrganizationConfigRuleStatus>();
  set organizationConfigRuleStatuses(
          _i3.ListBuilder<_i2.OrganizationConfigRuleStatus>?
              organizationConfigRuleStatuses) =>
      _$this._organizationConfigRuleStatuses = organizationConfigRuleStatuses;

  DescribeOrganizationConfigRuleStatusesResponseBuilder() {
    DescribeOrganizationConfigRuleStatusesResponse._init(this);
  }

  DescribeOrganizationConfigRuleStatusesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _organizationConfigRuleStatuses =
          $v.organizationConfigRuleStatuses?.toBuilder();
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
              nextToken: nextToken,
              organizationConfigRuleStatuses:
                  _organizationConfigRuleStatuses?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
