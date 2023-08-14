// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peering_tgw_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeeringTgwInfo extends PeeringTgwInfo {
  @override
  final String? transitGatewayId;
  @override
  final String? coreNetworkId;
  @override
  final String? ownerId;
  @override
  final String? region;

  factory _$PeeringTgwInfo([void Function(PeeringTgwInfoBuilder)? updates]) =>
      (new PeeringTgwInfoBuilder()..update(updates))._build();

  _$PeeringTgwInfo._(
      {this.transitGatewayId, this.coreNetworkId, this.ownerId, this.region})
      : super._();

  @override
  PeeringTgwInfo rebuild(void Function(PeeringTgwInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeeringTgwInfoBuilder toBuilder() =>
      new PeeringTgwInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeeringTgwInfo &&
        transitGatewayId == other.transitGatewayId &&
        coreNetworkId == other.coreNetworkId &&
        ownerId == other.ownerId &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, coreNetworkId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PeeringTgwInfoBuilder
    implements Builder<PeeringTgwInfo, PeeringTgwInfoBuilder> {
  _$PeeringTgwInfo? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _coreNetworkId;
  String? get coreNetworkId => _$this._coreNetworkId;
  set coreNetworkId(String? coreNetworkId) =>
      _$this._coreNetworkId = coreNetworkId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  PeeringTgwInfoBuilder();

  PeeringTgwInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _coreNetworkId = $v.coreNetworkId;
      _ownerId = $v.ownerId;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeeringTgwInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeeringTgwInfo;
  }

  @override
  void update(void Function(PeeringTgwInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeeringTgwInfo build() => _build();

  _$PeeringTgwInfo _build() {
    final _$result = _$v ??
        new _$PeeringTgwInfo._(
            transitGatewayId: transitGatewayId,
            coreNetworkId: coreNetworkId,
            ownerId: ownerId,
            region: region);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
