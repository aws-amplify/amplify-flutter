// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_image_from_recycle_bin_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreImageFromRecycleBinResult
    extends RestoreImageFromRecycleBinResult {
  @override
  final bool return_;

  factory _$RestoreImageFromRecycleBinResult(
          [void Function(RestoreImageFromRecycleBinResultBuilder)? updates]) =>
      (new RestoreImageFromRecycleBinResultBuilder()..update(updates))._build();

  _$RestoreImageFromRecycleBinResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'RestoreImageFromRecycleBinResult', 'return_');
  }

  @override
  RestoreImageFromRecycleBinResult rebuild(
          void Function(RestoreImageFromRecycleBinResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreImageFromRecycleBinResultBuilder toBuilder() =>
      new RestoreImageFromRecycleBinResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreImageFromRecycleBinResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreImageFromRecycleBinResultBuilder
    implements
        Builder<RestoreImageFromRecycleBinResult,
            RestoreImageFromRecycleBinResultBuilder> {
  _$RestoreImageFromRecycleBinResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  RestoreImageFromRecycleBinResultBuilder() {
    RestoreImageFromRecycleBinResult._init(this);
  }

  RestoreImageFromRecycleBinResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreImageFromRecycleBinResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreImageFromRecycleBinResult;
  }

  @override
  void update(void Function(RestoreImageFromRecycleBinResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreImageFromRecycleBinResult build() => _build();

  _$RestoreImageFromRecycleBinResult _build() {
    final _$result = _$v ??
        new _$RestoreImageFromRecycleBinResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'RestoreImageFromRecycleBinResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
