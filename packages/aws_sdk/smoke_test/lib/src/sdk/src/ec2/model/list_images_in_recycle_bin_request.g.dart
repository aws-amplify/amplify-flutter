// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_images_in_recycle_bin_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListImagesInRecycleBinRequest extends ListImagesInRecycleBinRequest {
  @override
  final _i3.BuiltList<String>? imageIds;
  @override
  final String? nextToken;
  @override
  final int? maxResults;
  @override
  final bool dryRun;

  factory _$ListImagesInRecycleBinRequest(
          [void Function(ListImagesInRecycleBinRequestBuilder)? updates]) =>
      (new ListImagesInRecycleBinRequestBuilder()..update(updates))._build();

  _$ListImagesInRecycleBinRequest._(
      {this.imageIds, this.nextToken, this.maxResults, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ListImagesInRecycleBinRequest', 'dryRun');
  }

  @override
  ListImagesInRecycleBinRequest rebuild(
          void Function(ListImagesInRecycleBinRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListImagesInRecycleBinRequestBuilder toBuilder() =>
      new ListImagesInRecycleBinRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListImagesInRecycleBinRequest &&
        imageIds == other.imageIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListImagesInRecycleBinRequestBuilder
    implements
        Builder<ListImagesInRecycleBinRequest,
            ListImagesInRecycleBinRequestBuilder> {
  _$ListImagesInRecycleBinRequest? _$v;

  _i3.ListBuilder<String>? _imageIds;
  _i3.ListBuilder<String> get imageIds =>
      _$this._imageIds ??= new _i3.ListBuilder<String>();
  set imageIds(_i3.ListBuilder<String>? imageIds) =>
      _$this._imageIds = imageIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ListImagesInRecycleBinRequestBuilder() {
    ListImagesInRecycleBinRequest._init(this);
  }

  ListImagesInRecycleBinRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageIds = $v.imageIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListImagesInRecycleBinRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListImagesInRecycleBinRequest;
  }

  @override
  void update(void Function(ListImagesInRecycleBinRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListImagesInRecycleBinRequest build() => _build();

  _$ListImagesInRecycleBinRequest _build() {
    _$ListImagesInRecycleBinRequest _$result;
    try {
      _$result = _$v ??
          new _$ListImagesInRecycleBinRequest._(
              imageIds: _imageIds?.build(),
              nextToken: nextToken,
              maxResults: maxResults,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ListImagesInRecycleBinRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageIds';
        _imageIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListImagesInRecycleBinRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
