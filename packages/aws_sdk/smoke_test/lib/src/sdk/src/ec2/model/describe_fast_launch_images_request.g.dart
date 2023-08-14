// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fast_launch_images_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFastLaunchImagesRequest
    extends DescribeFastLaunchImagesRequest {
  @override
  final _i3.BuiltList<String>? imageIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeFastLaunchImagesRequest(
          [void Function(DescribeFastLaunchImagesRequestBuilder)? updates]) =>
      (new DescribeFastLaunchImagesRequestBuilder()..update(updates))._build();

  _$DescribeFastLaunchImagesRequest._(
      {this.imageIds,
      this.filters,
      this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFastLaunchImagesRequest', 'dryRun');
  }

  @override
  DescribeFastLaunchImagesRequest rebuild(
          void Function(DescribeFastLaunchImagesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFastLaunchImagesRequestBuilder toBuilder() =>
      new DescribeFastLaunchImagesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFastLaunchImagesRequest &&
        imageIds == other.imageIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFastLaunchImagesRequestBuilder
    implements
        Builder<DescribeFastLaunchImagesRequest,
            DescribeFastLaunchImagesRequestBuilder> {
  _$DescribeFastLaunchImagesRequest? _$v;

  _i3.ListBuilder<String>? _imageIds;
  _i3.ListBuilder<String> get imageIds =>
      _$this._imageIds ??= new _i3.ListBuilder<String>();
  set imageIds(_i3.ListBuilder<String>? imageIds) =>
      _$this._imageIds = imageIds;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeFastLaunchImagesRequestBuilder() {
    DescribeFastLaunchImagesRequest._init(this);
  }

  DescribeFastLaunchImagesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageIds = $v.imageIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFastLaunchImagesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFastLaunchImagesRequest;
  }

  @override
  void update(void Function(DescribeFastLaunchImagesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFastLaunchImagesRequest build() => _build();

  _$DescribeFastLaunchImagesRequest _build() {
    _$DescribeFastLaunchImagesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeFastLaunchImagesRequest._(
              imageIds: _imageIds?.build(),
              filters: _filters?.build(),
              maxResults: maxResults,
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeFastLaunchImagesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageIds';
        _imageIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFastLaunchImagesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
