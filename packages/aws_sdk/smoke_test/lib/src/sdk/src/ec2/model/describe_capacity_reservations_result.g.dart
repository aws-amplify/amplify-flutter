// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_capacity_reservations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCapacityReservationsResult
    extends DescribeCapacityReservationsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<CapacityReservation>? capacityReservations;

  factory _$DescribeCapacityReservationsResult(
          [void Function(DescribeCapacityReservationsResultBuilder)?
              updates]) =>
      (new DescribeCapacityReservationsResultBuilder()..update(updates))
          ._build();

  _$DescribeCapacityReservationsResult._(
      {this.nextToken, this.capacityReservations})
      : super._();

  @override
  DescribeCapacityReservationsResult rebuild(
          void Function(DescribeCapacityReservationsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCapacityReservationsResultBuilder toBuilder() =>
      new DescribeCapacityReservationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCapacityReservationsResult &&
        nextToken == other.nextToken &&
        capacityReservations == other.capacityReservations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, capacityReservations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCapacityReservationsResultBuilder
    implements
        Builder<DescribeCapacityReservationsResult,
            DescribeCapacityReservationsResultBuilder> {
  _$DescribeCapacityReservationsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<CapacityReservation>? _capacityReservations;
  _i2.ListBuilder<CapacityReservation> get capacityReservations =>
      _$this._capacityReservations ??=
          new _i2.ListBuilder<CapacityReservation>();
  set capacityReservations(
          _i2.ListBuilder<CapacityReservation>? capacityReservations) =>
      _$this._capacityReservations = capacityReservations;

  DescribeCapacityReservationsResultBuilder();

  DescribeCapacityReservationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _capacityReservations = $v.capacityReservations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCapacityReservationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCapacityReservationsResult;
  }

  @override
  void update(
      void Function(DescribeCapacityReservationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCapacityReservationsResult build() => _build();

  _$DescribeCapacityReservationsResult _build() {
    _$DescribeCapacityReservationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeCapacityReservationsResult._(
              nextToken: nextToken,
              capacityReservations: _capacityReservations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservations';
        _capacityReservations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCapacityReservationsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
