// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_security_group_rules_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSecurityGroupRulesRequest
    extends DescribeSecurityGroupRulesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? securityGroupRuleIds;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeSecurityGroupRulesRequest(
          [void Function(DescribeSecurityGroupRulesRequestBuilder)? updates]) =>
      (new DescribeSecurityGroupRulesRequestBuilder()..update(updates))
          ._build();

  _$DescribeSecurityGroupRulesRequest._(
      {this.filters,
      this.securityGroupRuleIds,
      required this.dryRun,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSecurityGroupRulesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSecurityGroupRulesRequest', 'maxResults');
  }

  @override
  DescribeSecurityGroupRulesRequest rebuild(
          void Function(DescribeSecurityGroupRulesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSecurityGroupRulesRequestBuilder toBuilder() =>
      new DescribeSecurityGroupRulesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSecurityGroupRulesRequest &&
        filters == other.filters &&
        securityGroupRuleIds == other.securityGroupRuleIds &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, securityGroupRuleIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSecurityGroupRulesRequestBuilder
    implements
        Builder<DescribeSecurityGroupRulesRequest,
            DescribeSecurityGroupRulesRequestBuilder> {
  _$DescribeSecurityGroupRulesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _securityGroupRuleIds;
  _i3.ListBuilder<String> get securityGroupRuleIds =>
      _$this._securityGroupRuleIds ??= new _i3.ListBuilder<String>();
  set securityGroupRuleIds(_i3.ListBuilder<String>? securityGroupRuleIds) =>
      _$this._securityGroupRuleIds = securityGroupRuleIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeSecurityGroupRulesRequestBuilder() {
    DescribeSecurityGroupRulesRequest._init(this);
  }

  DescribeSecurityGroupRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _securityGroupRuleIds = $v.securityGroupRuleIds?.toBuilder();
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSecurityGroupRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSecurityGroupRulesRequest;
  }

  @override
  void update(
      void Function(DescribeSecurityGroupRulesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSecurityGroupRulesRequest build() => _build();

  _$DescribeSecurityGroupRulesRequest _build() {
    _$DescribeSecurityGroupRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSecurityGroupRulesRequest._(
              filters: _filters?.build(),
              securityGroupRuleIds: _securityGroupRuleIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSecurityGroupRulesRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeSecurityGroupRulesRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'securityGroupRuleIds';
        _securityGroupRuleIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSecurityGroupRulesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
