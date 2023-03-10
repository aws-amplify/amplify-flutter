// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_config_rules_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRulesResponse
    extends DescribeOrganizationConfigRulesResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.OrganizationConfigRule>? organizationConfigRules;

  factory _$DescribeOrganizationConfigRulesResponse(
          [void Function(DescribeOrganizationConfigRulesResponseBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRulesResponseBuilder()..update(updates))
          ._build();

  _$DescribeOrganizationConfigRulesResponse._(
      {this.nextToken, this.organizationConfigRules})
      : super._();

  @override
  DescribeOrganizationConfigRulesResponse rebuild(
          void Function(DescribeOrganizationConfigRulesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConfigRulesResponseBuilder toBuilder() =>
      new DescribeOrganizationConfigRulesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConfigRulesResponse &&
        nextToken == other.nextToken &&
        organizationConfigRules == other.organizationConfigRules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConfigRules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationConfigRulesResponseBuilder
    implements
        Builder<DescribeOrganizationConfigRulesResponse,
            DescribeOrganizationConfigRulesResponseBuilder> {
  _$DescribeOrganizationConfigRulesResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.OrganizationConfigRule>? _organizationConfigRules;
  _i3.ListBuilder<_i2.OrganizationConfigRule> get organizationConfigRules =>
      _$this._organizationConfigRules ??=
          new _i3.ListBuilder<_i2.OrganizationConfigRule>();
  set organizationConfigRules(
          _i3.ListBuilder<_i2.OrganizationConfigRule>?
              organizationConfigRules) =>
      _$this._organizationConfigRules = organizationConfigRules;

  DescribeOrganizationConfigRulesResponseBuilder() {
    DescribeOrganizationConfigRulesResponse._init(this);
  }

  DescribeOrganizationConfigRulesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _organizationConfigRules = $v.organizationConfigRules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationConfigRulesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConfigRulesResponse;
  }

  @override
  void update(
      void Function(DescribeOrganizationConfigRulesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConfigRulesResponse build() => _build();

  _$DescribeOrganizationConfigRulesResponse _build() {
    _$DescribeOrganizationConfigRulesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConfigRulesResponse._(
              nextToken: nextToken,
              organizationConfigRules: _organizationConfigRules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConfigRules';
        _organizationConfigRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeOrganizationConfigRulesResponse',
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
