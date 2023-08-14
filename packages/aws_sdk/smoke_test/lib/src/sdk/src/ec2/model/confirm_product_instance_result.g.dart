// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_product_instance_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmProductInstanceResult extends ConfirmProductInstanceResult {
  @override
  final String? ownerId;
  @override
  final bool return_;

  factory _$ConfirmProductInstanceResult(
          [void Function(ConfirmProductInstanceResultBuilder)? updates]) =>
      (new ConfirmProductInstanceResultBuilder()..update(updates))._build();

  _$ConfirmProductInstanceResult._({this.ownerId, required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ConfirmProductInstanceResult', 'return_');
  }

  @override
  ConfirmProductInstanceResult rebuild(
          void Function(ConfirmProductInstanceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmProductInstanceResultBuilder toBuilder() =>
      new ConfirmProductInstanceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmProductInstanceResult &&
        ownerId == other.ownerId &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfirmProductInstanceResultBuilder
    implements
        Builder<ConfirmProductInstanceResult,
            ConfirmProductInstanceResultBuilder> {
  _$ConfirmProductInstanceResult? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ConfirmProductInstanceResultBuilder() {
    ConfirmProductInstanceResult._init(this);
  }

  ConfirmProductInstanceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmProductInstanceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmProductInstanceResult;
  }

  @override
  void update(void Function(ConfirmProductInstanceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmProductInstanceResult build() => _build();

  _$ConfirmProductInstanceResult _build() {
    final _$result = _$v ??
        new _$ConfirmProductInstanceResult._(
            ownerId: ownerId,
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ConfirmProductInstanceResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
