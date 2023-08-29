// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_transit_gateway_multicast_group_members_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterTransitGatewayMulticastGroupMembersResult
    extends RegisterTransitGatewayMulticastGroupMembersResult {
  @override
  final TransitGatewayMulticastRegisteredGroupMembers?
      registeredMulticastGroupMembers;

  factory _$RegisterTransitGatewayMulticastGroupMembersResult(
          [void Function(
                  RegisterTransitGatewayMulticastGroupMembersResultBuilder)?
              updates]) =>
      (new RegisterTransitGatewayMulticastGroupMembersResultBuilder()
            ..update(updates))
          ._build();

  _$RegisterTransitGatewayMulticastGroupMembersResult._(
      {this.registeredMulticastGroupMembers})
      : super._();

  @override
  RegisterTransitGatewayMulticastGroupMembersResult rebuild(
          void Function(
                  RegisterTransitGatewayMulticastGroupMembersResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterTransitGatewayMulticastGroupMembersResultBuilder toBuilder() =>
      new RegisterTransitGatewayMulticastGroupMembersResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterTransitGatewayMulticastGroupMembersResult &&
        registeredMulticastGroupMembers ==
            other.registeredMulticastGroupMembers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, registeredMulticastGroupMembers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterTransitGatewayMulticastGroupMembersResultBuilder
    implements
        Builder<RegisterTransitGatewayMulticastGroupMembersResult,
            RegisterTransitGatewayMulticastGroupMembersResultBuilder> {
  _$RegisterTransitGatewayMulticastGroupMembersResult? _$v;

  TransitGatewayMulticastRegisteredGroupMembersBuilder?
      _registeredMulticastGroupMembers;
  TransitGatewayMulticastRegisteredGroupMembersBuilder
      get registeredMulticastGroupMembers =>
          _$this._registeredMulticastGroupMembers ??=
              new TransitGatewayMulticastRegisteredGroupMembersBuilder();
  set registeredMulticastGroupMembers(
          TransitGatewayMulticastRegisteredGroupMembersBuilder?
              registeredMulticastGroupMembers) =>
      _$this._registeredMulticastGroupMembers = registeredMulticastGroupMembers;

  RegisterTransitGatewayMulticastGroupMembersResultBuilder();

  RegisterTransitGatewayMulticastGroupMembersResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registeredMulticastGroupMembers =
          $v.registeredMulticastGroupMembers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterTransitGatewayMulticastGroupMembersResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterTransitGatewayMulticastGroupMembersResult;
  }

  @override
  void update(
      void Function(RegisterTransitGatewayMulticastGroupMembersResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterTransitGatewayMulticastGroupMembersResult build() => _build();

  _$RegisterTransitGatewayMulticastGroupMembersResult _build() {
    _$RegisterTransitGatewayMulticastGroupMembersResult _$result;
    try {
      _$result = _$v ??
          new _$RegisterTransitGatewayMulticastGroupMembersResult._(
              registeredMulticastGroupMembers:
                  _registeredMulticastGroupMembers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registeredMulticastGroupMembers';
        _registeredMulticastGroupMembers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterTransitGatewayMulticastGroupMembersResult',
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
