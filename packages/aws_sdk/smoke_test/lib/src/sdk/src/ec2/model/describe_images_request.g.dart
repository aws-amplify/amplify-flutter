// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_images_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImagesRequest extends DescribeImagesRequest {
  @override
  final _i3.BuiltList<String>? executableUsers;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? imageIds;
  @override
  final _i3.BuiltList<String>? owners;
  @override
  final bool includeDeprecated;
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeImagesRequest(
          [void Function(DescribeImagesRequestBuilder)? updates]) =>
      (new DescribeImagesRequestBuilder()..update(updates))._build();

  _$DescribeImagesRequest._(
      {this.executableUsers,
      this.filters,
      this.imageIds,
      this.owners,
      required this.includeDeprecated,
      required this.dryRun,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        includeDeprecated, r'DescribeImagesRequest', 'includeDeprecated');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeImagesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeImagesRequest', 'maxResults');
  }

  @override
  DescribeImagesRequest rebuild(
          void Function(DescribeImagesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImagesRequestBuilder toBuilder() =>
      new DescribeImagesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImagesRequest &&
        executableUsers == other.executableUsers &&
        filters == other.filters &&
        imageIds == other.imageIds &&
        owners == other.owners &&
        includeDeprecated == other.includeDeprecated &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, executableUsers.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, imageIds.hashCode);
    _$hash = $jc(_$hash, owners.hashCode);
    _$hash = $jc(_$hash, includeDeprecated.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImagesRequestBuilder
    implements Builder<DescribeImagesRequest, DescribeImagesRequestBuilder> {
  _$DescribeImagesRequest? _$v;

  _i3.ListBuilder<String>? _executableUsers;
  _i3.ListBuilder<String> get executableUsers =>
      _$this._executableUsers ??= new _i3.ListBuilder<String>();
  set executableUsers(_i3.ListBuilder<String>? executableUsers) =>
      _$this._executableUsers = executableUsers;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _imageIds;
  _i3.ListBuilder<String> get imageIds =>
      _$this._imageIds ??= new _i3.ListBuilder<String>();
  set imageIds(_i3.ListBuilder<String>? imageIds) =>
      _$this._imageIds = imageIds;

  _i3.ListBuilder<String>? _owners;
  _i3.ListBuilder<String> get owners =>
      _$this._owners ??= new _i3.ListBuilder<String>();
  set owners(_i3.ListBuilder<String>? owners) => _$this._owners = owners;

  bool? _includeDeprecated;
  bool? get includeDeprecated => _$this._includeDeprecated;
  set includeDeprecated(bool? includeDeprecated) =>
      _$this._includeDeprecated = includeDeprecated;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeImagesRequestBuilder() {
    DescribeImagesRequest._init(this);
  }

  DescribeImagesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _executableUsers = $v.executableUsers?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _imageIds = $v.imageIds?.toBuilder();
      _owners = $v.owners?.toBuilder();
      _includeDeprecated = $v.includeDeprecated;
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImagesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImagesRequest;
  }

  @override
  void update(void Function(DescribeImagesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImagesRequest build() => _build();

  _$DescribeImagesRequest _build() {
    _$DescribeImagesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeImagesRequest._(
              executableUsers: _executableUsers?.build(),
              filters: _filters?.build(),
              imageIds: _imageIds?.build(),
              owners: _owners?.build(),
              includeDeprecated: BuiltValueNullFieldError.checkNotNull(
                  includeDeprecated,
                  r'DescribeImagesRequest',
                  'includeDeprecated'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeImagesRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeImagesRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'executableUsers';
        _executableUsers?.build();
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'imageIds';
        _imageIds?.build();
        _$failedField = 'owners';
        _owners?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImagesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
