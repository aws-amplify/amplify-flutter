// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprovision_ipam_pool_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeprovisionIpamPoolCidrResult extends DeprovisionIpamPoolCidrResult {
  @override
  final IpamPoolCidr? ipamPoolCidr;

  factory _$DeprovisionIpamPoolCidrResult(
          [void Function(DeprovisionIpamPoolCidrResultBuilder)? updates]) =>
      (new DeprovisionIpamPoolCidrResultBuilder()..update(updates))._build();

  _$DeprovisionIpamPoolCidrResult._({this.ipamPoolCidr}) : super._();

  @override
  DeprovisionIpamPoolCidrResult rebuild(
          void Function(DeprovisionIpamPoolCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprovisionIpamPoolCidrResultBuilder toBuilder() =>
      new DeprovisionIpamPoolCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprovisionIpamPoolCidrResult &&
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

class DeprovisionIpamPoolCidrResultBuilder
    implements
        Builder<DeprovisionIpamPoolCidrResult,
            DeprovisionIpamPoolCidrResultBuilder> {
  _$DeprovisionIpamPoolCidrResult? _$v;

  IpamPoolCidrBuilder? _ipamPoolCidr;
  IpamPoolCidrBuilder get ipamPoolCidr =>
      _$this._ipamPoolCidr ??= new IpamPoolCidrBuilder();
  set ipamPoolCidr(IpamPoolCidrBuilder? ipamPoolCidr) =>
      _$this._ipamPoolCidr = ipamPoolCidr;

  DeprovisionIpamPoolCidrResultBuilder();

  DeprovisionIpamPoolCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPoolCidr = $v.ipamPoolCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeprovisionIpamPoolCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprovisionIpamPoolCidrResult;
  }

  @override
  void update(void Function(DeprovisionIpamPoolCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeprovisionIpamPoolCidrResult build() => _build();

  _$DeprovisionIpamPoolCidrResult _build() {
    _$DeprovisionIpamPoolCidrResult _$result;
    try {
      _$result = _$v ??
          new _$DeprovisionIpamPoolCidrResult._(
              ipamPoolCidr: _ipamPoolCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPoolCidr';
        _ipamPoolCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeprovisionIpamPoolCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
