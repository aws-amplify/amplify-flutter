// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateImageResult extends CreateImageResult {
  @override
  final String? imageId;

  factory _$CreateImageResult(
          [void Function(CreateImageResultBuilder)? updates]) =>
      (new CreateImageResultBuilder()..update(updates))._build();

  _$CreateImageResult._({this.imageId}) : super._();

  @override
  CreateImageResult rebuild(void Function(CreateImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateImageResultBuilder toBuilder() =>
      new CreateImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateImageResult && imageId == other.imageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateImageResultBuilder
    implements Builder<CreateImageResult, CreateImageResultBuilder> {
  _$CreateImageResult? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  CreateImageResultBuilder();

  CreateImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateImageResult;
  }

  @override
  void update(void Function(CreateImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateImageResult build() => _build();

  _$CreateImageResult _build() {
    final _$result = _$v ?? new _$CreateImageResult._(imageId: imageId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
