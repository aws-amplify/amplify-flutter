// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_resource_discovery_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamResourceDiscoveryResult
    extends ModifyIpamResourceDiscoveryResult {
  @override
  final IpamResourceDiscovery? ipamResourceDiscovery;

  factory _$ModifyIpamResourceDiscoveryResult(
          [void Function(ModifyIpamResourceDiscoveryResultBuilder)? updates]) =>
      (new ModifyIpamResourceDiscoveryResultBuilder()..update(updates))
          ._build();

  _$ModifyIpamResourceDiscoveryResult._({this.ipamResourceDiscovery})
      : super._();

  @override
  ModifyIpamResourceDiscoveryResult rebuild(
          void Function(ModifyIpamResourceDiscoveryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamResourceDiscoveryResultBuilder toBuilder() =>
      new ModifyIpamResourceDiscoveryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamResourceDiscoveryResult &&
        ipamResourceDiscovery == other.ipamResourceDiscovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceDiscovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamResourceDiscoveryResultBuilder
    implements
        Builder<ModifyIpamResourceDiscoveryResult,
            ModifyIpamResourceDiscoveryResultBuilder> {
  _$ModifyIpamResourceDiscoveryResult? _$v;

  IpamResourceDiscoveryBuilder? _ipamResourceDiscovery;
  IpamResourceDiscoveryBuilder get ipamResourceDiscovery =>
      _$this._ipamResourceDiscovery ??= new IpamResourceDiscoveryBuilder();
  set ipamResourceDiscovery(
          IpamResourceDiscoveryBuilder? ipamResourceDiscovery) =>
      _$this._ipamResourceDiscovery = ipamResourceDiscovery;

  ModifyIpamResourceDiscoveryResultBuilder();

  ModifyIpamResourceDiscoveryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscovery = $v.ipamResourceDiscovery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamResourceDiscoveryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamResourceDiscoveryResult;
  }

  @override
  void update(
      void Function(ModifyIpamResourceDiscoveryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamResourceDiscoveryResult build() => _build();

  _$ModifyIpamResourceDiscoveryResult _build() {
    _$ModifyIpamResourceDiscoveryResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyIpamResourceDiscoveryResult._(
              ipamResourceDiscovery: _ipamResourceDiscovery?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscovery';
        _ipamResourceDiscovery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamResourceDiscoveryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
