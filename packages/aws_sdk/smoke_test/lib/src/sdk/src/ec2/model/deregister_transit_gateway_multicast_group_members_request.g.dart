// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_transit_gateway_multicast_group_members_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterTransitGatewayMulticastGroupMembersRequest
    extends DeregisterTransitGatewayMulticastGroupMembersRequest {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? groupIpAddress;
  @override
  final _i3.BuiltList<String>? networkInterfaceIds;
  @override
  final bool dryRun;

  factory _$DeregisterTransitGatewayMulticastGroupMembersRequest(
          [void Function(
                  DeregisterTransitGatewayMulticastGroupMembersRequestBuilder)?
              updates]) =>
      (new DeregisterTransitGatewayMulticastGroupMembersRequestBuilder()
            ..update(updates))
          ._build();

  _$DeregisterTransitGatewayMulticastGroupMembersRequest._(
      {this.transitGatewayMulticastDomainId,
      this.groupIpAddress,
      this.networkInterfaceIds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'DeregisterTransitGatewayMulticastGroupMembersRequest', 'dryRun');
  }

  @override
  DeregisterTransitGatewayMulticastGroupMembersRequest rebuild(
          void Function(
                  DeregisterTransitGatewayMulticastGroupMembersRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterTransitGatewayMulticastGroupMembersRequestBuilder toBuilder() =>
      new DeregisterTransitGatewayMulticastGroupMembersRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterTransitGatewayMulticastGroupMembersRequest &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        groupIpAddress == other.groupIpAddress &&
        networkInterfaceIds == other.networkInterfaceIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, groupIpAddress.hashCode);
    _$hash = $jc(_$hash, networkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterTransitGatewayMulticastGroupMembersRequestBuilder
    implements
        Builder<DeregisterTransitGatewayMulticastGroupMembersRequest,
            DeregisterTransitGatewayMulticastGroupMembersRequestBuilder> {
  _$DeregisterTransitGatewayMulticastGroupMembersRequest? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  String? _groupIpAddress;
  String? get groupIpAddress => _$this._groupIpAddress;
  set groupIpAddress(String? groupIpAddress) =>
      _$this._groupIpAddress = groupIpAddress;

  _i3.ListBuilder<String>? _networkInterfaceIds;
  _i3.ListBuilder<String> get networkInterfaceIds =>
      _$this._networkInterfaceIds ??= new _i3.ListBuilder<String>();
  set networkInterfaceIds(_i3.ListBuilder<String>? networkInterfaceIds) =>
      _$this._networkInterfaceIds = networkInterfaceIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeregisterTransitGatewayMulticastGroupMembersRequestBuilder() {
    DeregisterTransitGatewayMulticastGroupMembersRequest._init(this);
  }

  DeregisterTransitGatewayMulticastGroupMembersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _groupIpAddress = $v.groupIpAddress;
      _networkInterfaceIds = $v.networkInterfaceIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterTransitGatewayMulticastGroupMembersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterTransitGatewayMulticastGroupMembersRequest;
  }

  @override
  void update(
      void Function(
              DeregisterTransitGatewayMulticastGroupMembersRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterTransitGatewayMulticastGroupMembersRequest build() => _build();

  _$DeregisterTransitGatewayMulticastGroupMembersRequest _build() {
    _$DeregisterTransitGatewayMulticastGroupMembersRequest _$result;
    try {
      _$result = _$v ??
          new _$DeregisterTransitGatewayMulticastGroupMembersRequest._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              groupIpAddress: groupIpAddress,
              networkInterfaceIds: _networkInterfaceIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DeregisterTransitGatewayMulticastGroupMembersRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfaceIds';
        _networkInterfaceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterTransitGatewayMulticastGroupMembersRequest',
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
