// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cidr_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CidrBlock extends CidrBlock {
  @override
  final String? cidrBlock;

  factory _$CidrBlock([void Function(CidrBlockBuilder)? updates]) =>
      (new CidrBlockBuilder()..update(updates))._build();

  _$CidrBlock._({this.cidrBlock}) : super._();

  @override
  CidrBlock rebuild(void Function(CidrBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CidrBlockBuilder toBuilder() => new CidrBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CidrBlock && cidrBlock == other.cidrBlock;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CidrBlockBuilder implements Builder<CidrBlock, CidrBlockBuilder> {
  _$CidrBlock? _$v;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  CidrBlockBuilder();

  CidrBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrBlock = $v.cidrBlock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CidrBlock other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CidrBlock;
  }

  @override
  void update(void Function(CidrBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CidrBlock build() => _build();

  _$CidrBlock _build() {
    final _$result = _$v ?? new _$CidrBlock._(cidrBlock: cidrBlock);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
