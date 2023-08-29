// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_ipv6_cidr_block_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcIpv6CidrBlockAssociation extends VpcIpv6CidrBlockAssociation {
  @override
  final String? associationId;
  @override
  final String? ipv6CidrBlock;
  @override
  final VpcCidrBlockState? ipv6CidrBlockState;
  @override
  final String? networkBorderGroup;
  @override
  final String? ipv6Pool;

  factory _$VpcIpv6CidrBlockAssociation(
          [void Function(VpcIpv6CidrBlockAssociationBuilder)? updates]) =>
      (new VpcIpv6CidrBlockAssociationBuilder()..update(updates))._build();

  _$VpcIpv6CidrBlockAssociation._(
      {this.associationId,
      this.ipv6CidrBlock,
      this.ipv6CidrBlockState,
      this.networkBorderGroup,
      this.ipv6Pool})
      : super._();

  @override
  VpcIpv6CidrBlockAssociation rebuild(
          void Function(VpcIpv6CidrBlockAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcIpv6CidrBlockAssociationBuilder toBuilder() =>
      new VpcIpv6CidrBlockAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcIpv6CidrBlockAssociation &&
        associationId == other.associationId &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        ipv6CidrBlockState == other.ipv6CidrBlockState &&
        networkBorderGroup == other.networkBorderGroup &&
        ipv6Pool == other.ipv6Pool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockState.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, ipv6Pool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcIpv6CidrBlockAssociationBuilder
    implements
        Builder<VpcIpv6CidrBlockAssociation,
            VpcIpv6CidrBlockAssociationBuilder> {
  _$VpcIpv6CidrBlockAssociation? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  VpcCidrBlockStateBuilder? _ipv6CidrBlockState;
  VpcCidrBlockStateBuilder get ipv6CidrBlockState =>
      _$this._ipv6CidrBlockState ??= new VpcCidrBlockStateBuilder();
  set ipv6CidrBlockState(VpcCidrBlockStateBuilder? ipv6CidrBlockState) =>
      _$this._ipv6CidrBlockState = ipv6CidrBlockState;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  String? _ipv6Pool;
  String? get ipv6Pool => _$this._ipv6Pool;
  set ipv6Pool(String? ipv6Pool) => _$this._ipv6Pool = ipv6Pool;

  VpcIpv6CidrBlockAssociationBuilder();

  VpcIpv6CidrBlockAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _ipv6CidrBlockState = $v.ipv6CidrBlockState?.toBuilder();
      _networkBorderGroup = $v.networkBorderGroup;
      _ipv6Pool = $v.ipv6Pool;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcIpv6CidrBlockAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcIpv6CidrBlockAssociation;
  }

  @override
  void update(void Function(VpcIpv6CidrBlockAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcIpv6CidrBlockAssociation build() => _build();

  _$VpcIpv6CidrBlockAssociation _build() {
    _$VpcIpv6CidrBlockAssociation _$result;
    try {
      _$result = _$v ??
          new _$VpcIpv6CidrBlockAssociation._(
              associationId: associationId,
              ipv6CidrBlock: ipv6CidrBlock,
              ipv6CidrBlockState: _ipv6CidrBlockState?.build(),
              networkBorderGroup: networkBorderGroup,
              ipv6Pool: ipv6Pool);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockState';
        _ipv6CidrBlockState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcIpv6CidrBlockAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
