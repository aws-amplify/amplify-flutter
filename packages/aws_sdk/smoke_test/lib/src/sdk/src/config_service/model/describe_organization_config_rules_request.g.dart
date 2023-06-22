// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_organization_config_rules_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRulesRequest
    extends DescribeOrganizationConfigRulesRequest {
  @override
  final _i3.BuiltList<String>? organizationConfigRuleNames;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeOrganizationConfigRulesRequest(
          [void Function(DescribeOrganizationConfigRulesRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRulesRequestBuilder()..update(updates))
          ._build();

  _$DescribeOrganizationConfigRulesRequest._(
      {this.organizationConfigRuleNames, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeOrganizationConfigRulesRequest', 'limit');
  }

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
        organizationConfigRuleNames == other.organizationConfigRuleNames &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleNames.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationConfigRulesRequestBuilder
    implements
        Builder<DescribeOrganizationConfigRulesRequest,
            DescribeOrganizationConfigRulesRequestBuilder> {
  _$DescribeOrganizationConfigRulesRequest? _$v;

  _i3.ListBuilder<String>? _organizationConfigRuleNames;
  _i3.ListBuilder<String> get organizationConfigRuleNames =>
      _$this._organizationConfigRuleNames ??= new _i3.ListBuilder<String>();
  set organizationConfigRuleNames(
          _i3.ListBuilder<String>? organizationConfigRuleNames) =>
      _$this._organizationConfigRuleNames = organizationConfigRuleNames;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeOrganizationConfigRulesRequestBuilder() {
    DescribeOrganizationConfigRulesRequest._init(this);
  }

  DescribeOrganizationConfigRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleNames =
          $v.organizationConfigRuleNames?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
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
              organizationConfigRuleNames:
                  _organizationConfigRuleNames?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'DescribeOrganizationConfigRulesRequest', 'limit'),
              nextToken: nextToken);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
