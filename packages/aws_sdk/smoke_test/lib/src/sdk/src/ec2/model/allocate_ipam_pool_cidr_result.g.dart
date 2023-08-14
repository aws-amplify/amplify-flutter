// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocate_ipam_pool_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocateIpamPoolCidrResult extends AllocateIpamPoolCidrResult {
  @override
  final IpamPoolAllocation? ipamPoolAllocation;

  factory _$AllocateIpamPoolCidrResult(
          [void Function(AllocateIpamPoolCidrResultBuilder)? updates]) =>
      (new AllocateIpamPoolCidrResultBuilder()..update(updates))._build();

  _$AllocateIpamPoolCidrResult._({this.ipamPoolAllocation}) : super._();

  @override
  AllocateIpamPoolCidrResult rebuild(
          void Function(AllocateIpamPoolCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocateIpamPoolCidrResultBuilder toBuilder() =>
      new AllocateIpamPoolCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocateIpamPoolCidrResult &&
        ipamPoolAllocation == other.ipamPoolAllocation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPoolAllocation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllocateIpamPoolCidrResultBuilder
    implements
        Builder<AllocateIpamPoolCidrResult, AllocateIpamPoolCidrResultBuilder> {
  _$AllocateIpamPoolCidrResult? _$v;

  IpamPoolAllocationBuilder? _ipamPoolAllocation;
  IpamPoolAllocationBuilder get ipamPoolAllocation =>
      _$this._ipamPoolAllocation ??= new IpamPoolAllocationBuilder();
  set ipamPoolAllocation(IpamPoolAllocationBuilder? ipamPoolAllocation) =>
      _$this._ipamPoolAllocation = ipamPoolAllocation;

  AllocateIpamPoolCidrResultBuilder();

  AllocateIpamPoolCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPoolAllocation = $v.ipamPoolAllocation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocateIpamPoolCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllocateIpamPoolCidrResult;
  }

  @override
  void update(void Function(AllocateIpamPoolCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocateIpamPoolCidrResult build() => _build();

  _$AllocateIpamPoolCidrResult _build() {
    _$AllocateIpamPoolCidrResult _$result;
    try {
      _$result = _$v ??
          new _$AllocateIpamPoolCidrResult._(
              ipamPoolAllocation: _ipamPoolAllocation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPoolAllocation';
        _ipamPoolAllocation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllocateIpamPoolCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
