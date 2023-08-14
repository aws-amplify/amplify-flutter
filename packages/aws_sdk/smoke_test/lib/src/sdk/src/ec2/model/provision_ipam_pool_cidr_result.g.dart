// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_ipam_pool_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionIpamPoolCidrResult extends ProvisionIpamPoolCidrResult {
  @override
  final IpamPoolCidr? ipamPoolCidr;

  factory _$ProvisionIpamPoolCidrResult(
          [void Function(ProvisionIpamPoolCidrResultBuilder)? updates]) =>
      (new ProvisionIpamPoolCidrResultBuilder()..update(updates))._build();

  _$ProvisionIpamPoolCidrResult._({this.ipamPoolCidr}) : super._();

  @override
  ProvisionIpamPoolCidrResult rebuild(
          void Function(ProvisionIpamPoolCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionIpamPoolCidrResultBuilder toBuilder() =>
      new ProvisionIpamPoolCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionIpamPoolCidrResult &&
        ipamPoolCidr == other.ipamPoolCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPoolCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionIpamPoolCidrResultBuilder
    implements
        Builder<ProvisionIpamPoolCidrResult,
            ProvisionIpamPoolCidrResultBuilder> {
  _$ProvisionIpamPoolCidrResult? _$v;

  IpamPoolCidrBuilder? _ipamPoolCidr;
  IpamPoolCidrBuilder get ipamPoolCidr =>
      _$this._ipamPoolCidr ??= new IpamPoolCidrBuilder();
  set ipamPoolCidr(IpamPoolCidrBuilder? ipamPoolCidr) =>
      _$this._ipamPoolCidr = ipamPoolCidr;

  ProvisionIpamPoolCidrResultBuilder();

  ProvisionIpamPoolCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPoolCidr = $v.ipamPoolCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionIpamPoolCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionIpamPoolCidrResult;
  }

  @override
  void update(void Function(ProvisionIpamPoolCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionIpamPoolCidrResult build() => _build();

  _$ProvisionIpamPoolCidrResult _build() {
    _$ProvisionIpamPoolCidrResult _$result;
    try {
      _$result = _$v ??
          new _$ProvisionIpamPoolCidrResult._(
              ipamPoolCidr: _ipamPoolCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPoolCidr';
        _ipamPoolCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProvisionIpamPoolCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
