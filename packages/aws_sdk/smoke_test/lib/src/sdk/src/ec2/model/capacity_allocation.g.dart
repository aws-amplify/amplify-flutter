// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capacity_allocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityAllocation extends CapacityAllocation {
  @override
  final AllocationType? allocationType;
  @override
  final int count;

  factory _$CapacityAllocation(
          [void Function(CapacityAllocationBuilder)? updates]) =>
      (new CapacityAllocationBuilder()..update(updates))._build();

  _$CapacityAllocation._({this.allocationType, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, r'CapacityAllocation', 'count');
  }

  @override
  CapacityAllocation rebuild(
          void Function(CapacityAllocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityAllocationBuilder toBuilder() =>
      new CapacityAllocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityAllocation &&
        allocationType == other.allocationType &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationType.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityAllocationBuilder
    implements Builder<CapacityAllocation, CapacityAllocationBuilder> {
  _$CapacityAllocation? _$v;

  AllocationType? _allocationType;
  AllocationType? get allocationType => _$this._allocationType;
  set allocationType(AllocationType? allocationType) =>
      _$this._allocationType = allocationType;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  CapacityAllocationBuilder() {
    CapacityAllocation._init(this);
  }

  CapacityAllocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationType = $v.allocationType;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityAllocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityAllocation;
  }

  @override
  void update(void Function(CapacityAllocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityAllocation build() => _build();

  _$CapacityAllocation _build() {
    final _$result = _$v ??
        new _$CapacityAllocation._(
            allocationType: allocationType,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'CapacityAllocation', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
