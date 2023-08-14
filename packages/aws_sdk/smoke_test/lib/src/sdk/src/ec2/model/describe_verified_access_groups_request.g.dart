// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_groups_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessGroupsRequest
    extends DescribeVerifiedAccessGroupsRequest {
  @override
  final _i3.BuiltList<String>? verifiedAccessGroupIds;
  @override
  final String? verifiedAccessInstanceId;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeVerifiedAccessGroupsRequest(
          [void Function(DescribeVerifiedAccessGroupsRequestBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessGroupsRequestBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessGroupsRequest._(
      {this.verifiedAccessGroupIds,
      this.verifiedAccessInstanceId,
      required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVerifiedAccessGroupsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVerifiedAccessGroupsRequest', 'dryRun');
  }

  @override
  DescribeVerifiedAccessGroupsRequest rebuild(
          void Function(DescribeVerifiedAccessGroupsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessGroupsRequestBuilder toBuilder() =>
      new DescribeVerifiedAccessGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessGroupsRequest &&
        verifiedAccessGroupIds == other.verifiedAccessGroupIds &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupIds.hashCode);
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessGroupsRequestBuilder
    implements
        Builder<DescribeVerifiedAccessGroupsRequest,
            DescribeVerifiedAccessGroupsRequestBuilder> {
  _$DescribeVerifiedAccessGroupsRequest? _$v;

  _i3.ListBuilder<String>? _verifiedAccessGroupIds;
  _i3.ListBuilder<String> get verifiedAccessGroupIds =>
      _$this._verifiedAccessGroupIds ??= new _i3.ListBuilder<String>();
  set verifiedAccessGroupIds(_i3.ListBuilder<String>? verifiedAccessGroupIds) =>
      _$this._verifiedAccessGroupIds = verifiedAccessGroupIds;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVerifiedAccessGroupsRequestBuilder() {
    DescribeVerifiedAccessGroupsRequest._init(this);
  }

  DescribeVerifiedAccessGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupIds = $v.verifiedAccessGroupIds?.toBuilder();
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessGroupsRequest;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessGroupsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessGroupsRequest build() => _build();

  _$DescribeVerifiedAccessGroupsRequest _build() {
    _$DescribeVerifiedAccessGroupsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessGroupsRequest._(
              verifiedAccessGroupIds: _verifiedAccessGroupIds?.build(),
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVerifiedAccessGroupsRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVerifiedAccessGroupsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessGroupIds';
        _verifiedAccessGroupIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessGroupsRequest',
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
