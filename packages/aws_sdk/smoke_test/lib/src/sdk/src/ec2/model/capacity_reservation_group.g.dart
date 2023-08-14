// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_reservation_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationGroup extends CapacityReservationGroup {
  @override
  final String? groupArn;
  @override
  final String? ownerId;

  factory _$CapacityReservationGroup(
          [void Function(CapacityReservationGroupBuilder)? updates]) =>
      (new CapacityReservationGroupBuilder()..update(updates))._build();

  _$CapacityReservationGroup._({this.groupArn, this.ownerId}) : super._();

  @override
  CapacityReservationGroup rebuild(
          void Function(CapacityReservationGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationGroupBuilder toBuilder() =>
      new CapacityReservationGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationGroup &&
        groupArn == other.groupArn &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationGroupBuilder
    implements
        Builder<CapacityReservationGroup, CapacityReservationGroupBuilder> {
  _$CapacityReservationGroup? _$v;

  String? _groupArn;
  String? get groupArn => _$this._groupArn;
  set groupArn(String? groupArn) => _$this._groupArn = groupArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  CapacityReservationGroupBuilder();

  CapacityReservationGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupArn = $v.groupArn;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationGroup;
  }

  @override
  void update(void Function(CapacityReservationGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationGroup build() => _build();

  _$CapacityReservationGroup _build() {
    final _$result = _$v ??
        new _$CapacityReservationGroup._(groupArn: groupArn, ownerId: ownerId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
