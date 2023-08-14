// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_ipam_resource_discovery_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateIpamResourceDiscoveryResult
    extends AssociateIpamResourceDiscoveryResult {
  @override
  final IpamResourceDiscoveryAssociation? ipamResourceDiscoveryAssociation;

  factory _$AssociateIpamResourceDiscoveryResult(
          [void Function(AssociateIpamResourceDiscoveryResultBuilder)?
              updates]) =>
      (new AssociateIpamResourceDiscoveryResultBuilder()..update(updates))
          ._build();

  _$AssociateIpamResourceDiscoveryResult._(
      {this.ipamResourceDiscoveryAssociation})
      : super._();

  @override
  AssociateIpamResourceDiscoveryResult rebuild(
          void Function(AssociateIpamResourceDiscoveryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateIpamResourceDiscoveryResultBuilder toBuilder() =>
      new AssociateIpamResourceDiscoveryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateIpamResourceDiscoveryResult &&
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

class AssociateIpamResourceDiscoveryResultBuilder
    implements
        Builder<AssociateIpamResourceDiscoveryResult,
            AssociateIpamResourceDiscoveryResultBuilder> {
  _$AssociateIpamResourceDiscoveryResult? _$v;

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

  AssociateIpamResourceDiscoveryResultBuilder();

  AssociateIpamResourceDiscoveryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscoveryAssociation =
          $v.ipamResourceDiscoveryAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateIpamResourceDiscoveryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateIpamResourceDiscoveryResult;
  }

  @override
  void update(
      void Function(AssociateIpamResourceDiscoveryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateIpamResourceDiscoveryResult build() => _build();

  _$AssociateIpamResourceDiscoveryResult _build() {
    _$AssociateIpamResourceDiscoveryResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateIpamResourceDiscoveryResult._(
              ipamResourceDiscoveryAssociation:
                  _ipamResourceDiscoveryAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscoveryAssociation';
        _ipamResourceDiscoveryAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateIpamResourceDiscoveryResult',
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
