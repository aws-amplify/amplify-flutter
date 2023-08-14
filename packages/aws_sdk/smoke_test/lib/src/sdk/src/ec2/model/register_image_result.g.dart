// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterImageResult extends RegisterImageResult {
  @override
  final String? imageId;

  factory _$RegisterImageResult(
          [void Function(RegisterImageResultBuilder)? updates]) =>
      (new RegisterImageResultBuilder()..update(updates))._build();

  _$RegisterImageResult._({this.imageId}) : super._();

  @override
  RegisterImageResult rebuild(
          void Function(RegisterImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterImageResultBuilder toBuilder() =>
      new RegisterImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterImageResult && imageId == other.imageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterImageResultBuilder
    implements Builder<RegisterImageResult, RegisterImageResultBuilder> {
  _$RegisterImageResult? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  RegisterImageResultBuilder();

  RegisterImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterImageResult;
  }

  @override
  void update(void Function(RegisterImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterImageResult build() => _build();

  _$RegisterImageResult _build() {
    final _$result = _$v ?? new _$RegisterImageResult._(imageId: imageId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
