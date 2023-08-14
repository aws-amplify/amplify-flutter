// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_fpga_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyFpgaImageResult extends CopyFpgaImageResult {
  @override
  final String? fpgaImageId;

  factory _$CopyFpgaImageResult(
          [void Function(CopyFpgaImageResultBuilder)? updates]) =>
      (new CopyFpgaImageResultBuilder()..update(updates))._build();

  _$CopyFpgaImageResult._({this.fpgaImageId}) : super._();

  @override
  CopyFpgaImageResult rebuild(
          void Function(CopyFpgaImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyFpgaImageResultBuilder toBuilder() =>
      new CopyFpgaImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyFpgaImageResult && fpgaImageId == other.fpgaImageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopyFpgaImageResultBuilder
    implements Builder<CopyFpgaImageResult, CopyFpgaImageResultBuilder> {
  _$CopyFpgaImageResult? _$v;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  CopyFpgaImageResultBuilder();

  CopyFpgaImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImageId = $v.fpgaImageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyFpgaImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyFpgaImageResult;
  }

  @override
  void update(void Function(CopyFpgaImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyFpgaImageResult build() => _build();

  _$CopyFpgaImageResult _build() {
    final _$result =
        _$v ?? new _$CopyFpgaImageResult._(fpgaImageId: fpgaImageId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
