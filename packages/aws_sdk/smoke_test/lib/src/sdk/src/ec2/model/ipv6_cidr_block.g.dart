// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_cidr_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6CidrBlock extends Ipv6CidrBlock {
  @override
  final String? ipv6CidrBlock;

  factory _$Ipv6CidrBlock([void Function(Ipv6CidrBlockBuilder)? updates]) =>
      (new Ipv6CidrBlockBuilder()..update(updates))._build();

  _$Ipv6CidrBlock._({this.ipv6CidrBlock}) : super._();

  @override
  Ipv6CidrBlock rebuild(void Function(Ipv6CidrBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6CidrBlockBuilder toBuilder() => new Ipv6CidrBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6CidrBlock && ipv6CidrBlock == other.ipv6CidrBlock;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv6CidrBlockBuilder
    implements Builder<Ipv6CidrBlock, Ipv6CidrBlockBuilder> {
  _$Ipv6CidrBlock? _$v;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  Ipv6CidrBlockBuilder();

  Ipv6CidrBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6CidrBlock other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6CidrBlock;
  }

  @override
  void update(void Function(Ipv6CidrBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6CidrBlock build() => _build();

  _$Ipv6CidrBlock _build() {
    final _$result = _$v ?? new _$Ipv6CidrBlock._(ipv6CidrBlock: ipv6CidrBlock);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
