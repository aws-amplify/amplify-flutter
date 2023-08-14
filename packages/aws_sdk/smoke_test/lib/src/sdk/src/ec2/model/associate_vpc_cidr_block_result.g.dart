// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_vpc_cidr_block_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateVpcCidrBlockResult extends AssociateVpcCidrBlockResult {
  @override
  final VpcIpv6CidrBlockAssociation? ipv6CidrBlockAssociation;
  @override
  final VpcCidrBlockAssociation? cidrBlockAssociation;
  @override
  final String? vpcId;

  factory _$AssociateVpcCidrBlockResult(
          [void Function(AssociateVpcCidrBlockResultBuilder)? updates]) =>
      (new AssociateVpcCidrBlockResultBuilder()..update(updates))._build();

  _$AssociateVpcCidrBlockResult._(
      {this.ipv6CidrBlockAssociation, this.cidrBlockAssociation, this.vpcId})
      : super._();

  @override
  AssociateVpcCidrBlockResult rebuild(
          void Function(AssociateVpcCidrBlockResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateVpcCidrBlockResultBuilder toBuilder() =>
      new AssociateVpcCidrBlockResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateVpcCidrBlockResult &&
        ipv6CidrBlockAssociation == other.ipv6CidrBlockAssociation &&
        cidrBlockAssociation == other.cidrBlockAssociation &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6CidrBlockAssociation.hashCode);
    _$hash = $jc(_$hash, cidrBlockAssociation.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateVpcCidrBlockResultBuilder
    implements
        Builder<AssociateVpcCidrBlockResult,
            AssociateVpcCidrBlockResultBuilder> {
  _$AssociateVpcCidrBlockResult? _$v;

  VpcIpv6CidrBlockAssociationBuilder? _ipv6CidrBlockAssociation;
  VpcIpv6CidrBlockAssociationBuilder get ipv6CidrBlockAssociation =>
      _$this._ipv6CidrBlockAssociation ??=
          new VpcIpv6CidrBlockAssociationBuilder();
  set ipv6CidrBlockAssociation(
          VpcIpv6CidrBlockAssociationBuilder? ipv6CidrBlockAssociation) =>
      _$this._ipv6CidrBlockAssociation = ipv6CidrBlockAssociation;

  VpcCidrBlockAssociationBuilder? _cidrBlockAssociation;
  VpcCidrBlockAssociationBuilder get cidrBlockAssociation =>
      _$this._cidrBlockAssociation ??= new VpcCidrBlockAssociationBuilder();
  set cidrBlockAssociation(
          VpcCidrBlockAssociationBuilder? cidrBlockAssociation) =>
      _$this._cidrBlockAssociation = cidrBlockAssociation;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  AssociateVpcCidrBlockResultBuilder();

  AssociateVpcCidrBlockResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6CidrBlockAssociation = $v.ipv6CidrBlockAssociation?.toBuilder();
      _cidrBlockAssociation = $v.cidrBlockAssociation?.toBuilder();
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateVpcCidrBlockResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateVpcCidrBlockResult;
  }

  @override
  void update(void Function(AssociateVpcCidrBlockResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateVpcCidrBlockResult build() => _build();

  _$AssociateVpcCidrBlockResult _build() {
    _$AssociateVpcCidrBlockResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateVpcCidrBlockResult._(
              ipv6CidrBlockAssociation: _ipv6CidrBlockAssociation?.build(),
              cidrBlockAssociation: _cidrBlockAssociation?.build(),
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockAssociation';
        _ipv6CidrBlockAssociation?.build();
        _$failedField = 'cidrBlockAssociation';
        _cidrBlockAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateVpcCidrBlockResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
