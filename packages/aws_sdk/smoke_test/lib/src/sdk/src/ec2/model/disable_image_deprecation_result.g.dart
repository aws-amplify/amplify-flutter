// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_image_deprecation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableImageDeprecationResult extends DisableImageDeprecationResult {
  @override
  final bool return_;

  factory _$DisableImageDeprecationResult(
          [void Function(DisableImageDeprecationResultBuilder)? updates]) =>
      (new DisableImageDeprecationResultBuilder()..update(updates))._build();

  _$DisableImageDeprecationResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DisableImageDeprecationResult', 'return_');
  }

  @override
  DisableImageDeprecationResult rebuild(
          void Function(DisableImageDeprecationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableImageDeprecationResultBuilder toBuilder() =>
      new DisableImageDeprecationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableImageDeprecationResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableImageDeprecationResultBuilder
    implements
        Builder<DisableImageDeprecationResult,
            DisableImageDeprecationResultBuilder> {
  _$DisableImageDeprecationResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DisableImageDeprecationResultBuilder() {
    DisableImageDeprecationResult._init(this);
  }

  DisableImageDeprecationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableImageDeprecationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableImageDeprecationResult;
  }

  @override
  void update(void Function(DisableImageDeprecationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableImageDeprecationResult build() => _build();

  _$DisableImageDeprecationResult _build() {
    final _$result = _$v ??
        new _$DisableImageDeprecationResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DisableImageDeprecationResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
