// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_subnet_cidr_block_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateSubnetCidrBlockResult extends AssociateSubnetCidrBlockResult {
  @override
  final SubnetIpv6CidrBlockAssociation? ipv6CidrBlockAssociation;
  @override
  final String? subnetId;

  factory _$AssociateSubnetCidrBlockResult(
          [void Function(AssociateSubnetCidrBlockResultBuilder)? updates]) =>
      (new AssociateSubnetCidrBlockResultBuilder()..update(updates))._build();

  _$AssociateSubnetCidrBlockResult._(
      {this.ipv6CidrBlockAssociation, this.subnetId})
      : super._();

  @override
  AssociateSubnetCidrBlockResult rebuild(
          void Function(AssociateSubnetCidrBlockResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateSubnetCidrBlockResultBuilder toBuilder() =>
      new AssociateSubnetCidrBlockResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateSubnetCidrBlockResult &&
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

class AssociateSubnetCidrBlockResultBuilder
    implements
        Builder<AssociateSubnetCidrBlockResult,
            AssociateSubnetCidrBlockResultBuilder> {
  _$AssociateSubnetCidrBlockResult? _$v;

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

  AssociateSubnetCidrBlockResultBuilder();

  AssociateSubnetCidrBlockResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6CidrBlockAssociation = $v.ipv6CidrBlockAssociation?.toBuilder();
      _subnetId = $v.subnetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateSubnetCidrBlockResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateSubnetCidrBlockResult;
  }

  @override
  void update(void Function(AssociateSubnetCidrBlockResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateSubnetCidrBlockResult build() => _build();

  _$AssociateSubnetCidrBlockResult _build() {
    _$AssociateSubnetCidrBlockResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateSubnetCidrBlockResult._(
              ipv6CidrBlockAssociation: _ipv6CidrBlockAssociation?.build(),
              subnetId: subnetId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockAssociation';
        _ipv6CidrBlockAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateSubnetCidrBlockResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
