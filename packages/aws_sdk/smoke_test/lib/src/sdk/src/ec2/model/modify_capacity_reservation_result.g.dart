// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_capacity_reservation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyCapacityReservationResult
    extends ModifyCapacityReservationResult {
  @override
  final bool return_;

  factory _$ModifyCapacityReservationResult(
          [void Function(ModifyCapacityReservationResultBuilder)? updates]) =>
      (new ModifyCapacityReservationResultBuilder()..update(updates))._build();

  _$ModifyCapacityReservationResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyCapacityReservationResult', 'return_');
  }

  @override
  ModifyCapacityReservationResult rebuild(
          void Function(ModifyCapacityReservationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyCapacityReservationResultBuilder toBuilder() =>
      new ModifyCapacityReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyCapacityReservationResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyCapacityReservationResultBuilder
    implements
        Builder<ModifyCapacityReservationResult,
            ModifyCapacityReservationResultBuilder> {
  _$ModifyCapacityReservationResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyCapacityReservationResultBuilder() {
    ModifyCapacityReservationResult._init(this);
  }

  ModifyCapacityReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyCapacityReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyCapacityReservationResult;
  }

  @override
  void update(void Function(ModifyCapacityReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyCapacityReservationResult build() => _build();

  _$ModifyCapacityReservationResult _build() {
    final _$result = _$v ??
        new _$ModifyCapacityReservationResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyCapacityReservationResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
