// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpn_connection_device_types_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpnConnectionDeviceTypesResult
    extends GetVpnConnectionDeviceTypesResult {
  @override
  final _i2.BuiltList<VpnConnectionDeviceType>? vpnConnectionDeviceTypes;
  @override
  final String? nextToken;

  factory _$GetVpnConnectionDeviceTypesResult(
          [void Function(GetVpnConnectionDeviceTypesResultBuilder)? updates]) =>
      (new GetVpnConnectionDeviceTypesResultBuilder()..update(updates))
          ._build();

  _$GetVpnConnectionDeviceTypesResult._(
      {this.vpnConnectionDeviceTypes, this.nextToken})
      : super._();

  @override
  GetVpnConnectionDeviceTypesResult rebuild(
          void Function(GetVpnConnectionDeviceTypesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpnConnectionDeviceTypesResultBuilder toBuilder() =>
      new GetVpnConnectionDeviceTypesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpnConnectionDeviceTypesResult &&
        vpnConnectionDeviceTypes == other.vpnConnectionDeviceTypes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionDeviceTypes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpnConnectionDeviceTypesResultBuilder
    implements
        Builder<GetVpnConnectionDeviceTypesResult,
            GetVpnConnectionDeviceTypesResultBuilder> {
  _$GetVpnConnectionDeviceTypesResult? _$v;

  _i2.ListBuilder<VpnConnectionDeviceType>? _vpnConnectionDeviceTypes;
  _i2.ListBuilder<VpnConnectionDeviceType> get vpnConnectionDeviceTypes =>
      _$this._vpnConnectionDeviceTypes ??=
          new _i2.ListBuilder<VpnConnectionDeviceType>();
  set vpnConnectionDeviceTypes(
          _i2.ListBuilder<VpnConnectionDeviceType>? vpnConnectionDeviceTypes) =>
      _$this._vpnConnectionDeviceTypes = vpnConnectionDeviceTypes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetVpnConnectionDeviceTypesResultBuilder();

  GetVpnConnectionDeviceTypesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionDeviceTypes = $v.vpnConnectionDeviceTypes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpnConnectionDeviceTypesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpnConnectionDeviceTypesResult;
  }

  @override
  void update(
      void Function(GetVpnConnectionDeviceTypesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpnConnectionDeviceTypesResult build() => _build();

  _$GetVpnConnectionDeviceTypesResult _build() {
    _$GetVpnConnectionDeviceTypesResult _$result;
    try {
      _$result = _$v ??
          new _$GetVpnConnectionDeviceTypesResult._(
              vpnConnectionDeviceTypes: _vpnConnectionDeviceTypes?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnConnectionDeviceTypes';
        _vpnConnectionDeviceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetVpnConnectionDeviceTypesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
