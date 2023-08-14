// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fleet_success_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFleetSuccessItem extends DeleteFleetSuccessItem {
  @override
  final FleetStateCode? currentFleetState;
  @override
  final FleetStateCode? previousFleetState;
  @override
  final String? fleetId;

  factory _$DeleteFleetSuccessItem(
          [void Function(DeleteFleetSuccessItemBuilder)? updates]) =>
      (new DeleteFleetSuccessItemBuilder()..update(updates))._build();

  _$DeleteFleetSuccessItem._(
      {this.currentFleetState, this.previousFleetState, this.fleetId})
      : super._();

  @override
  DeleteFleetSuccessItem rebuild(
          void Function(DeleteFleetSuccessItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFleetSuccessItemBuilder toBuilder() =>
      new DeleteFleetSuccessItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFleetSuccessItem &&
        currentFleetState == other.currentFleetState &&
        previousFleetState == other.previousFleetState &&
        fleetId == other.fleetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentFleetState.hashCode);
    _$hash = $jc(_$hash, previousFleetState.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFleetSuccessItemBuilder
    implements Builder<DeleteFleetSuccessItem, DeleteFleetSuccessItemBuilder> {
  _$DeleteFleetSuccessItem? _$v;

  FleetStateCode? _currentFleetState;
  FleetStateCode? get currentFleetState => _$this._currentFleetState;
  set currentFleetState(FleetStateCode? currentFleetState) =>
      _$this._currentFleetState = currentFleetState;

  FleetStateCode? _previousFleetState;
  FleetStateCode? get previousFleetState => _$this._previousFleetState;
  set previousFleetState(FleetStateCode? previousFleetState) =>
      _$this._previousFleetState = previousFleetState;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  DeleteFleetSuccessItemBuilder();

  DeleteFleetSuccessItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentFleetState = $v.currentFleetState;
      _previousFleetState = $v.previousFleetState;
      _fleetId = $v.fleetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFleetSuccessItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFleetSuccessItem;
  }

  @override
  void update(void Function(DeleteFleetSuccessItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFleetSuccessItem build() => _build();

  _$DeleteFleetSuccessItem _build() {
    final _$result = _$v ??
        new _$DeleteFleetSuccessItem._(
            currentFleetState: currentFleetState,
            previousFleetState: previousFleetState,
            fleetId: fleetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
