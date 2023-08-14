// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fpga_image_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFpgaImageResult extends DeleteFpgaImageResult {
  @override
  final bool return_;

  factory _$DeleteFpgaImageResult(
          [void Function(DeleteFpgaImageResultBuilder)? updates]) =>
      (new DeleteFpgaImageResultBuilder()..update(updates))._build();

  _$DeleteFpgaImageResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DeleteFpgaImageResult', 'return_');
  }

  @override
  DeleteFpgaImageResult rebuild(
          void Function(DeleteFpgaImageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFpgaImageResultBuilder toBuilder() =>
      new DeleteFpgaImageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFpgaImageResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFpgaImageResultBuilder
    implements Builder<DeleteFpgaImageResult, DeleteFpgaImageResultBuilder> {
  _$DeleteFpgaImageResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DeleteFpgaImageResultBuilder() {
    DeleteFpgaImageResult._init(this);
  }

  DeleteFpgaImageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFpgaImageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFpgaImageResult;
  }

  @override
  void update(void Function(DeleteFpgaImageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFpgaImageResult build() => _build();

  _$DeleteFpgaImageResult _build() {
    final _$result = _$v ??
        new _$DeleteFpgaImageResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DeleteFpgaImageResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
