// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_images_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImagesResult extends DescribeImagesResult {
  @override
  final _i2.BuiltList<Image>? images;
  @override
  final String? nextToken;

  factory _$DescribeImagesResult(
          [void Function(DescribeImagesResultBuilder)? updates]) =>
      (new DescribeImagesResultBuilder()..update(updates))._build();

  _$DescribeImagesResult._({this.images, this.nextToken}) : super._();

  @override
  DescribeImagesResult rebuild(
          void Function(DescribeImagesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImagesResultBuilder toBuilder() =>
      new DescribeImagesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImagesResult &&
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

class DescribeImagesResultBuilder
    implements Builder<DescribeImagesResult, DescribeImagesResultBuilder> {
  _$DescribeImagesResult? _$v;

  _i2.ListBuilder<Image>? _images;
  _i2.ListBuilder<Image> get images =>
      _$this._images ??= new _i2.ListBuilder<Image>();
  set images(_i2.ListBuilder<Image>? images) => _$this._images = images;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeImagesResultBuilder();

  DescribeImagesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _images = $v.images?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImagesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImagesResult;
  }

  @override
  void update(void Function(DescribeImagesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImagesResult build() => _build();

  _$DescribeImagesResult _build() {
    _$DescribeImagesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeImagesResult._(
              images: _images?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImagesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
