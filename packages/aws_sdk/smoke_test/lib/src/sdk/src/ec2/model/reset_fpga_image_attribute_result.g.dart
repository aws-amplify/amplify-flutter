// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_fpga_image_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetFpgaImageAttributeResult extends ResetFpgaImageAttributeResult {
  @override
  final bool return_;

  factory _$ResetFpgaImageAttributeResult(
          [void Function(ResetFpgaImageAttributeResultBuilder)? updates]) =>
      (new ResetFpgaImageAttributeResultBuilder()..update(updates))._build();

  _$ResetFpgaImageAttributeResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ResetFpgaImageAttributeResult', 'return_');
  }

  @override
  ResetFpgaImageAttributeResult rebuild(
          void Function(ResetFpgaImageAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetFpgaImageAttributeResultBuilder toBuilder() =>
      new ResetFpgaImageAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetFpgaImageAttributeResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetFpgaImageAttributeResultBuilder
    implements
        Builder<ResetFpgaImageAttributeResult,
            ResetFpgaImageAttributeResultBuilder> {
  _$ResetFpgaImageAttributeResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ResetFpgaImageAttributeResultBuilder() {
    ResetFpgaImageAttributeResult._init(this);
  }

  ResetFpgaImageAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetFpgaImageAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetFpgaImageAttributeResult;
  }

  @override
  void update(void Function(ResetFpgaImageAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetFpgaImageAttributeResult build() => _build();

  _$ResetFpgaImageAttributeResult _build() {
    final _$result = _$v ??
        new _$ResetFpgaImageAttributeResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ResetFpgaImageAttributeResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
