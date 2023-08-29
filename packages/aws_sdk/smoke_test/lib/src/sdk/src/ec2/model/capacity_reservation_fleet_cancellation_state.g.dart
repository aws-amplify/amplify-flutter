// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_fleet_cancellation_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationFleetCancellationState
    extends CapacityReservationFleetCancellationState {
  @override
  final CapacityReservationFleetState? currentFleetState;
  @override
  final CapacityReservationFleetState? previousFleetState;
  @override
  final String? capacityReservationFleetId;

  factory _$CapacityReservationFleetCancellationState(
          [void Function(CapacityReservationFleetCancellationStateBuilder)?
              updates]) =>
      (new CapacityReservationFleetCancellationStateBuilder()..update(updates))
          ._build();

  _$CapacityReservationFleetCancellationState._(
      {this.currentFleetState,
      this.previousFleetState,
      this.capacityReservationFleetId})
      : super._();

  @override
  CapacityReservationFleetCancellationState rebuild(
          void Function(CapacityReservationFleetCancellationStateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationFleetCancellationStateBuilder toBuilder() =>
      new CapacityReservationFleetCancellationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationFleetCancellationState &&
        currentFleetState == other.currentFleetState &&
        previousFleetState == other.previousFleetState &&
        capacityReservationFleetId == other.capacityReservationFleetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentFleetState.hashCode);
    _$hash = $jc(_$hash, previousFleetState.hashCode);
    _$hash = $jc(_$hash, capacityReservationFleetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationFleetCancellationStateBuilder
    implements
        Builder<CapacityReservationFleetCancellationState,
            CapacityReservationFleetCancellationStateBuilder> {
  _$CapacityReservationFleetCancellationState? _$v;

  CapacityReservationFleetState? _currentFleetState;
  CapacityReservationFleetState? get currentFleetState =>
      _$this._currentFleetState;
  set currentFleetState(CapacityReservationFleetState? currentFleetState) =>
      _$this._currentFleetState = currentFleetState;

  CapacityReservationFleetState? _previousFleetState;
  CapacityReservationFleetState? get previousFleetState =>
      _$this._previousFleetState;
  set previousFleetState(CapacityReservationFleetState? previousFleetState) =>
      _$this._previousFleetState = previousFleetState;

  String? _capacityReservationFleetId;
  String? get capacityReservationFleetId => _$this._capacityReservationFleetId;
  set capacityReservationFleetId(String? capacityReservationFleetId) =>
      _$this._capacityReservationFleetId = capacityReservationFleetId;

  CapacityReservationFleetCancellationStateBuilder();

  CapacityReservationFleetCancellationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentFleetState = $v.currentFleetState;
      _previousFleetState = $v.previousFleetState;
      _capacityReservationFleetId = $v.capacityReservationFleetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationFleetCancellationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationFleetCancellationState;
  }

  @override
  void update(
      void Function(CapacityReservationFleetCancellationStateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationFleetCancellationState build() => _build();

  _$CapacityReservationFleetCancellationState _build() {
    final _$result = _$v ??
        new _$CapacityReservationFleetCancellationState._(
            currentFleetState: currentFleetState,
            previousFleetState: previousFleetState,
            capacityReservationFleetId: capacityReservationFleetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
