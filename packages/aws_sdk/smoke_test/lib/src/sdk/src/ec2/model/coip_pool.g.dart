// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coip_pool.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoipPool extends CoipPool {
  @override
  final String? poolId;
  @override
  final _i2.BuiltList<String>? poolCidrs;
  @override
  final String? localGatewayRouteTableId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? poolArn;

  factory _$CoipPool([void Function(CoipPoolBuilder)? updates]) =>
      (new CoipPoolBuilder()..update(updates))._build();

  _$CoipPool._(
      {this.poolId,
      this.poolCidrs,
      this.localGatewayRouteTableId,
      this.tags,
      this.poolArn})
      : super._();

  @override
  CoipPool rebuild(void Function(CoipPoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoipPoolBuilder toBuilder() => new CoipPoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoipPool &&
        poolId == other.poolId &&
        poolCidrs == other.poolCidrs &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        tags == other.tags &&
        poolArn == other.poolArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, poolCidrs.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, poolArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CoipPoolBuilder implements Builder<CoipPool, CoipPoolBuilder> {
  _$CoipPool? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  _i2.ListBuilder<String>? _poolCidrs;
  _i2.ListBuilder<String> get poolCidrs =>
      _$this._poolCidrs ??= new _i2.ListBuilder<String>();
  set poolCidrs(_i2.ListBuilder<String>? poolCidrs) =>
      _$this._poolCidrs = poolCidrs;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _poolArn;
  String? get poolArn => _$this._poolArn;
  set poolArn(String? poolArn) => _$this._poolArn = poolArn;

  CoipPoolBuilder();

  CoipPoolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _poolCidrs = $v.poolCidrs?.toBuilder();
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _tags = $v.tags?.toBuilder();
      _poolArn = $v.poolArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoipPool other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoipPool;
  }

  @override
  void update(void Function(CoipPoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoipPool build() => _build();

  _$CoipPool _build() {
    _$CoipPool _$result;
    try {
      _$result = _$v ??
          new _$CoipPool._(
              poolId: poolId,
              poolCidrs: _poolCidrs?.build(),
              localGatewayRouteTableId: localGatewayRouteTableId,
              tags: _tags?.build(),
              poolArn: poolArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'poolCidrs';
        _poolCidrs?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CoipPool', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
