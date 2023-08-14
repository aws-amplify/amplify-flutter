// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyImageResult extends CopyImageResult {
  @override
  final String? imageId;

  factory _$CopyImageResult([void Function(CopyImageResultBuilder)? updates]) =>
      (new CopyImageResultBuilder()..update(updates))._build();

  _$CopyImageResult._({this.imageId}) : super._();

  @override
  CopyImageResult rebuild(void Function(CopyImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyImageResultBuilder toBuilder() =>
      new CopyImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyImageResult && imageId == other.imageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyImageResultBuilder
    implements Builder<CopyImageResult, CopyImageResultBuilder> {
  _$CopyImageResult? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  CopyImageResultBuilder();

  CopyImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyImageResult;
  }

  @override
  void update(void Function(CopyImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyImageResult build() => _build();

  _$CopyImageResult _build() {
    final _$result = _$v ?? new _$CopyImageResult._(imageId: imageId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
