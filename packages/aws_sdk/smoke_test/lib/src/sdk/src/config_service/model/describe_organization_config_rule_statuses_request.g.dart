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
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConfigRuleNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
