// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_instances_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesId extends ReservedInstancesId {
  @override
  final String? reservedInstancesId;

  factory _$ReservedInstancesId(
          [void Function(ReservedInstancesIdBuilder)? updates]) =>
      (new ReservedInstancesIdBuilder()..update(updates))._build();

  _$ReservedInstancesId._({this.reservedInstancesId}) : super._();

  @override
  ReservedInstancesId rebuild(
          void Function(ReservedInstancesIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesIdBuilder toBuilder() =>
      new ReservedInstancesIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesId &&
        reservedInstancesId == other.reservedInstancesId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesIdBuilder
    implements Builder<ReservedInstancesId, ReservedInstancesIdBuilder> {
  _$ReservedInstancesId? _$v;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  ReservedInstancesIdBuilder();

  ReservedInstancesIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesId = $v.reservedInstancesId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesId;
  }

  @override
  void update(void Function(ReservedInstancesIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesId build() => _build();

  _$ReservedInstancesId _build() {
    final _$result = _$v ??
        new _$ReservedInstancesId._(reservedInstancesId: reservedInstancesId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
