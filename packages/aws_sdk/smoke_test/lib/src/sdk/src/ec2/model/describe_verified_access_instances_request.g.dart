// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessInstancesRequest
    extends DescribeVerifiedAccessInstancesRequest {
  @override
  final _i3.BuiltList<String>? verifiedAccessInstanceIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeVerifiedAccessInstancesRequest(
          [void Function(DescribeVerifiedAccessInstancesRequestBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessInstancesRequestBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessInstancesRequest._(
      {this.verifiedAccessInstanceIds,
      required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVerifiedAccessInstancesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVerifiedAccessInstancesRequest', 'dryRun');
  }

  @override
  DescribeVerifiedAccessInstancesRequest rebuild(
          void Function(DescribeVerifiedAccessInstancesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessInstancesRequestBuilder toBuilder() =>
      new DescribeVerifiedAccessInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessInstancesRequest &&
        verifiedAccessInstanceIds == other.verifiedAccessInstanceIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessInstancesRequestBuilder
    implements
        Builder<DescribeVerifiedAccessInstancesRequest,
            DescribeVerifiedAccessInstancesRequestBuilder> {
  _$DescribeVerifiedAccessInstancesRequest? _$v;

  _i3.ListBuilder<String>? _verifiedAccessInstanceIds;
  _i3.ListBuilder<String> get verifiedAccessInstanceIds =>
      _$this._verifiedAccessInstanceIds ??= new _i3.ListBuilder<String>();
  set verifiedAccessInstanceIds(
          _i3.ListBuilder<String>? verifiedAccessInstanceIds) =>
      _$this._verifiedAccessInstanceIds = verifiedAccessInstanceIds;

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

  DescribeVerifiedAccessInstancesRequestBuilder() {
    DescribeVerifiedAccessInstancesRequest._init(this);
  }

  DescribeVerifiedAccessInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceIds = $v.verifiedAccessInstanceIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessInstancesRequest;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessInstancesRequest build() => _build();

  _$DescribeVerifiedAccessInstancesRequest _build() {
    _$DescribeVerifiedAccessInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessInstancesRequest._(
              verifiedAccessInstanceIds: _verifiedAccessInstanceIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVerifiedAccessInstancesRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVerifiedAccessInstancesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessInstanceIds';
        _verifiedAccessInstanceIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessInstancesRequest',
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
