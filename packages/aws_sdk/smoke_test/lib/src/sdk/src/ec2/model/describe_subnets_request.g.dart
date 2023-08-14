// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_subnets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSubnetsRequest extends DescribeSubnetsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? subnetIds;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeSubnetsRequest(
          [void Function(DescribeSubnetsRequestBuilder)? updates]) =>
      (new DescribeSubnetsRequestBuilder()..update(updates))._build();

  _$DescribeSubnetsRequest._(
      {this.filters,
      this.subnetIds,
      required this.dryRun,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSubnetsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSubnetsRequest', 'maxResults');
  }

  @override
  DescribeSubnetsRequest rebuild(
          void Function(DescribeSubnetsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSubnetsRequestBuilder toBuilder() =>
      new DescribeSubnetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSubnetsRequest &&
        filters == other.filters &&
        subnetIds == other.subnetIds &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSubnetsRequestBuilder
    implements Builder<DescribeSubnetsRequest, DescribeSubnetsRequestBuilder> {
  _$DescribeSubnetsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _subnetIds;
  _i3.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i3.ListBuilder<String>();
  set subnetIds(_i3.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeSubnetsRequestBuilder() {
    DescribeSubnetsRequest._init(this);
  }

  DescribeSubnetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _subnetIds = $v.subnetIds?.toBuilder();
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSubnetsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSubnetsRequest;
  }

  @override
  void update(void Function(DescribeSubnetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSubnetsRequest build() => _build();

  _$DescribeSubnetsRequest _build() {
    _$DescribeSubnetsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSubnetsRequest._(
              filters: _filters?.build(),
              subnetIds: _subnetIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSubnetsRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeSubnetsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'subnetIds';
        _subnetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSubnetsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
