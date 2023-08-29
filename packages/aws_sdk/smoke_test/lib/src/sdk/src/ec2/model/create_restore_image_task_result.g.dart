// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_restore_image_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRestoreImageTaskResult extends CreateRestoreImageTaskResult {
  @override
  final String? imageId;

  factory _$CreateRestoreImageTaskResult(
          [void Function(CreateRestoreImageTaskResultBuilder)? updates]) =>
      (new CreateRestoreImageTaskResultBuilder()..update(updates))._build();

  _$CreateRestoreImageTaskResult._({this.imageId}) : super._();

  @override
  CreateRestoreImageTaskResult rebuild(
          void Function(CreateRestoreImageTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestoreImageTaskResultBuilder toBuilder() =>
      new CreateRestoreImageTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRestoreImageTaskResult && imageId == other.imageId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRestoreImageTaskResultBuilder
    implements
        Builder<CreateRestoreImageTaskResult,
            CreateRestoreImageTaskResultBuilder> {
  _$CreateRestoreImageTaskResult? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  CreateRestoreImageTaskResultBuilder();

  CreateRestoreImageTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestoreImageTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRestoreImageTaskResult;
  }

  @override
  void update(void Function(CreateRestoreImageTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRestoreImageTaskResult build() => _build();

  _$CreateRestoreImageTaskResult _build() {
    final _$result =
        _$v ?? new _$CreateRestoreImageTaskResult._(imageId: imageId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
