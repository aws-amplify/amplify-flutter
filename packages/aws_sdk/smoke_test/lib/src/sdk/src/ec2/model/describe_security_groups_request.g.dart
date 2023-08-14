// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_security_groups_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSecurityGroupsRequest extends DescribeSecurityGroupsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? groupIds;
  @override
  final _i3.BuiltList<String>? groupNames;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeSecurityGroupsRequest(
          [void Function(DescribeSecurityGroupsRequestBuilder)? updates]) =>
      (new DescribeSecurityGroupsRequestBuilder()..update(updates))._build();

  _$DescribeSecurityGroupsRequest._(
      {this.filters,
      this.groupIds,
      this.groupNames,
      required this.dryRun,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSecurityGroupsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSecurityGroupsRequest', 'maxResults');
  }

  @override
  DescribeSecurityGroupsRequest rebuild(
          void Function(DescribeSecurityGroupsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSecurityGroupsRequestBuilder toBuilder() =>
      new DescribeSecurityGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSecurityGroupsRequest &&
        filters == other.filters &&
        groupIds == other.groupIds &&
        groupNames == other.groupNames &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, groupIds.hashCode);
    _$hash = $jc(_$hash, groupNames.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSecurityGroupsRequestBuilder
    implements
        Builder<DescribeSecurityGroupsRequest,
            DescribeSecurityGroupsRequestBuilder> {
  _$DescribeSecurityGroupsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _groupIds;
  _i3.ListBuilder<String> get groupIds =>
      _$this._groupIds ??= new _i3.ListBuilder<String>();
  set groupIds(_i3.ListBuilder<String>? groupIds) =>
      _$this._groupIds = groupIds;

  _i3.ListBuilder<String>? _groupNames;
  _i3.ListBuilder<String> get groupNames =>
      _$this._groupNames ??= new _i3.ListBuilder<String>();
  set groupNames(_i3.ListBuilder<String>? groupNames) =>
      _$this._groupNames = groupNames;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeSecurityGroupsRequestBuilder() {
    DescribeSecurityGroupsRequest._init(this);
  }

  DescribeSecurityGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _groupIds = $v.groupIds?.toBuilder();
      _groupNames = $v.groupNames?.toBuilder();
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSecurityGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSecurityGroupsRequest;
  }

  @override
  void update(void Function(DescribeSecurityGroupsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSecurityGroupsRequest build() => _build();

  _$DescribeSecurityGroupsRequest _build() {
    _$DescribeSecurityGroupsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSecurityGroupsRequest._(
              filters: _filters?.build(),
              groupIds: _groupIds?.build(),
              groupNames: _groupNames?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSecurityGroupsRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeSecurityGroupsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'groupIds';
        _groupIds?.build();
        _$failedField = 'groupNames';
        _groupNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSecurityGroupsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
