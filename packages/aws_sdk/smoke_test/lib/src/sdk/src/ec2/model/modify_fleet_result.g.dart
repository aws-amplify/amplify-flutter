// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_fleet_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyFleetResult extends ModifyFleetResult {
  @override
  final bool return_;

  factory _$ModifyFleetResult(
          [void Function(ModifyFleetResultBuilder)? updates]) =>
      (new ModifyFleetResultBuilder()..update(updates))._build();

  _$ModifyFleetResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyFleetResult', 'return_');
  }

  @override
  ModifyFleetResult rebuild(void Function(ModifyFleetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyFleetResultBuilder toBuilder() =>
      new ModifyFleetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyFleetResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyFleetResultBuilder
    implements Builder<ModifyFleetResult, ModifyFleetResultBuilder> {
  _$ModifyFleetResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyFleetResultBuilder() {
    ModifyFleetResult._init(this);
  }

  ModifyFleetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyFleetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyFleetResult;
  }

  @override
  void update(void Function(ModifyFleetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyFleetResult build() => _build();

  _$ModifyFleetResult _build() {
    final _$result = _$v ??
        new _$ModifyFleetResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyFleetResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
