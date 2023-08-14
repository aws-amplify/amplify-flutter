// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_placement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesPlacement extends ScheduledInstancesPlacement {
  @override
  final String? availabilityZone;
  @override
  final String? groupName;

  factory _$ScheduledInstancesPlacement(
          [void Function(ScheduledInstancesPlacementBuilder)? updates]) =>
      (new ScheduledInstancesPlacementBuilder()..update(updates))._build();

  _$ScheduledInstancesPlacement._({this.availabilityZone, this.groupName})
      : super._();

  @override
  ScheduledInstancesPlacement rebuild(
          void Function(ScheduledInstancesPlacementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesPlacementBuilder toBuilder() =>
      new ScheduledInstancesPlacementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesPlacement &&
        availabilityZone == other.availabilityZone &&
        groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesPlacementBuilder
    implements
        Builder<ScheduledInstancesPlacement,
            ScheduledInstancesPlacementBuilder> {
  _$ScheduledInstancesPlacement? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  ScheduledInstancesPlacementBuilder();

  ScheduledInstancesPlacementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesPlacement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesPlacement;
  }

  @override
  void update(void Function(ScheduledInstancesPlacementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesPlacement build() => _build();

  _$ScheduledInstancesPlacement _build() {
    final _$result = _$v ??
        new _$ScheduledInstancesPlacement._(
            availabilityZone: availabilityZone, groupName: groupName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
