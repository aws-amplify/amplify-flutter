// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_deregistered_group_members.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastDeregisteredGroupMembers
    extends TransitGatewayMulticastDeregisteredGroupMembers {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final _i2.BuiltList<String>? deregisteredNetworkInterfaceIds;
  @override
  final String? groupIpAddress;

  factory _$TransitGatewayMulticastDeregisteredGroupMembers(
          [void Function(
                  TransitGatewayMulticastDeregisteredGroupMembersBuilder)?
              updates]) =>
      (new TransitGatewayMulticastDeregisteredGroupMembersBuilder()
            ..update(updates))
          ._build();

  _$TransitGatewayMulticastDeregisteredGroupMembers._(
      {this.transitGatewayMulticastDomainId,
      this.deregisteredNetworkInterfaceIds,
      this.groupIpAddress})
      : super._();

  @override
  TransitGatewayMulticastDeregisteredGroupMembers rebuild(
          void Function(TransitGatewayMulticastDeregisteredGroupMembersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastDeregisteredGroupMembersBuilder toBuilder() =>
      new TransitGatewayMulticastDeregisteredGroupMembersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastDeregisteredGroupMembers &&
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

class TransitGatewayMulticastDeregisteredGroupMembersBuilder
    implements
        Builder<TransitGatewayMulticastDeregisteredGroupMembers,
            TransitGatewayMulticastDeregisteredGroupMembersBuilder> {
  _$TransitGatewayMulticastDeregisteredGroupMembers? _$v;

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

  TransitGatewayMulticastDeregisteredGroupMembersBuilder();

  TransitGatewayMulticastDeregisteredGroupMembersBuilder get _$this {
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
  void replace(TransitGatewayMulticastDeregisteredGroupMembers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastDeregisteredGroupMembers;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastDeregisteredGroupMembersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastDeregisteredGroupMembers build() => _build();

  _$TransitGatewayMulticastDeregisteredGroupMembers _build() {
    _$TransitGatewayMulticastDeregisteredGroupMembers _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastDeregisteredGroupMembers._(
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
            r'TransitGatewayMulticastDeregisteredGroupMembers',
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
