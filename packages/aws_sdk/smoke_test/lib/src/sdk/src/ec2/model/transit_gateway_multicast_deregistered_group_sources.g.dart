// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_deregistered_group_sources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastDeregisteredGroupSources
    extends TransitGatewayMulticastDeregisteredGroupSources {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final _i2.BuiltList<String>? deregisteredNetworkInterfaceIds;
  @override
  final String? groupIpAddress;

  factory _$TransitGatewayMulticastDeregisteredGroupSources(
          [void Function(
                  TransitGatewayMulticastDeregisteredGroupSourcesBuilder)?
              updates]) =>
      (new TransitGatewayMulticastDeregisteredGroupSourcesBuilder()
            ..update(updates))
          ._build();

  _$TransitGatewayMulticastDeregisteredGroupSources._(
      {this.transitGatewayMulticastDomainId,
      this.deregisteredNetworkInterfaceIds,
      this.groupIpAddress})
      : super._();

  @override
  TransitGatewayMulticastDeregisteredGroupSources rebuild(
          void Function(TransitGatewayMulticastDeregisteredGroupSourcesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastDeregisteredGroupSourcesBuilder toBuilder() =>
      new TransitGatewayMulticastDeregisteredGroupSourcesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastDeregisteredGroupSources &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        deregisteredNetworkInterfaceIds ==
            other.deregisteredNetworkInterfaceIds &&
        groupIpAddress == other.groupIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, deregisteredNetworkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, groupIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastDeregisteredGroupSourcesBuilder
    implements
        Builder<TransitGatewayMulticastDeregisteredGroupSources,
            TransitGatewayMulticastDeregisteredGroupSourcesBuilder> {
  _$TransitGatewayMulticastDeregisteredGroupSources? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  _i2.ListBuilder<String>? _deregisteredNetworkInterfaceIds;
  _i2.ListBuilder<String> get deregisteredNetworkInterfaceIds =>
      _$this._deregisteredNetworkInterfaceIds ??= new _i2.ListBuilder<String>();
  set deregisteredNetworkInterfaceIds(
          _i2.ListBuilder<String>? deregisteredNetworkInterfaceIds) =>
      _$this._deregisteredNetworkInterfaceIds = deregisteredNetworkInterfaceIds;

  String? _groupIpAddress;
  String? get groupIpAddress => _$this._groupIpAddress;
  set groupIpAddress(String? groupIpAddress) =>
      _$this._groupIpAddress = groupIpAddress;

  TransitGatewayMulticastDeregisteredGroupSourcesBuilder();

  TransitGatewayMulticastDeregisteredGroupSourcesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _deregisteredNetworkInterfaceIds =
          $v.deregisteredNetworkInterfaceIds?.toBuilder();
      _groupIpAddress = $v.groupIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastDeregisteredGroupSources other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastDeregisteredGroupSources;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastDeregisteredGroupSourcesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastDeregisteredGroupSources build() => _build();

  _$TransitGatewayMulticastDeregisteredGroupSources _build() {
    _$TransitGatewayMulticastDeregisteredGroupSources _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastDeregisteredGroupSources._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              deregisteredNetworkInterfaceIds:
                  _deregisteredNetworkInterfaceIds?.build(),
              groupIpAddress: groupIpAddress);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deregisteredNetworkInterfaceIds';
        _deregisteredNetworkInterfaceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayMulticastDeregisteredGroupSources',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
