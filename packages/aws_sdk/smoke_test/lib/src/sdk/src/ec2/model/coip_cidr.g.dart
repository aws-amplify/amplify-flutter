// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coip_cidr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoipCidr extends CoipCidr {
  @override
  final String? cidr;
  @override
  final String? coipPoolId;
  @override
  final String? localGatewayRouteTableId;

  factory _$CoipCidr([void Function(CoipCidrBuilder)? updates]) =>
      (new CoipCidrBuilder()..update(updates))._build();

  _$CoipCidr._({this.cidr, this.coipPoolId, this.localGatewayRouteTableId})
      : super._();

  @override
  CoipCidr rebuild(void Function(CoipCidrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoipCidrBuilder toBuilder() => new CoipCidrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoipCidr &&
        cidr == other.cidr &&
        coipPoolId == other.coipPoolId &&
        localGatewayRouteTableId == other.localGatewayRouteTableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, coipPoolId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CoipCidrBuilder implements Builder<CoipCidr, CoipCidrBuilder> {
  _$CoipCidr? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _coipPoolId;
  String? get coipPoolId => _$this._coipPoolId;
  set coipPoolId(String? coipPoolId) => _$this._coipPoolId = coipPoolId;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  CoipCidrBuilder();

  CoipCidrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _coipPoolId = $v.coipPoolId;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoipCidr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoipCidr;
  }

  @override
  void update(void Function(CoipCidrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoipCidr build() => _build();

  _$CoipCidr _build() {
    final _$result = _$v ??
        new _$CoipCidr._(
            cidr: cidr,
            coipPoolId: coipPoolId,
            localGatewayRouteTableId: localGatewayRouteTableId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
