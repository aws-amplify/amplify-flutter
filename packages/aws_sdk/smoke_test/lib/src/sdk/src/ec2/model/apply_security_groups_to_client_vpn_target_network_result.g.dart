// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_security_groups_to_client_vpn_target_network_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplySecurityGroupsToClientVpnTargetNetworkResult
    extends ApplySecurityGroupsToClientVpnTargetNetworkResult {
  @override
  final _i2.BuiltList<String>? securityGroupIds;

  factory _$ApplySecurityGroupsToClientVpnTargetNetworkResult(
          [void Function(
                  ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder)?
              updates]) =>
      (new ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder()
            ..update(updates))
          ._build();

  _$ApplySecurityGroupsToClientVpnTargetNetworkResult._({this.securityGroupIds})
      : super._();

  @override
  ApplySecurityGroupsToClientVpnTargetNetworkResult rebuild(
          void Function(
                  ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder toBuilder() =>
      new ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplySecurityGroupsToClientVpnTargetNetworkResult &&
        securityGroupIds == other.securityGroupIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder
    implements
        Builder<ApplySecurityGroupsToClientVpnTargetNetworkResult,
            ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder> {
  _$ApplySecurityGroupsToClientVpnTargetNetworkResult? _$v;

  _i2.ListBuilder<String>? _securityGroupIds;
  _i2.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i2.ListBuilder<String>();
  set securityGroupIds(_i2.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder();

  ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplySecurityGroupsToClientVpnTargetNetworkResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplySecurityGroupsToClientVpnTargetNetworkResult;
  }

  @override
  void update(
      void Function(ApplySecurityGroupsToClientVpnTargetNetworkResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplySecurityGroupsToClientVpnTargetNetworkResult build() => _build();

  _$ApplySecurityGroupsToClientVpnTargetNetworkResult _build() {
    _$ApplySecurityGroupsToClientVpnTargetNetworkResult _$result;
    try {
      _$result = _$v ??
          new _$ApplySecurityGroupsToClientVpnTargetNetworkResult._(
              securityGroupIds: _securityGroupIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplySecurityGroupsToClientVpnTargetNetworkResult',
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
