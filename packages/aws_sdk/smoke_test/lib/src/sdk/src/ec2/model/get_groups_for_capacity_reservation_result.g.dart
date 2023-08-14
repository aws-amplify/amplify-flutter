// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_for_capacity_reservation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupsForCapacityReservationResult
    extends GetGroupsForCapacityReservationResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<CapacityReservationGroup>? capacityReservationGroups;

  factory _$GetGroupsForCapacityReservationResult(
          [void Function(GetGroupsForCapacityReservationResultBuilder)?
              updates]) =>
      (new GetGroupsForCapacityReservationResultBuilder()..update(updates))
          ._build();

  _$GetGroupsForCapacityReservationResult._(
      {this.nextToken, this.capacityReservationGroups})
      : super._();

  @override
  GetGroupsForCapacityReservationResult rebuild(
          void Function(GetGroupsForCapacityReservationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupsForCapacityReservationResultBuilder toBuilder() =>
      new GetGroupsForCapacityReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupsForCapacityReservationResult &&
        nextToken == other.nextToken &&
        capacityReservationGroups == other.capacityReservationGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, capacityReservationGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetGroupsForCapacityReservationResultBuilder
    implements
        Builder<GetGroupsForCapacityReservationResult,
            GetGroupsForCapacityReservationResultBuilder> {
  _$GetGroupsForCapacityReservationResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<CapacityReservationGroup>? _capacityReservationGroups;
  _i2.ListBuilder<CapacityReservationGroup> get capacityReservationGroups =>
      _$this._capacityReservationGroups ??=
          new _i2.ListBuilder<CapacityReservationGroup>();
  set capacityReservationGroups(
          _i2.ListBuilder<CapacityReservationGroup>?
              capacityReservationGroups) =>
      _$this._capacityReservationGroups = capacityReservationGroups;

  GetGroupsForCapacityReservationResultBuilder();

  GetGroupsForCapacityReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _capacityReservationGroups = $v.capacityReservationGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupsForCapacityReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupsForCapacityReservationResult;
  }

  @override
  void update(
      void Function(GetGroupsForCapacityReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupsForCapacityReservationResult build() => _build();

  _$GetGroupsForCapacityReservationResult _build() {
    _$GetGroupsForCapacityReservationResult _$result;
    try {
      _$result = _$v ??
          new _$GetGroupsForCapacityReservationResult._(
              nextToken: nextToken,
              capacityReservationGroups: _capacityReservationGroups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationGroups';
        _capacityReservationGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetGroupsForCapacityReservationResult',
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
