// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesResult
    extends DescribeReservedInstancesResult {
  @override
  final _i2.BuiltList<ReservedInstances>? reservedInstances;

  factory _$DescribeReservedInstancesResult(
          [void Function(DescribeReservedInstancesResultBuilder)? updates]) =>
      (new DescribeReservedInstancesResultBuilder()..update(updates))._build();

  _$DescribeReservedInstancesResult._({this.reservedInstances}) : super._();

  @override
  DescribeReservedInstancesResult rebuild(
          void Function(DescribeReservedInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesResultBuilder toBuilder() =>
      new DescribeReservedInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesResult &&
        reservedInstances == other.reservedInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservedInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesResultBuilder
    implements
        Builder<DescribeReservedInstancesResult,
            DescribeReservedInstancesResultBuilder> {
  _$DescribeReservedInstancesResult? _$v;

  _i2.ListBuilder<ReservedInstances>? _reservedInstances;
  _i2.ListBuilder<ReservedInstances> get reservedInstances =>
      _$this._reservedInstances ??= new _i2.ListBuilder<ReservedInstances>();
  set reservedInstances(
          _i2.ListBuilder<ReservedInstances>? reservedInstances) =>
      _$this._reservedInstances = reservedInstances;

  DescribeReservedInstancesResultBuilder();

  DescribeReservedInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservedInstances = $v.reservedInstances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesResult;
  }

  @override
  void update(void Function(DescribeReservedInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesResult build() => _build();

  _$DescribeReservedInstancesResult _build() {
    _$DescribeReservedInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesResult._(
              reservedInstances: _reservedInstances?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstances';
        _reservedInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
