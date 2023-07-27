// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_organization_config_rule_detailed_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationConfigRuleDetailedStatusResponse
    extends GetOrganizationConfigRuleDetailedStatusResponse {
  @override
  final _i3.BuiltList<_i2.MemberAccountStatus>?
      organizationConfigRuleDetailedStatus;
  @override
  final String? nextToken;

  factory _$GetOrganizationConfigRuleDetailedStatusResponse(
          [void Function(
                  GetOrganizationConfigRuleDetailedStatusResponseBuilder)?
              updates]) =>
      (new GetOrganizationConfigRuleDetailedStatusResponseBuilder()
            ..update(updates))
          ._build();

  _$GetOrganizationConfigRuleDetailedStatusResponse._(
      {this.organizationConfigRuleDetailedStatus, this.nextToken})
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
        organizationConfigRuleDetailedStatus ==
            other.organizationConfigRuleDetailedStatus &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleDetailedStatus.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationConfigRuleDetailedStatusResponseBuilder
    implements
        Builder<GetOrganizationConfigRuleDetailedStatusResponse,
            GetOrganizationConfigRuleDetailedStatusResponseBuilder> {
  _$GetOrganizationConfigRuleDetailedStatusResponse? _$v;

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

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetOrganizationConfigRuleDetailedStatusResponseBuilder();

  GetOrganizationConfigRuleDetailedStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleDetailedStatus =
          $v.organizationConfigRuleDetailedStatus?.toBuilder();
      _nextToken = $v.nextToken;
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
              organizationConfigRuleDetailedStatus:
                  _organizationConfigRuleDetailedStatus?.build(),
              nextToken: nextToken);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
