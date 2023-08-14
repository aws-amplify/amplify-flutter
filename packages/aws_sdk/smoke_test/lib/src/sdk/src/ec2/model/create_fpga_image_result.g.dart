// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fpga_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFpgaImageResult extends CreateFpgaImageResult {
  @override
  final String? fpgaImageId;
  @override
  final String? fpgaImageGlobalId;

  factory _$CreateFpgaImageResult(
          [void Function(CreateFpgaImageResultBuilder)? updates]) =>
      (new CreateFpgaImageResultBuilder()..update(updates))._build();

  _$CreateFpgaImageResult._({this.fpgaImageId, this.fpgaImageGlobalId})
      : super._();

  @override
  CreateFpgaImageResult rebuild(
          void Function(CreateFpgaImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFpgaImageResultBuilder toBuilder() =>
      new CreateFpgaImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFpgaImageResult &&
        fpgaImageId == other.fpgaImageId &&
        fpgaImageGlobalId == other.fpgaImageGlobalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jc(_$hash, fpgaImageGlobalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFpgaImageResultBuilder
    implements Builder<CreateFpgaImageResult, CreateFpgaImageResultBuilder> {
  _$CreateFpgaImageResult? _$v;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  String? _fpgaImageGlobalId;
  String? get fpgaImageGlobalId => _$this._fpgaImageGlobalId;
  set fpgaImageGlobalId(String? fpgaImageGlobalId) =>
      _$this._fpgaImageGlobalId = fpgaImageGlobalId;

  CreateFpgaImageResultBuilder();

  CreateFpgaImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImageId = $v.fpgaImageId;
      _fpgaImageGlobalId = $v.fpgaImageGlobalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFpgaImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFpgaImageResult;
  }

  @override
  void update(void Function(CreateFpgaImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFpgaImageResult build() => _build();

  _$CreateFpgaImageResult _build() {
    final _$result = _$v ??
        new _$CreateFpgaImageResult._(
            fpgaImageId: fpgaImageId, fpgaImageGlobalId: fpgaImageGlobalId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
