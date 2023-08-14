// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fpga_images_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFpgaImagesResult extends DescribeFpgaImagesResult {
  @override
  final _i2.BuiltList<FpgaImage>? fpgaImages;
  @override
  final String? nextToken;

  factory _$DescribeFpgaImagesResult(
          [void Function(DescribeFpgaImagesResultBuilder)? updates]) =>
      (new DescribeFpgaImagesResultBuilder()..update(updates))._build();

  _$DescribeFpgaImagesResult._({this.fpgaImages, this.nextToken}) : super._();

  @override
  DescribeFpgaImagesResult rebuild(
          void Function(DescribeFpgaImagesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFpgaImagesResultBuilder toBuilder() =>
      new DescribeFpgaImagesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFpgaImagesResult &&
        fpgaImages == other.fpgaImages &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgaImages.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFpgaImagesResultBuilder
    implements
        Builder<DescribeFpgaImagesResult, DescribeFpgaImagesResultBuilder> {
  _$DescribeFpgaImagesResult? _$v;

  _i2.ListBuilder<FpgaImage>? _fpgaImages;
  _i2.ListBuilder<FpgaImage> get fpgaImages =>
      _$this._fpgaImages ??= new _i2.ListBuilder<FpgaImage>();
  set fpgaImages(_i2.ListBuilder<FpgaImage>? fpgaImages) =>
      _$this._fpgaImages = fpgaImages;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeFpgaImagesResultBuilder();

  DescribeFpgaImagesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImages = $v.fpgaImages?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFpgaImagesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFpgaImagesResult;
  }

  @override
  void update(void Function(DescribeFpgaImagesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFpgaImagesResult build() => _build();

  _$DescribeFpgaImagesResult _build() {
    _$DescribeFpgaImagesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFpgaImagesResult._(
              fpgaImages: _fpgaImages?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fpgaImages';
        _fpgaImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFpgaImagesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
