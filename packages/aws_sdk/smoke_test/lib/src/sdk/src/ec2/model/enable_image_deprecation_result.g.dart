// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_image_deprecation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableImageDeprecationResult extends EnableImageDeprecationResult {
  @override
  final bool return_;

  factory _$EnableImageDeprecationResult(
          [void Function(EnableImageDeprecationResultBuilder)? updates]) =>
      (new EnableImageDeprecationResultBuilder()..update(updates))._build();

  _$EnableImageDeprecationResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'EnableImageDeprecationResult', 'return_');
  }

  @override
  EnableImageDeprecationResult rebuild(
          void Function(EnableImageDeprecationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableImageDeprecationResultBuilder toBuilder() =>
      new EnableImageDeprecationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableImageDeprecationResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableImageDeprecationResultBuilder
    implements
        Builder<EnableImageDeprecationResult,
            EnableImageDeprecationResultBuilder> {
  _$EnableImageDeprecationResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  EnableImageDeprecationResultBuilder() {
    EnableImageDeprecationResult._init(this);
  }

  EnableImageDeprecationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableImageDeprecationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableImageDeprecationResult;
  }

  @override
  void update(void Function(EnableImageDeprecationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableImageDeprecationResult build() => _build();

  _$EnableImageDeprecationResult _build() {
    final _$result = _$v ??
        new _$EnableImageDeprecationResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'EnableImageDeprecationResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
