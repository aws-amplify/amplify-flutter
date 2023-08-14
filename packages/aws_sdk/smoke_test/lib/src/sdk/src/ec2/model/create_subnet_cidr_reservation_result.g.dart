// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subnet_cidr_reservation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSubnetCidrReservationResult
    extends CreateSubnetCidrReservationResult {
  @override
  final SubnetCidrReservation? subnetCidrReservation;

  factory _$CreateSubnetCidrReservationResult(
          [void Function(CreateSubnetCidrReservationResultBuilder)? updates]) =>
      (new CreateSubnetCidrReservationResultBuilder()..update(updates))
          ._build();

  _$CreateSubnetCidrReservationResult._({this.subnetCidrReservation})
      : super._();

  @override
  CreateSubnetCidrReservationResult rebuild(
          void Function(CreateSubnetCidrReservationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSubnetCidrReservationResultBuilder toBuilder() =>
      new CreateSubnetCidrReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSubnetCidrReservationResult &&
        subnetCidrReservation == other.subnetCidrReservation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetCidrReservation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSubnetCidrReservationResultBuilder
    implements
        Builder<CreateSubnetCidrReservationResult,
            CreateSubnetCidrReservationResultBuilder> {
  _$CreateSubnetCidrReservationResult? _$v;

  SubnetCidrReservationBuilder? _subnetCidrReservation;
  SubnetCidrReservationBuilder get subnetCidrReservation =>
      _$this._subnetCidrReservation ??= new SubnetCidrReservationBuilder();
  set subnetCidrReservation(
          SubnetCidrReservationBuilder? subnetCidrReservation) =>
      _$this._subnetCidrReservation = subnetCidrReservation;

  CreateSubnetCidrReservationResultBuilder();

  CreateSubnetCidrReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetCidrReservation = $v.subnetCidrReservation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSubnetCidrReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSubnetCidrReservationResult;
  }

  @override
  void update(
      void Function(CreateSubnetCidrReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSubnetCidrReservationResult build() => _build();

  _$CreateSubnetCidrReservationResult _build() {
    _$CreateSubnetCidrReservationResult _$result;
    try {
      _$result = _$v ??
          new _$CreateSubnetCidrReservationResult._(
              subnetCidrReservation: _subnetCidrReservation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetCidrReservation';
        _subnetCidrReservation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSubnetCidrReservationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
