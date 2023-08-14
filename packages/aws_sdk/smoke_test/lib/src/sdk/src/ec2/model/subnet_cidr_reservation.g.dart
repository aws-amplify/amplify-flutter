// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subnet_cidr_reservation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubnetCidrReservation extends SubnetCidrReservation {
  @override
  final String? subnetCidrReservationId;
  @override
  final String? subnetId;
  @override
  final String? cidr;
  @override
  final SubnetCidrReservationType? reservationType;
  @override
  final String? ownerId;
  @override
  final String? description;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$SubnetCidrReservation(
          [void Function(SubnetCidrReservationBuilder)? updates]) =>
      (new SubnetCidrReservationBuilder()..update(updates))._build();

  _$SubnetCidrReservation._(
      {this.subnetCidrReservationId,
      this.subnetId,
      this.cidr,
      this.reservationType,
      this.ownerId,
      this.description,
      this.tags})
      : super._();

  @override
  SubnetCidrReservation rebuild(
          void Function(SubnetCidrReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubnetCidrReservationBuilder toBuilder() =>
      new SubnetCidrReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubnetCidrReservation &&
        subnetCidrReservationId == other.subnetCidrReservationId &&
        subnetId == other.subnetId &&
        cidr == other.cidr &&
        reservationType == other.reservationType &&
        ownerId == other.ownerId &&
        description == other.description &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetCidrReservationId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, reservationType.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubnetCidrReservationBuilder
    implements Builder<SubnetCidrReservation, SubnetCidrReservationBuilder> {
  _$SubnetCidrReservation? _$v;

  String? _subnetCidrReservationId;
  String? get subnetCidrReservationId => _$this._subnetCidrReservationId;
  set subnetCidrReservationId(String? subnetCidrReservationId) =>
      _$this._subnetCidrReservationId = subnetCidrReservationId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  SubnetCidrReservationType? _reservationType;
  SubnetCidrReservationType? get reservationType => _$this._reservationType;
  set reservationType(SubnetCidrReservationType? reservationType) =>
      _$this._reservationType = reservationType;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  SubnetCidrReservationBuilder();

  SubnetCidrReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetCidrReservationId = $v.subnetCidrReservationId;
      _subnetId = $v.subnetId;
      _cidr = $v.cidr;
      _reservationType = $v.reservationType;
      _ownerId = $v.ownerId;
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubnetCidrReservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubnetCidrReservation;
  }

  @override
  void update(void Function(SubnetCidrReservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubnetCidrReservation build() => _build();

  _$SubnetCidrReservation _build() {
    _$SubnetCidrReservation _$result;
    try {
      _$result = _$v ??
          new _$SubnetCidrReservation._(
              subnetCidrReservationId: subnetCidrReservationId,
              subnetId: subnetId,
              cidr: cidr,
              reservationType: reservationType,
              ownerId: ownerId,
              description: description,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SubnetCidrReservation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
