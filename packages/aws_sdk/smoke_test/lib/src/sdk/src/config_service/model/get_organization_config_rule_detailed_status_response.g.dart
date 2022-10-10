// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_config_rule_detailed_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationConfigRuleDetailedStatusResponse
    extends GetOrganizationConfigRuleDetailedStatusResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.MemberAccountStatus>?
      organizationConfigRuleDetailedStatus;

  factory _$GetOrganizationConfigRuleDetailedStatusResponse(
          [void Function(
                  GetOrganizationConfigRuleDetailedStatusResponseBuilder)?
              updates]) =>
      (new GetOrganizationConfigRuleDetailedStatusResponseBuilder()
            ..update(updates))
          ._build();

  _$GetOrganizationConfigRuleDetailedStatusResponse._(
      {this.nextToken, this.organizationConfigRuleDetailedStatus})
      : super._();

  @override
  GetOrganizationConfigRuleDetailedStatusResponse rebuild(
          void Function(GetOrganizationConfigRuleDetailedStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationConfigRuleDetailedStatusResponseBuilder toBuilder() =>
      new GetOrganizationConfigRuleDetailedStatusResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationConfigRuleDetailedStatusResponse &&
        nextToken == other.nextToken &&
        organizationConfigRuleDetailedStatus ==
            other.organizationConfigRuleDetailedStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextToken.hashCode),
        organizationConfigRuleDetailedStatus.hashCode));
  }
}

class GetOrganizationConfigRuleDetailedStatusResponseBuilder
    implements
        Builder<GetOrganizationConfigRuleDetailedStatusResponse,
            GetOrganizationConfigRuleDetailedStatusResponseBuilder> {
  _$GetOrganizationConfigRuleDetailedStatusResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.MemberAccountStatus>?
      _organizationConfigRuleDetailedStatus;
  _i3.ListBuilder<_i2.MemberAccountStatus>
      get organizationConfigRuleDetailedStatus =>
          _$this._organizationConfigRuleDetailedStatus ??=
              new _i3.ListBuilder<_i2.MemberAccountStatus>();
  set organizationConfigRuleDetailedStatus(
          _i3.ListBuilder<_i2.MemberAccountStatus>?
              organizationConfigRuleDetailedStatus) =>
      _$this._organizationConfigRuleDetailedStatus =
          organizationConfigRuleDetailedStatus;

  GetOrganizationConfigRuleDetailedStatusResponseBuilder() {
    GetOrganizationConfigRuleDetailedStatusResponse._init(this);
  }

  GetOrganizationConfigRuleDetailedStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _organizationConfigRuleDetailedStatus =
          $v.organizationConfigRuleDetailedStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationConfigRuleDetailedStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationConfigRuleDetailedStatusResponse;
  }

  @override
  void update(
      void Function(GetOrganizationConfigRuleDetailedStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationConfigRuleDetailedStatusResponse build() => _build();

  _$GetOrganizationConfigRuleDetailedStatusResponse _build() {
    _$GetOrganizationConfigRuleDetailedStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$GetOrganizationConfigRuleDetailedStatusResponse._(
              nextToken: nextToken,
              organizationConfigRuleDetailedStatus:
                  _organizationConfigRuleDetailedStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConfigRuleDetailedStatus';
        _organizationConfigRuleDetailedStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOrganizationConfigRuleDetailedStatusResponse',
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
