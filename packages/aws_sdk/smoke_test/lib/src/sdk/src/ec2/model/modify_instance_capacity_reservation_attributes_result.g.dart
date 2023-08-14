// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_capacity_reservation_attributes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceCapacityReservationAttributesResult
    extends ModifyInstanceCapacityReservationAttributesResult {
  @override
  final bool return_;

  factory _$ModifyInstanceCapacityReservationAttributesResult(
          [void Function(
                  ModifyInstanceCapacityReservationAttributesResultBuilder)?
              updates]) =>
      (new ModifyInstanceCapacityReservationAttributesResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyInstanceCapacityReservationAttributesResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(return_,
        r'ModifyInstanceCapacityReservationAttributesResult', 'return_');
  }

  @override
  ModifyInstanceCapacityReservationAttributesResult rebuild(
          void Function(
                  ModifyInstanceCapacityReservationAttributesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceCapacityReservationAttributesResultBuilder toBuilder() =>
      new ModifyInstanceCapacityReservationAttributesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceCapacityReservationAttributesResult &&
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

class ModifyInstanceCapacityReservationAttributesResultBuilder
    implements
        Builder<ModifyInstanceCapacityReservationAttributesResult,
            ModifyInstanceCapacityReservationAttributesResultBuilder> {
  _$ModifyInstanceCapacityReservationAttributesResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyInstanceCapacityReservationAttributesResultBuilder() {
    ModifyInstanceCapacityReservationAttributesResult._init(this);
  }

  ModifyInstanceCapacityReservationAttributesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceCapacityReservationAttributesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceCapacityReservationAttributesResult;
  }

  @override
  void update(
      void Function(ModifyInstanceCapacityReservationAttributesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceCapacityReservationAttributesResult build() => _build();

  _$ModifyInstanceCapacityReservationAttributesResult _build() {
    final _$result = _$v ??
        new _$ModifyInstanceCapacityReservationAttributesResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_,
                r'ModifyInstanceCapacityReservationAttributesResult',
                'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
