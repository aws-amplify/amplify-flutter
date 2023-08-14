// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_cidr_block_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcCidrBlockAssociation extends VpcCidrBlockAssociation {
  @override
  final String? associationId;
  @override
  final String? cidrBlock;
  @override
  final VpcCidrBlockState? cidrBlockState;

  factory _$VpcCidrBlockAssociation(
          [void Function(VpcCidrBlockAssociationBuilder)? updates]) =>
      (new VpcCidrBlockAssociationBuilder()..update(updates))._build();

  _$VpcCidrBlockAssociation._(
      {this.associationId, this.cidrBlock, this.cidrBlockState})
      : super._();

  @override
  VpcCidrBlockAssociation rebuild(
          void Function(VpcCidrBlockAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcCidrBlockAssociationBuilder toBuilder() =>
      new VpcCidrBlockAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcCidrBlockAssociation &&
        associationId == other.associationId &&
        cidrBlock == other.cidrBlock &&
        cidrBlockState == other.cidrBlockState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, cidrBlockState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcCidrBlockAssociationBuilder
    implements
        Builder<VpcCidrBlockAssociation, VpcCidrBlockAssociationBuilder> {
  _$VpcCidrBlockAssociation? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  VpcCidrBlockStateBuilder? _cidrBlockState;
  VpcCidrBlockStateBuilder get cidrBlockState =>
      _$this._cidrBlockState ??= new VpcCidrBlockStateBuilder();
  set cidrBlockState(VpcCidrBlockStateBuilder? cidrBlockState) =>
      _$this._cidrBlockState = cidrBlockState;

  VpcCidrBlockAssociationBuilder();

  VpcCidrBlockAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _cidrBlock = $v.cidrBlock;
      _cidrBlockState = $v.cidrBlockState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcCidrBlockAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcCidrBlockAssociation;
  }

  @override
  void update(void Function(VpcCidrBlockAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcCidrBlockAssociation build() => _build();

  _$VpcCidrBlockAssociation _build() {
    _$VpcCidrBlockAssociation _$result;
    try {
      _$result = _$v ??
          new _$VpcCidrBlockAssociation._(
              associationId: associationId,
              cidrBlock: cidrBlock,
              cidrBlockState: _cidrBlockState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cidrBlockState';
        _cidrBlockState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcCidrBlockAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
