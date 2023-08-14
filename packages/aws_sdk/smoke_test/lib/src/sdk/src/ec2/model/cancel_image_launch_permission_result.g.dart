// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_image_launch_permission_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelImageLaunchPermissionResult
    extends CancelImageLaunchPermissionResult {
  @override
  final bool return_;

  factory _$CancelImageLaunchPermissionResult(
          [void Function(CancelImageLaunchPermissionResultBuilder)? updates]) =>
      (new CancelImageLaunchPermissionResultBuilder()..update(updates))
          ._build();

  _$CancelImageLaunchPermissionResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'CancelImageLaunchPermissionResult', 'return_');
  }

  @override
  CancelImageLaunchPermissionResult rebuild(
          void Function(CancelImageLaunchPermissionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelImageLaunchPermissionResultBuilder toBuilder() =>
      new CancelImageLaunchPermissionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelImageLaunchPermissionResult &&
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

class CancelImageLaunchPermissionResultBuilder
    implements
        Builder<CancelImageLaunchPermissionResult,
            CancelImageLaunchPermissionResultBuilder> {
  _$CancelImageLaunchPermissionResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  CancelImageLaunchPermissionResultBuilder() {
    CancelImageLaunchPermissionResult._init(this);
  }

  CancelImageLaunchPermissionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelImageLaunchPermissionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelImageLaunchPermissionResult;
  }

  @override
  void update(
      void Function(CancelImageLaunchPermissionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelImageLaunchPermissionResult build() => _build();

  _$CancelImageLaunchPermissionResult _build() {
    final _$result = _$v ??
        new _$CancelImageLaunchPermissionResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'CancelImageLaunchPermissionResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
