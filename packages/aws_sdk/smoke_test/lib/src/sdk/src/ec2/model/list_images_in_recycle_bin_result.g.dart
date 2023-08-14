// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_images_in_recycle_bin_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListImagesInRecycleBinResult extends ListImagesInRecycleBinResult {
  @override
  final _i2.BuiltList<ImageRecycleBinInfo>? images;
  @override
  final String? nextToken;

  factory _$ListImagesInRecycleBinResult(
          [void Function(ListImagesInRecycleBinResultBuilder)? updates]) =>
      (new ListImagesInRecycleBinResultBuilder()..update(updates))._build();

  _$ListImagesInRecycleBinResult._({this.images, this.nextToken}) : super._();

  @override
  ListImagesInRecycleBinResult rebuild(
          void Function(ListImagesInRecycleBinResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListImagesInRecycleBinResultBuilder toBuilder() =>
      new ListImagesInRecycleBinResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListImagesInRecycleBinResult &&
        images == other.images &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListImagesInRecycleBinResultBuilder
    implements
        Builder<ListImagesInRecycleBinResult,
            ListImagesInRecycleBinResultBuilder> {
  _$ListImagesInRecycleBinResult? _$v;

  _i2.ListBuilder<ImageRecycleBinInfo>? _images;
  _i2.ListBuilder<ImageRecycleBinInfo> get images =>
      _$this._images ??= new _i2.ListBuilder<ImageRecycleBinInfo>();
  set images(_i2.ListBuilder<ImageRecycleBinInfo>? images) =>
      _$this._images = images;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListImagesInRecycleBinResultBuilder();

  ListImagesInRecycleBinResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _images = $v.images?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListImagesInRecycleBinResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListImagesInRecycleBinResult;
  }

  @override
  void update(void Function(ListImagesInRecycleBinResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListImagesInRecycleBinResult build() => _build();

  _$ListImagesInRecycleBinResult _build() {
    _$ListImagesInRecycleBinResult _$result;
    try {
      _$result = _$v ??
          new _$ListImagesInRecycleBinResult._(
              images: _images?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListImagesInRecycleBinResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
