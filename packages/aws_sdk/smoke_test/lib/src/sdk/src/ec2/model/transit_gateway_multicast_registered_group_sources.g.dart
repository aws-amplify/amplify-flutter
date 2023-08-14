// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_registered_group_sources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastRegisteredGroupSources
    extends TransitGatewayMulticastRegisteredGroupSources {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final _i2.BuiltList<String>? registeredNetworkInterfaceIds;
  @override
  final String? groupIpAddress;

  factory _$TransitGatewayMulticastRegisteredGroupSources(
          [void Function(TransitGatewayMulticastRegisteredGroupSourcesBuilder)?
              updates]) =>
      (new TransitGatewayMulticastRegisteredGroupSourcesBuilder()
            ..update(updates))
          ._build();

  _$TransitGatewayMulticastRegisteredGroupSources._(
      {this.transitGatewayMulticastDomainId,
      this.registeredNetworkInterfaceIds,
      this.groupIpAddress})
      : super._();

  @override
  TransitGatewayMulticastRegisteredGroupSources rebuild(
          void Function(TransitGatewayMulticastRegisteredGroupSourcesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastRegisteredGroupSourcesBuilder toBuilder() =>
      new TransitGatewayMulticastRegisteredGroupSourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastRegisteredGroupSources &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        registeredNetworkInterfaceIds == other.registeredNetworkInterfaceIds &&
        groupIpAddress == other.groupIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, registeredNetworkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, groupIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastRegisteredGroupSourcesBuilder
    implements
        Builder<TransitGatewayMulticastRegisteredGroupSources,
            TransitGatewayMulticastRegisteredGroupSourcesBuilder> {
  _$TransitGatewayMulticastRegisteredGroupSources? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  _i2.ListBuilder<String>? _registeredNetworkInterfaceIds;
  _i2.ListBuilder<String> get registeredNetworkInterfaceIds =>
      _$this._registeredNetworkInterfaceIds ??= new _i2.ListBuilder<String>();
  set registeredNetworkInterfaceIds(
          _i2.ListBuilder<String>? registeredNetworkInterfaceIds) =>
      _$this._registeredNetworkInterfaceIds = registeredNetworkInterfaceIds;

  String? _groupIpAddress;
  String? get groupIpAddress => _$this._groupIpAddress;
  set groupIpAddress(String? groupIpAddress) =>
      _$this._groupIpAddress = groupIpAddress;

  TransitGatewayMulticastRegisteredGroupSourcesBuilder();

  TransitGatewayMulticastRegisteredGroupSourcesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _registeredNetworkInterfaceIds =
          $v.registeredNetworkInterfaceIds?.toBuilder();
      _groupIpAddress = $v.groupIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastRegisteredGroupSources other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastRegisteredGroupSources;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastRegisteredGroupSourcesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastRegisteredGroupSources build() => _build();

  _$TransitGatewayMulticastRegisteredGroupSources _build() {
    _$TransitGatewayMulticastRegisteredGroupSources _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastRegisteredGroupSources._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              registeredNetworkInterfaceIds:
                  _registeredNetworkInterfaceIds?.build(),
              groupIpAddress: groupIpAddress);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registeredNetworkInterfaceIds';
        _registeredNetworkInterfaceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayMulticastRegisteredGroupSources',
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
