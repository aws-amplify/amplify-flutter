// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_placement_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstancePlacementResult extends ModifyInstancePlacementResult {
  @override
  final bool return_;

  factory _$ModifyInstancePlacementResult(
          [void Function(ModifyInstancePlacementResultBuilder)? updates]) =>
      (new ModifyInstancePlacementResultBuilder()..update(updates))._build();

  _$ModifyInstancePlacementResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyInstancePlacementResult', 'return_');
  }

  @override
  ModifyInstancePlacementResult rebuild(
          void Function(ModifyInstancePlacementResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstancePlacementResultBuilder toBuilder() =>
      new ModifyInstancePlacementResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstancePlacementResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstancePlacementResultBuilder
    implements
        Builder<ModifyInstancePlacementResult,
            ModifyInstancePlacementResultBuilder> {
  _$ModifyInstancePlacementResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyInstancePlacementResultBuilder() {
    ModifyInstancePlacementResult._init(this);
  }

  ModifyInstancePlacementResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstancePlacementResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstancePlacementResult;
  }

  @override
  void update(void Function(ModifyInstancePlacementResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstancePlacementResult build() => _build();

  _$ModifyInstancePlacementResult _build() {
    final _$result = _$v ??
        new _$ModifyInstancePlacementResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyInstancePlacementResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
