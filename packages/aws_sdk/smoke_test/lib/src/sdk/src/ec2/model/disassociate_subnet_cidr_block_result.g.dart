// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_subnet_cidr_block_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateSubnetCidrBlockResult
    extends DisassociateSubnetCidrBlockResult {
  @override
  final SubnetIpv6CidrBlockAssociation? ipv6CidrBlockAssociation;
  @override
  final String? subnetId;

  factory _$DisassociateSubnetCidrBlockResult(
          [void Function(DisassociateSubnetCidrBlockResultBuilder)? updates]) =>
      (new DisassociateSubnetCidrBlockResultBuilder()..update(updates))
          ._build();

  _$DisassociateSubnetCidrBlockResult._(
      {this.ipv6CidrBlockAssociation, this.subnetId})
      : super._();

  @override
  DisassociateSubnetCidrBlockResult rebuild(
          void Function(DisassociateSubnetCidrBlockResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateSubnetCidrBlockResultBuilder toBuilder() =>
      new DisassociateSubnetCidrBlockResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateSubnetCidrBlockResult &&
        ipv6CidrBlockAssociation == other.ipv6CidrBlockAssociation &&
        subnetId == other.subnetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6CidrBlockAssociation.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateSubnetCidrBlockResultBuilder
    implements
        Builder<DisassociateSubnetCidrBlockResult,
            DisassociateSubnetCidrBlockResultBuilder> {
  _$DisassociateSubnetCidrBlockResult? _$v;

  SubnetIpv6CidrBlockAssociationBuilder? _ipv6CidrBlockAssociation;
  SubnetIpv6CidrBlockAssociationBuilder get ipv6CidrBlockAssociation =>
      _$this._ipv6CidrBlockAssociation ??=
          new SubnetIpv6CidrBlockAssociationBuilder();
  set ipv6CidrBlockAssociation(
          SubnetIpv6CidrBlockAssociationBuilder? ipv6CidrBlockAssociation) =>
      _$this._ipv6CidrBlockAssociation = ipv6CidrBlockAssociation;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  DisassociateSubnetCidrBlockResultBuilder();

  DisassociateSubnetCidrBlockResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6CidrBlockAssociation = $v.ipv6CidrBlockAssociation?.toBuilder();
      _subnetId = $v.subnetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateSubnetCidrBlockResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateSubnetCidrBlockResult;
  }

  @override
  void update(
      void Function(DisassociateSubnetCidrBlockResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateSubnetCidrBlockResult build() => _build();

  _$DisassociateSubnetCidrBlockResult _build() {
    _$DisassociateSubnetCidrBlockResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateSubnetCidrBlockResult._(
              ipv6CidrBlockAssociation: _ipv6CidrBlockAssociation?.build(),
              subnetId: subnetId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockAssociation';
        _ipv6CidrBlockAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateSubnetCidrBlockResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
