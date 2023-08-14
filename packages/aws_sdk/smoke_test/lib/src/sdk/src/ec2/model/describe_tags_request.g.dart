// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_tags_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTagsRequest extends DescribeTagsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeTagsRequest(
          [void Function(DescribeTagsRequestBuilder)? updates]) =>
      (new DescribeTagsRequestBuilder()..update(updates))._build();

  _$DescribeTagsRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTagsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTagsRequest', 'maxResults');
  }

  @override
  DescribeTagsRequest rebuild(
          void Function(DescribeTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTagsRequestBuilder toBuilder() =>
      new DescribeTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTagsRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTagsRequestBuilder
    implements Builder<DescribeTagsRequest, DescribeTagsRequestBuilder> {
  _$DescribeTagsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTagsRequestBuilder() {
    DescribeTagsRequest._init(this);
  }

  DescribeTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTagsRequest;
  }

  @override
  void update(void Function(DescribeTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTagsRequest build() => _build();

  _$DescribeTagsRequest _build() {
    _$DescribeTagsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTagsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeTagsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeTagsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTagsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
