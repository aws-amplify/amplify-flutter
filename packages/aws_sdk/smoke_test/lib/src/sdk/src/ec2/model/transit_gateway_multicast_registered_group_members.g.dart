// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_registered_group_members.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastRegisteredGroupMembers
    extends TransitGatewayMulticastRegisteredGroupMembers {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final _i2.BuiltList<String>? registeredNetworkInterfaceIds;
  @override
  final String? groupIpAddress;

  factory _$TransitGatewayMulticastRegisteredGroupMembers(
          [void Function(TransitGatewayMulticastRegisteredGroupMembersBuilder)?
              updates]) =>
      (new TransitGatewayMulticastRegisteredGroupMembersBuilder()
            ..update(updates))
          ._build();

  _$TransitGatewayMulticastRegisteredGroupMembers._(
      {this.transitGatewayMulticastDomainId,
      this.registeredNetworkInterfaceIds,
      this.groupIpAddress})
      : super._();

  @override
  TransitGatewayMulticastRegisteredGroupMembers rebuild(
          void Function(TransitGatewayMulticastRegisteredGroupMembersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastRegisteredGroupMembersBuilder toBuilder() =>
      new TransitGatewayMulticastRegisteredGroupMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastRegisteredGroupMembers &&
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

class TransitGatewayMulticastRegisteredGroupMembersBuilder
    implements
        Builder<TransitGatewayMulticastRegisteredGroupMembers,
            TransitGatewayMulticastRegisteredGroupMembersBuilder> {
  _$TransitGatewayMulticastRegisteredGroupMembers? _$v;

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

  TransitGatewayMulticastRegisteredGroupMembersBuilder();

  TransitGatewayMulticastRegisteredGroupMembersBuilder get _$this {
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
  void replace(TransitGatewayMulticastRegisteredGroupMembers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastRegisteredGroupMembers;
  }

  @override
  void update(
      void Function(TransitGatewayMulticastRegisteredGroupMembersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastRegisteredGroupMembers build() => _build();

  _$TransitGatewayMulticastRegisteredGroupMembers _build() {
    _$TransitGatewayMulticastRegisteredGroupMembers _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastRegisteredGroupMembers._(
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
            r'TransitGatewayMulticastRegisteredGroupMembers',
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
