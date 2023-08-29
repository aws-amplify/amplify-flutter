// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_resource_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamResourceCidrResult extends ModifyIpamResourceCidrResult {
  @override
  final IpamResourceCidr? ipamResourceCidr;

  factory _$ModifyIpamResourceCidrResult(
          [void Function(ModifyIpamResourceCidrResultBuilder)? updates]) =>
      (new ModifyIpamResourceCidrResultBuilder()..update(updates))._build();

  _$ModifyIpamResourceCidrResult._({this.ipamResourceCidr}) : super._();

  @override
  ModifyIpamResourceCidrResult rebuild(
          void Function(ModifyIpamResourceCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamResourceCidrResultBuilder toBuilder() =>
      new ModifyIpamResourceCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamResourceCidrResult &&
        ipamResourceCidr == other.ipamResourceCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamResourceCidrResultBuilder
    implements
        Builder<ModifyIpamResourceCidrResult,
            ModifyIpamResourceCidrResultBuilder> {
  _$ModifyIpamResourceCidrResult? _$v;

  IpamResourceCidrBuilder? _ipamResourceCidr;
  IpamResourceCidrBuilder get ipamResourceCidr =>
      _$this._ipamResourceCidr ??= new IpamResourceCidrBuilder();
  set ipamResourceCidr(IpamResourceCidrBuilder? ipamResourceCidr) =>
      _$this._ipamResourceCidr = ipamResourceCidr;

  ModifyIpamResourceCidrResultBuilder();

  ModifyIpamResourceCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceCidr = $v.ipamResourceCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamResourceCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamResourceCidrResult;
  }

  @override
  void update(void Function(ModifyIpamResourceCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamResourceCidrResult build() => _build();

  _$ModifyIpamResourceCidrResult _build() {
    _$ModifyIpamResourceCidrResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyIpamResourceCidrResult._(
              ipamResourceCidr: _ipamResourceCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceCidr';
        _ipamResourceCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamResourceCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
