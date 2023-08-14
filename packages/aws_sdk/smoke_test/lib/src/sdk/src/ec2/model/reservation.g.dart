// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Reservation extends Reservation {
  @override
  final _i2.BuiltList<GroupIdentifier>? groups;
  @override
  final _i2.BuiltList<Instance>? instances;
  @override
  final String? ownerId;
  @override
  final String? requesterId;
  @override
  final String? reservationId;

  factory _$Reservation([void Function(ReservationBuilder)? updates]) =>
      (new ReservationBuilder()..update(updates))._build();

  _$Reservation._(
      {this.groups,
      this.instances,
      this.ownerId,
      this.requesterId,
      this.reservationId})
      : super._();

  @override
  Reservation rebuild(void Function(ReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationBuilder toBuilder() => new ReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reservation &&
        groups == other.groups &&
        instances == other.instances &&
        ownerId == other.ownerId &&
        requesterId == other.requesterId &&
        reservationId == other.reservationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, requesterId.hashCode);
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservationBuilder implements Builder<Reservation, ReservationBuilder> {
  _$Reservation? _$v;

  _i2.ListBuilder<GroupIdentifier>? _groups;
  _i2.ListBuilder<GroupIdentifier> get groups =>
      _$this._groups ??= new _i2.ListBuilder<GroupIdentifier>();
  set groups(_i2.ListBuilder<GroupIdentifier>? groups) =>
      _$this._groups = groups;

  _i2.ListBuilder<Instance>? _instances;
  _i2.ListBuilder<Instance> get instances =>
      _$this._instances ??= new _i2.ListBuilder<Instance>();
  set instances(_i2.ListBuilder<Instance>? instances) =>
      _$this._instances = instances;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _requesterId;
  String? get requesterId => _$this._requesterId;
  set requesterId(String? requesterId) => _$this._requesterId = requesterId;

  String? _reservationId;
  String? get reservationId => _$this._reservationId;
  set reservationId(String? reservationId) =>
      _$this._reservationId = reservationId;

  ReservationBuilder();

  ReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups?.toBuilder();
      _instances = $v.instances?.toBuilder();
      _ownerId = $v.ownerId;
      _requesterId = $v.requesterId;
      _reservationId = $v.reservationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Reservation;
  }

  @override
  void update(void Function(ReservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Reservation build() => _build();

  _$Reservation _build() {
    _$Reservation _$result;
    try {
      _$result = _$v ??
          new _$Reservation._(
              groups: _groups?.build(),
              instances: _instances?.build(),
              ownerId: ownerId,
              requesterId: requesterId,
              reservationId: reservationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Reservation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
