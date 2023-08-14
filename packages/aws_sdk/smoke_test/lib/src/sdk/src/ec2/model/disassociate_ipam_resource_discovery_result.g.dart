// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_ipam_resource_discovery_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateIpamResourceDiscoveryResult
    extends DisassociateIpamResourceDiscoveryResult {
  @override
  final IpamResourceDiscoveryAssociation? ipamResourceDiscoveryAssociation;

  factory _$DisassociateIpamResourceDiscoveryResult(
          [void Function(DisassociateIpamResourceDiscoveryResultBuilder)?
              updates]) =>
      (new DisassociateIpamResourceDiscoveryResultBuilder()..update(updates))
          ._build();

  _$DisassociateIpamResourceDiscoveryResult._(
      {this.ipamResourceDiscoveryAssociation})
      : super._();

  @override
  DisassociateIpamResourceDiscoveryResult rebuild(
          void Function(DisassociateIpamResourceDiscoveryResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateIpamResourceDiscoveryResultBuilder toBuilder() =>
      new DisassociateIpamResourceDiscoveryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateIpamResourceDiscoveryResult &&
        ipamResourceDiscoveryAssociation ==
            other.ipamResourceDiscoveryAssociation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceDiscoveryAssociation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateIpamResourceDiscoveryResultBuilder
    implements
        Builder<DisassociateIpamResourceDiscoveryResult,
            DisassociateIpamResourceDiscoveryResultBuilder> {
  _$DisassociateIpamResourceDiscoveryResult? _$v;

  IpamResourceDiscoveryAssociationBuilder? _ipamResourceDiscoveryAssociation;
  IpamResourceDiscoveryAssociationBuilder
      get ipamResourceDiscoveryAssociation =>
          _$this._ipamResourceDiscoveryAssociation ??=
              new IpamResourceDiscoveryAssociationBuilder();
  set ipamResourceDiscoveryAssociation(
          IpamResourceDiscoveryAssociationBuilder?
              ipamResourceDiscoveryAssociation) =>
      _$this._ipamResourceDiscoveryAssociation =
          ipamResourceDiscoveryAssociation;

  DisassociateIpamResourceDiscoveryResultBuilder();

  DisassociateIpamResourceDiscoveryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscoveryAssociation =
          $v.ipamResourceDiscoveryAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateIpamResourceDiscoveryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateIpamResourceDiscoveryResult;
  }

  @override
  void update(
      void Function(DisassociateIpamResourceDiscoveryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateIpamResourceDiscoveryResult build() => _build();

  _$DisassociateIpamResourceDiscoveryResult _build() {
    _$DisassociateIpamResourceDiscoveryResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateIpamResourceDiscoveryResult._(
              ipamResourceDiscoveryAssociation:
                  _ipamResourceDiscoveryAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscoveryAssociation';
        _ipamResourceDiscoveryAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateIpamResourceDiscoveryResult',
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
