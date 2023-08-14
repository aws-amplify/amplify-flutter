// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pool_cidr_block.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PoolCidrBlock extends PoolCidrBlock {
  @override
  final String? cidr;

  factory _$PoolCidrBlock([void Function(PoolCidrBlockBuilder)? updates]) =>
      (new PoolCidrBlockBuilder()..update(updates))._build();

  _$PoolCidrBlock._({this.cidr}) : super._();

  @override
  PoolCidrBlock rebuild(void Function(PoolCidrBlockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoolCidrBlockBuilder toBuilder() => new PoolCidrBlockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoolCidrBlock && cidr == other.cidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PoolCidrBlockBuilder
    implements Builder<PoolCidrBlock, PoolCidrBlockBuilder> {
  _$PoolCidrBlock? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  PoolCidrBlockBuilder();

  PoolCidrBlockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoolCidrBlock other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoolCidrBlock;
  }

  @override
  void update(void Function(PoolCidrBlockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PoolCidrBlock build() => _build();

  _$PoolCidrBlock _build() {
    final _$result = _$v ?? new _$PoolCidrBlock._(cidr: cidr);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
