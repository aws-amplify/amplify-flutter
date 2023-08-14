// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subnet_cidr_reservations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSubnetCidrReservationsResult
    extends GetSubnetCidrReservationsResult {
  @override
  final _i2.BuiltList<SubnetCidrReservation>? subnetIpv4CidrReservations;
  @override
  final _i2.BuiltList<SubnetCidrReservation>? subnetIpv6CidrReservations;
  @override
  final String? nextToken;

  factory _$GetSubnetCidrReservationsResult(
          [void Function(GetSubnetCidrReservationsResultBuilder)? updates]) =>
      (new GetSubnetCidrReservationsResultBuilder()..update(updates))._build();

  _$GetSubnetCidrReservationsResult._(
      {this.subnetIpv4CidrReservations,
      this.subnetIpv6CidrReservations,
      this.nextToken})
      : super._();

  @override
  GetSubnetCidrReservationsResult rebuild(
          void Function(GetSubnetCidrReservationsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSubnetCidrReservationsResultBuilder toBuilder() =>
      new GetSubnetCidrReservationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubnetCidrReservationsResult &&
        subnetIpv4CidrReservations == other.subnetIpv4CidrReservations &&
        subnetIpv6CidrReservations == other.subnetIpv6CidrReservations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetIpv4CidrReservations.hashCode);
    _$hash = $jc(_$hash, subnetIpv6CidrReservations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSubnetCidrReservationsResultBuilder
    implements
        Builder<GetSubnetCidrReservationsResult,
            GetSubnetCidrReservationsResultBuilder> {
  _$GetSubnetCidrReservationsResult? _$v;

  _i2.ListBuilder<SubnetCidrReservation>? _subnetIpv4CidrReservations;
  _i2.ListBuilder<SubnetCidrReservation> get subnetIpv4CidrReservations =>
      _$this._subnetIpv4CidrReservations ??=
          new _i2.ListBuilder<SubnetCidrReservation>();
  set subnetIpv4CidrReservations(
          _i2.ListBuilder<SubnetCidrReservation>? subnetIpv4CidrReservations) =>
      _$this._subnetIpv4CidrReservations = subnetIpv4CidrReservations;

  _i2.ListBuilder<SubnetCidrReservation>? _subnetIpv6CidrReservations;
  _i2.ListBuilder<SubnetCidrReservation> get subnetIpv6CidrReservations =>
      _$this._subnetIpv6CidrReservations ??=
          new _i2.ListBuilder<SubnetCidrReservation>();
  set subnetIpv6CidrReservations(
          _i2.ListBuilder<SubnetCidrReservation>? subnetIpv6CidrReservations) =>
      _$this._subnetIpv6CidrReservations = subnetIpv6CidrReservations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetSubnetCidrReservationsResultBuilder();

  GetSubnetCidrReservationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetIpv4CidrReservations = $v.subnetIpv4CidrReservations?.toBuilder();
      _subnetIpv6CidrReservations = $v.subnetIpv6CidrReservations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubnetCidrReservationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSubnetCidrReservationsResult;
  }

  @override
  void update(void Function(GetSubnetCidrReservationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubnetCidrReservationsResult build() => _build();

  _$GetSubnetCidrReservationsResult _build() {
    _$GetSubnetCidrReservationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetSubnetCidrReservationsResult._(
              subnetIpv4CidrReservations: _subnetIpv4CidrReservations?.build(),
              subnetIpv6CidrReservations: _subnetIpv6CidrReservations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIpv4CidrReservations';
        _subnetIpv4CidrReservations?.build();
        _$failedField = 'subnetIpv6CidrReservations';
        _subnetIpv6CidrReservations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSubnetCidrReservationsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
