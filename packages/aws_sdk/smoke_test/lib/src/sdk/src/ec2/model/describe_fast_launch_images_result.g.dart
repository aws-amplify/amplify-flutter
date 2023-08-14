// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fast_launch_images_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFastLaunchImagesResult extends DescribeFastLaunchImagesResult {
  @override
  final _i2.BuiltList<DescribeFastLaunchImagesSuccessItem>? fastLaunchImages;
  @override
  final String? nextToken;

  factory _$DescribeFastLaunchImagesResult(
          [void Function(DescribeFastLaunchImagesResultBuilder)? updates]) =>
      (new DescribeFastLaunchImagesResultBuilder()..update(updates))._build();

  _$DescribeFastLaunchImagesResult._({this.fastLaunchImages, this.nextToken})
      : super._();

  @override
  DescribeFastLaunchImagesResult rebuild(
          void Function(DescribeFastLaunchImagesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFastLaunchImagesResultBuilder toBuilder() =>
      new DescribeFastLaunchImagesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFastLaunchImagesResult &&
        fastLaunchImages == other.fastLaunchImages &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fastLaunchImages.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFastLaunchImagesResultBuilder
    implements
        Builder<DescribeFastLaunchImagesResult,
            DescribeFastLaunchImagesResultBuilder> {
  _$DescribeFastLaunchImagesResult? _$v;

  _i2.ListBuilder<DescribeFastLaunchImagesSuccessItem>? _fastLaunchImages;
  _i2.ListBuilder<DescribeFastLaunchImagesSuccessItem> get fastLaunchImages =>
      _$this._fastLaunchImages ??=
          new _i2.ListBuilder<DescribeFastLaunchImagesSuccessItem>();
  set fastLaunchImages(
          _i2.ListBuilder<DescribeFastLaunchImagesSuccessItem>?
              fastLaunchImages) =>
      _$this._fastLaunchImages = fastLaunchImages;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeFastLaunchImagesResultBuilder();

  DescribeFastLaunchImagesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fastLaunchImages = $v.fastLaunchImages?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFastLaunchImagesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFastLaunchImagesResult;
  }

  @override
  void update(void Function(DescribeFastLaunchImagesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFastLaunchImagesResult build() => _build();

  _$DescribeFastLaunchImagesResult _build() {
    _$DescribeFastLaunchImagesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFastLaunchImagesResult._(
              fastLaunchImages: _fastLaunchImages?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fastLaunchImages';
        _fastLaunchImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFastLaunchImagesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
