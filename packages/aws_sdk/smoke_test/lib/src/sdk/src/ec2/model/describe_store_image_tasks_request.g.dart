// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_store_image_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStoreImageTasksRequest extends DescribeStoreImageTasksRequest {
  @override
  final _i3.BuiltList<String>? imageIds;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeStoreImageTasksRequest(
          [void Function(DescribeStoreImageTasksRequestBuilder)? updates]) =>
      (new DescribeStoreImageTasksRequestBuilder()..update(updates))._build();

  _$DescribeStoreImageTasksRequest._(
      {this.imageIds,
      required this.dryRun,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeStoreImageTasksRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeStoreImageTasksRequest', 'maxResults');
  }

  @override
  DescribeStoreImageTasksRequest rebuild(
          void Function(DescribeStoreImageTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStoreImageTasksRequestBuilder toBuilder() =>
      new DescribeStoreImageTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStoreImageTasksRequest &&
        imageIds == other.imageIds &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStoreImageTasksRequestBuilder
    implements
        Builder<DescribeStoreImageTasksRequest,
            DescribeStoreImageTasksRequestBuilder> {
  _$DescribeStoreImageTasksRequest? _$v;

  _i3.ListBuilder<String>? _imageIds;
  _i3.ListBuilder<String> get imageIds =>
      _$this._imageIds ??= new _i3.ListBuilder<String>();
  set imageIds(_i3.ListBuilder<String>? imageIds) =>
      _$this._imageIds = imageIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeStoreImageTasksRequestBuilder() {
    DescribeStoreImageTasksRequest._init(this);
  }

  DescribeStoreImageTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageIds = $v.imageIds?.toBuilder();
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStoreImageTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStoreImageTasksRequest;
  }

  @override
  void update(void Function(DescribeStoreImageTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStoreImageTasksRequest build() => _build();

  _$DescribeStoreImageTasksRequest _build() {
    _$DescribeStoreImageTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeStoreImageTasksRequest._(
              imageIds: _imageIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeStoreImageTasksRequest', 'dryRun'),
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeStoreImageTasksRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageIds';
        _imageIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStoreImageTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
