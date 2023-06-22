// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_organization_config_rule_statuses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConfigRuleStatusesRequest
    extends DescribeOrganizationConfigRuleStatusesRequest {
  @override
  final _i3.BuiltList<String>? organizationConfigRuleNames;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeOrganizationConfigRuleStatusesRequest(
          [void Function(DescribeOrganizationConfigRuleStatusesRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConfigRuleStatusesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConfigRuleStatusesRequest._(
      {this.organizationConfigRuleNames, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeOrganizationConfigRuleStatusesRequest', 'limit');
  }

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

class DescribeOrganizationConfigRuleStatusesRequestBuilder
    implements
        Builder<DescribeOrganizationConfigRuleStatusesRequest,
            DescribeOrganizationConfigRuleStatusesRequestBuilder> {
  _$DescribeOrganizationConfigRuleStatusesRequest? _$v;

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

  DescribeOrganizationConfigRuleStatusesRequestBuilder() {
    DescribeOrganizationConfigRuleStatusesRequest._init(this);
  }

  DescribeOrganizationConfigRuleStatusesRequestBuilder get _$this {
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
              organizationConfigRuleNames:
                  _organizationConfigRuleNames?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'DescribeOrganizationConfigRuleStatusesRequest', 'limit'),
              nextToken: nextToken);
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
