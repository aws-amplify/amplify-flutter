// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_reserved_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyReservedInstancesResult extends ModifyReservedInstancesResult {
  @override
  final String? reservedInstancesModificationId;

  factory _$ModifyReservedInstancesResult(
          [void Function(ModifyReservedInstancesResultBuilder)? updates]) =>
      (new ModifyReservedInstancesResultBuilder()..update(updates))._build();

  _$ModifyReservedInstancesResult._({this.reservedInstancesModificationId})
      : super._();

  @override
  ModifyReservedInstancesResult rebuild(
          void Function(ModifyReservedInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyReservedInstancesResultBuilder toBuilder() =>
      new ModifyReservedInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyReservedInstancesResult &&
        reservedInstancesModificationId ==
            other.reservedInstancesModificationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstancesModificationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyReservedInstancesResultBuilder
    implements
        Builder<ModifyReservedInstancesResult,
            ModifyReservedInstancesResultBuilder> {
  _$ModifyReservedInstancesResult? _$v;

  String? _reservedInstancesModificationId;
  String? get reservedInstancesModificationId =>
      _$this._reservedInstancesModificationId;
  set reservedInstancesModificationId(
          String? reservedInstancesModificationId) =>
      _$this._reservedInstancesModificationId = reservedInstancesModificationId;

  ModifyReservedInstancesResultBuilder();

  ModifyReservedInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstancesModificationId = $v.reservedInstancesModificationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyReservedInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyReservedInstancesResult;
  }

  @override
  void update(void Function(ModifyReservedInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyReservedInstancesResult build() => _build();

  _$ModifyReservedInstancesResult _build() {
    final _$result = _$v ??
        new _$ModifyReservedInstancesResult._(
            reservedInstancesModificationId: reservedInstancesModificationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
