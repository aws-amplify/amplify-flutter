// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_capacity_reservation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelCapacityReservationResult
    extends CancelCapacityReservationResult {
  @override
  final bool return_;

  factory _$CancelCapacityReservationResult(
          [void Function(CancelCapacityReservationResultBuilder)? updates]) =>
      (new CancelCapacityReservationResultBuilder()..update(updates))._build();

  _$CancelCapacityReservationResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'CancelCapacityReservationResult', 'return_');
  }

  @override
  CancelCapacityReservationResult rebuild(
          void Function(CancelCapacityReservationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelCapacityReservationResultBuilder toBuilder() =>
      new CancelCapacityReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelCapacityReservationResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelCapacityReservationResultBuilder
    implements
        Builder<CancelCapacityReservationResult,
            CancelCapacityReservationResultBuilder> {
  _$CancelCapacityReservationResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  CancelCapacityReservationResultBuilder() {
    CancelCapacityReservationResult._init(this);
  }

  CancelCapacityReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelCapacityReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelCapacityReservationResult;
  }

  @override
  void update(void Function(CancelCapacityReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelCapacityReservationResult build() => _build();

  _$CancelCapacityReservationResult _build() {
    final _$result = _$v ??
        new _$CancelCapacityReservationResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'CancelCapacityReservationResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
