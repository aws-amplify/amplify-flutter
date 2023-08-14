// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_capacity_reservation_fleet_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyCapacityReservationFleetResult
    extends ModifyCapacityReservationFleetResult {
  @override
  final bool return_;

  factory _$ModifyCapacityReservationFleetResult(
          [void Function(ModifyCapacityReservationFleetResultBuilder)?
              updates]) =>
      (new ModifyCapacityReservationFleetResultBuilder()..update(updates))
          ._build();

  _$ModifyCapacityReservationFleetResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyCapacityReservationFleetResult', 'return_');
  }

  @override
  ModifyCapacityReservationFleetResult rebuild(
          void Function(ModifyCapacityReservationFleetResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyCapacityReservationFleetResultBuilder toBuilder() =>
      new ModifyCapacityReservationFleetResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyCapacityReservationFleetResult &&
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

class ModifyCapacityReservationFleetResultBuilder
    implements
        Builder<ModifyCapacityReservationFleetResult,
            ModifyCapacityReservationFleetResultBuilder> {
  _$ModifyCapacityReservationFleetResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyCapacityReservationFleetResultBuilder() {
    ModifyCapacityReservationFleetResult._init(this);
  }

  ModifyCapacityReservationFleetResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyCapacityReservationFleetResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyCapacityReservationFleetResult;
  }

  @override
  void update(
      void Function(ModifyCapacityReservationFleetResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyCapacityReservationFleetResult build() => _build();

  _$ModifyCapacityReservationFleetResult _build() {
    final _$result = _$v ??
        new _$ModifyCapacityReservationFleetResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyCapacityReservationFleetResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
