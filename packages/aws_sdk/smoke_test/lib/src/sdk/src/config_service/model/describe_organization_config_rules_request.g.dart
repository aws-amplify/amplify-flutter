// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_config_rules_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRulesRequest
    extends DescribeOrganizationConfigRulesRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? organizationConfigRuleNames;

  factory _$DescribeOrganizationConfigRulesRequest(
          [void Function(DescribeOrganizationConfigRulesRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRulesRequestBuilder()..update(updates))
          ._build();

  _$DescribeOrganizationConfigRulesRequest._(
      {this.limit, this.nextToken, this.organizationConfigRuleNames})
      : super._();

  @override
  DescribeOrganizationConfigRulesRequest rebuild(
          void Function(DescribeOrganizationConfigRulesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConfigRulesRequestBuilder toBuilder() =>
      new DescribeOrganizationConfigRulesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConfigRulesRequest &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        organizationConfigRuleNames == other.organizationConfigRuleNames;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, limit.hashCode), nextToken.hashCode),
        organizationConfigRuleNames.hashCode));
  }
}

class DescribeOrganizationConfigRulesRequestBuilder
    implements
        Builder<DescribeOrganizationConfigRulesRequest,
            DescribeOrganizationConfigRulesRequestBuilder> {
  _$DescribeOrganizationConfigRulesRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _organizationConfigRuleNames;
  _i3.ListBuilder<String> get organizationConfigRuleNames =>
      _$this._organizationConfigRuleNames ??= new _i3.ListBuilder<String>();
  set organizationConfigRuleNames(
          _i3.ListBuilder<String>? organizationConfigRuleNames) =>
      _$this._organizationConfigRuleNames = organizationConfigRuleNames;

  DescribeOrganizationConfigRulesRequestBuilder() {
    DescribeOrganizationConfigRulesRequest._init(this);
  }

  DescribeOrganizationConfigRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _organizationConfigRuleNames =
          $v.organizationConfigRuleNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationConfigRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConfigRulesRequest;
  }

  @override
  void update(
      void Function(DescribeOrganizationConfigRulesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConfigRulesRequest build() => _build();

  _$DescribeOrganizationConfigRulesRequest _build() {
    _$DescribeOrganizationConfigRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConfigRulesRequest._(
              limit: limit,
              nextToken: nextToken,
              organizationConfigRuleNames:
                  _organizationConfigRuleNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConfigRuleNames';
        _organizationConfigRuleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeOrganizationConfigRulesRequest',
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
