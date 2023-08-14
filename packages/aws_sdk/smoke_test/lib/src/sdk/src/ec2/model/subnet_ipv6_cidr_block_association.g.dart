// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subnet_ipv6_cidr_block_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubnetIpv6CidrBlockAssociation extends SubnetIpv6CidrBlockAssociation {
  @override
  final String? associationId;
  @override
  final String? ipv6CidrBlock;
  @override
  final SubnetCidrBlockState? ipv6CidrBlockState;

  factory _$SubnetIpv6CidrBlockAssociation(
          [void Function(SubnetIpv6CidrBlockAssociationBuilder)? updates]) =>
      (new SubnetIpv6CidrBlockAssociationBuilder()..update(updates))._build();

  _$SubnetIpv6CidrBlockAssociation._(
      {this.associationId, this.ipv6CidrBlock, this.ipv6CidrBlockState})
      : super._();

  @override
  SubnetIpv6CidrBlockAssociation rebuild(
          void Function(SubnetIpv6CidrBlockAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubnetIpv6CidrBlockAssociationBuilder toBuilder() =>
      new SubnetIpv6CidrBlockAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubnetIpv6CidrBlockAssociation &&
        associationId == other.associationId &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        ipv6CidrBlockState == other.ipv6CidrBlockState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubnetIpv6CidrBlockAssociationBuilder
    implements
        Builder<SubnetIpv6CidrBlockAssociation,
            SubnetIpv6CidrBlockAssociationBuilder> {
  _$SubnetIpv6CidrBlockAssociation? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  SubnetCidrBlockStateBuilder? _ipv6CidrBlockState;
  SubnetCidrBlockStateBuilder get ipv6CidrBlockState =>
      _$this._ipv6CidrBlockState ??= new SubnetCidrBlockStateBuilder();
  set ipv6CidrBlockState(SubnetCidrBlockStateBuilder? ipv6CidrBlockState) =>
      _$this._ipv6CidrBlockState = ipv6CidrBlockState;

  SubnetIpv6CidrBlockAssociationBuilder();

  SubnetIpv6CidrBlockAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _ipv6CidrBlockState = $v.ipv6CidrBlockState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubnetIpv6CidrBlockAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubnetIpv6CidrBlockAssociation;
  }

  @override
  void update(void Function(SubnetIpv6CidrBlockAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubnetIpv6CidrBlockAssociation build() => _build();

  _$SubnetIpv6CidrBlockAssociation _build() {
    _$SubnetIpv6CidrBlockAssociation _$result;
    try {
      _$result = _$v ??
          new _$SubnetIpv6CidrBlockAssociation._(
              associationId: associationId,
              ipv6CidrBlock: ipv6CidrBlock,
              ipv6CidrBlockState: _ipv6CidrBlockState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockState';
        _ipv6CidrBlockState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SubnetIpv6CidrBlockAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
