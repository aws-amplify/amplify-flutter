// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_capacity_reservation_fleets_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCapacityReservationFleetsResult
    extends DescribeCapacityReservationFleetsResult {
  @override
  final _i2.BuiltList<CapacityReservationFleet>? capacityReservationFleets;
  @override
  final String? nextToken;

  factory _$DescribeCapacityReservationFleetsResult(
          [void Function(DescribeCapacityReservationFleetsResultBuilder)?
              updates]) =>
      (new DescribeCapacityReservationFleetsResultBuilder()..update(updates))
          ._build();

  _$DescribeCapacityReservationFleetsResult._(
      {this.capacityReservationFleets, this.nextToken})
      : super._();

  @override
  DescribeCapacityReservationFleetsResult rebuild(
          void Function(DescribeCapacityReservationFleetsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCapacityReservationFleetsResultBuilder toBuilder() =>
      new DescribeCapacityReservationFleetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCapacityReservationFleetsResult &&
        capacityReservationFleets == other.capacityReservationFleets &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationFleets.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCapacityReservationFleetsResultBuilder
    implements
        Builder<DescribeCapacityReservationFleetsResult,
            DescribeCapacityReservationFleetsResultBuilder> {
  _$DescribeCapacityReservationFleetsResult? _$v;

  _i2.ListBuilder<CapacityReservationFleet>? _capacityReservationFleets;
  _i2.ListBuilder<CapacityReservationFleet> get capacityReservationFleets =>
      _$this._capacityReservationFleets ??=
          new _i2.ListBuilder<CapacityReservationFleet>();
  set capacityReservationFleets(
          _i2.ListBuilder<CapacityReservationFleet>?
              capacityReservationFleets) =>
      _$this._capacityReservationFleets = capacityReservationFleets;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeCapacityReservationFleetsResultBuilder();

  DescribeCapacityReservationFleetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationFleets = $v.capacityReservationFleets?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCapacityReservationFleetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCapacityReservationFleetsResult;
  }

  @override
  void update(
      void Function(DescribeCapacityReservationFleetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCapacityReservationFleetsResult build() => _build();

  _$DescribeCapacityReservationFleetsResult _build() {
    _$DescribeCapacityReservationFleetsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeCapacityReservationFleetsResult._(
              capacityReservationFleets: _capacityReservationFleets?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationFleets';
        _capacityReservationFleets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCapacityReservationFleetsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
