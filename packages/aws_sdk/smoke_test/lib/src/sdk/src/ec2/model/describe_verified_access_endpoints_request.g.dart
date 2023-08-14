// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_endpoints_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessEndpointsRequest
    extends DescribeVerifiedAccessEndpointsRequest {
  @override
  final _i3.BuiltList<String>? verifiedAccessEndpointIds;
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? verifiedAccessGroupId;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeVerifiedAccessEndpointsRequest(
          [void Function(DescribeVerifiedAccessEndpointsRequestBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessEndpointsRequestBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessEndpointsRequest._(
      {this.verifiedAccessEndpointIds,
      this.verifiedAccessInstanceId,
      this.verifiedAccessGroupId,
      required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVerifiedAccessEndpointsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVerifiedAccessEndpointsRequest', 'dryRun');
  }

  @override
  DescribeVerifiedAccessEndpointsRequest rebuild(
          void Function(DescribeVerifiedAccessEndpointsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessEndpointsRequestBuilder toBuilder() =>
      new DescribeVerifiedAccessEndpointsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessEndpointsRequest &&
        verifiedAccessEndpointIds == other.verifiedAccessEndpointIds &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpointIds.hashCode);
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessEndpointsRequestBuilder
    implements
        Builder<DescribeVerifiedAccessEndpointsRequest,
            DescribeVerifiedAccessEndpointsRequestBuilder> {
  _$DescribeVerifiedAccessEndpointsRequest? _$v;

  _i3.ListBuilder<String>? _verifiedAccessEndpointIds;
  _i3.ListBuilder<String> get verifiedAccessEndpointIds =>
      _$this._verifiedAccessEndpointIds ??= new _i3.ListBuilder<String>();
  set verifiedAccessEndpointIds(
          _i3.ListBuilder<String>? verifiedAccessEndpointIds) =>
      _$this._verifiedAccessEndpointIds = verifiedAccessEndpointIds;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

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

  DescribeVerifiedAccessEndpointsRequestBuilder() {
    DescribeVerifiedAccessEndpointsRequest._init(this);
  }

  DescribeVerifiedAccessEndpointsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpointIds = $v.verifiedAccessEndpointIds?.toBuilder();
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessEndpointsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessEndpointsRequest;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessEndpointsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessEndpointsRequest build() => _build();

  _$DescribeVerifiedAccessEndpointsRequest _build() {
    _$DescribeVerifiedAccessEndpointsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessEndpointsRequest._(
              verifiedAccessEndpointIds: _verifiedAccessEndpointIds?.build(),
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              verifiedAccessGroupId: verifiedAccessGroupId,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVerifiedAccessEndpointsRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVerifiedAccessEndpointsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessEndpointIds';
        _verifiedAccessEndpointIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessEndpointsRequest',
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
