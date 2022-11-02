// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_config_rule_statuses_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRuleStatusesRequest
    extends DescribeOrganizationConfigRuleStatusesRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? organizationConfigRuleNames;

  factory _$DescribeOrganizationConfigRuleStatusesRequest(
          [void Function(DescribeOrganizationConfigRuleStatusesRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRuleStatusesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConfigRuleStatusesRequest._(
      {this.limit, this.nextToken, this.organizationConfigRuleNames})
      : super._();

  @override
  DescribeOrganizationConfigRuleStatusesRequest rebuild(
          void Function(DescribeOrganizationConfigRuleStatusesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConfigRuleStatusesRequestBuilder toBuilder() =>
      new DescribeOrganizationConfigRuleStatusesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConfigRuleStatusesRequest &&
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

class DescribeOrganizationConfigRuleStatusesRequestBuilder
    implements
        Builder<DescribeOrganizationConfigRuleStatusesRequest,
            DescribeOrganizationConfigRuleStatusesRequestBuilder> {
  _$DescribeOrganizationConfigRuleStatusesRequest? _$v;

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

  DescribeOrganizationConfigRuleStatusesRequestBuilder() {
    DescribeOrganizationConfigRuleStatusesRequest._init(this);
  }

  DescribeOrganizationConfigRuleStatusesRequestBuilder get _$this {
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
  void replace(DescribeOrganizationConfigRuleStatusesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConfigRuleStatusesRequest;
  }

  @override
  void update(
      void Function(DescribeOrganizationConfigRuleStatusesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConfigRuleStatusesRequest build() => _build();

  _$DescribeOrganizationConfigRuleStatusesRequest _build() {
    _$DescribeOrganizationConfigRuleStatusesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConfigRuleStatusesRequest._(
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
            r'DescribeOrganizationConfigRuleStatusesRequest',
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
