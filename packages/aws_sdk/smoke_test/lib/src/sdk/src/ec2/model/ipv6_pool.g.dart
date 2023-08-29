// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_pool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6Pool extends Ipv6Pool {
  @override
  final String? poolId;
  @override
  final String? description;
  @override
  final _i2.BuiltList<PoolCidrBlock>? poolCidrBlocks;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$Ipv6Pool([void Function(Ipv6PoolBuilder)? updates]) =>
      (new Ipv6PoolBuilder()..update(updates))._build();

  _$Ipv6Pool._({this.poolId, this.description, this.poolCidrBlocks, this.tags})
      : super._();

  @override
  Ipv6Pool rebuild(void Function(Ipv6PoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6PoolBuilder toBuilder() => new Ipv6PoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6Pool &&
        poolId == other.poolId &&
        description == other.description &&
        poolCidrBlocks == other.poolCidrBlocks &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, poolCidrBlocks.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv6PoolBuilder implements Builder<Ipv6Pool, Ipv6PoolBuilder> {
  _$Ipv6Pool? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<PoolCidrBlock>? _poolCidrBlocks;
  _i2.ListBuilder<PoolCidrBlock> get poolCidrBlocks =>
      _$this._poolCidrBlocks ??= new _i2.ListBuilder<PoolCidrBlock>();
  set poolCidrBlocks(_i2.ListBuilder<PoolCidrBlock>? poolCidrBlocks) =>
      _$this._poolCidrBlocks = poolCidrBlocks;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  Ipv6PoolBuilder();

  Ipv6PoolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _description = $v.description;
      _poolCidrBlocks = $v.poolCidrBlocks?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6Pool other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6Pool;
  }

  @override
  void update(void Function(Ipv6PoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6Pool build() => _build();

  _$Ipv6Pool _build() {
    _$Ipv6Pool _$result;
    try {
      _$result = _$v ??
          new _$Ipv6Pool._(
              poolId: poolId,
              description: description,
              poolCidrBlocks: _poolCidrBlocks?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poolCidrBlocks';
        _poolCidrBlocks?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ipv6Pool', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
