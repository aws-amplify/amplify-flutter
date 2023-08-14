// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_transit_gateway_multicast_group_members_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterTransitGatewayMulticastGroupMembersResult
    extends DeregisterTransitGatewayMulticastGroupMembersResult {
  @override
  final TransitGatewayMulticastDeregisteredGroupMembers?
      deregisteredMulticastGroupMembers;

  factory _$DeregisterTransitGatewayMulticastGroupMembersResult(
          [void Function(
                  DeregisterTransitGatewayMulticastGroupMembersResultBuilder)?
              updates]) =>
      (new DeregisterTransitGatewayMulticastGroupMembersResultBuilder()
            ..update(updates))
          ._build();

  _$DeregisterTransitGatewayMulticastGroupMembersResult._(
      {this.deregisteredMulticastGroupMembers})
      : super._();

  @override
  DeregisterTransitGatewayMulticastGroupMembersResult rebuild(
          void Function(
                  DeregisterTransitGatewayMulticastGroupMembersResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterTransitGatewayMulticastGroupMembersResultBuilder toBuilder() =>
      new DeregisterTransitGatewayMulticastGroupMembersResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterTransitGatewayMulticastGroupMembersResult &&
        deregisteredMulticastGroupMembers ==
            other.deregisteredMulticastGroupMembers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deregisteredMulticastGroupMembers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterTransitGatewayMulticastGroupMembersResultBuilder
    implements
        Builder<DeregisterTransitGatewayMulticastGroupMembersResult,
            DeregisterTransitGatewayMulticastGroupMembersResultBuilder> {
  _$DeregisterTransitGatewayMulticastGroupMembersResult? _$v;

  TransitGatewayMulticastDeregisteredGroupMembersBuilder?
      _deregisteredMulticastGroupMembers;
  TransitGatewayMulticastDeregisteredGroupMembersBuilder
      get deregisteredMulticastGroupMembers =>
          _$this._deregisteredMulticastGroupMembers ??=
              new TransitGatewayMulticastDeregisteredGroupMembersBuilder();
  set deregisteredMulticastGroupMembers(
          TransitGatewayMulticastDeregisteredGroupMembersBuilder?
              deregisteredMulticastGroupMembers) =>
      _$this._deregisteredMulticastGroupMembers =
          deregisteredMulticastGroupMembers;

  DeregisterTransitGatewayMulticastGroupMembersResultBuilder();

  DeregisterTransitGatewayMulticastGroupMembersResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deregisteredMulticastGroupMembers =
          $v.deregisteredMulticastGroupMembers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterTransitGatewayMulticastGroupMembersResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterTransitGatewayMulticastGroupMembersResult;
  }

  @override
  void update(
      void Function(DeregisterTransitGatewayMulticastGroupMembersResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterTransitGatewayMulticastGroupMembersResult build() => _build();

  _$DeregisterTransitGatewayMulticastGroupMembersResult _build() {
    _$DeregisterTransitGatewayMulticastGroupMembersResult _$result;
    try {
      _$result = _$v ??
          new _$DeregisterTransitGatewayMulticastGroupMembersResult._(
              deregisteredMulticastGroupMembers:
                  _deregisteredMulticastGroupMembers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deregisteredMulticastGroupMembers';
        _deregisteredMulticastGroupMembers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterTransitGatewayMulticastGroupMembersResult',
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
