// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstancesRequest extends DescribeInstancesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeInstancesRequest(
          [void Function(DescribeInstancesRequestBuilder)? updates]) =>
      (new DescribeInstancesRequestBuilder()..update(updates))._build();

  _$DescribeInstancesRequest._(
      {this.filters,
      this.instanceIds,
      required this.dryRun,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeInstancesRequest', 'maxResults');
  }

  @override
  DescribeInstancesRequest rebuild(
          void Function(DescribeInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstancesRequestBuilder toBuilder() =>
      new DescribeInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstancesRequest &&
        filters == other.filters &&
        instanceIds == other.instanceIds &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstancesRequestBuilder
    implements
        Builder<DescribeInstancesRequest, DescribeInstancesRequestBuilder> {
  _$DescribeInstancesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstancesRequestBuilder() {
    DescribeInstancesRequest._init(this);
  }

  DescribeInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _instanceIds = $v.instanceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstancesRequest;
  }

  @override
  void update(void Function(DescribeInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstancesRequest build() => _build();

  _$DescribeInstancesRequest _build() {
    _$DescribeInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstancesRequest._(
              filters: _filters?.build(),
              instanceIds: _instanceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInstancesRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeInstancesRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
