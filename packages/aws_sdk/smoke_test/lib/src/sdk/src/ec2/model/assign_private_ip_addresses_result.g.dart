// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_private_ip_addresses_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignPrivateIpAddressesResult extends AssignPrivateIpAddressesResult {
  @override
  final String? networkInterfaceId;
  @override
  final _i2.BuiltList<AssignedPrivateIpAddress>? assignedPrivateIpAddresses;
  @override
  final _i2.BuiltList<Ipv4PrefixSpecification>? assignedIpv4Prefixes;

  factory _$AssignPrivateIpAddressesResult(
          [void Function(AssignPrivateIpAddressesResultBuilder)? updates]) =>
      (new AssignPrivateIpAddressesResultBuilder()..update(updates))._build();

  _$AssignPrivateIpAddressesResult._(
      {this.networkInterfaceId,
      this.assignedPrivateIpAddresses,
      this.assignedIpv4Prefixes})
      : super._();

  @override
  AssignPrivateIpAddressesResult rebuild(
          void Function(AssignPrivateIpAddressesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignPrivateIpAddressesResultBuilder toBuilder() =>
      new AssignPrivateIpAddressesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignPrivateIpAddressesResult &&
        networkInterfaceId == other.networkInterfaceId &&
        assignedPrivateIpAddresses == other.assignedPrivateIpAddresses &&
        assignedIpv4Prefixes == other.assignedIpv4Prefixes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, assignedPrivateIpAddresses.hashCode);
    _$hash = $jc(_$hash, assignedIpv4Prefixes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssignPrivateIpAddressesResultBuilder
    implements
        Builder<AssignPrivateIpAddressesResult,
            AssignPrivateIpAddressesResultBuilder> {
  _$AssignPrivateIpAddressesResult? _$v;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  _i2.ListBuilder<AssignedPrivateIpAddress>? _assignedPrivateIpAddresses;
  _i2.ListBuilder<AssignedPrivateIpAddress> get assignedPrivateIpAddresses =>
      _$this._assignedPrivateIpAddresses ??=
          new _i2.ListBuilder<AssignedPrivateIpAddress>();
  set assignedPrivateIpAddresses(
          _i2.ListBuilder<AssignedPrivateIpAddress>?
              assignedPrivateIpAddresses) =>
      _$this._assignedPrivateIpAddresses = assignedPrivateIpAddresses;

  _i2.ListBuilder<Ipv4PrefixSpecification>? _assignedIpv4Prefixes;
  _i2.ListBuilder<Ipv4PrefixSpecification> get assignedIpv4Prefixes =>
      _$this._assignedIpv4Prefixes ??=
          new _i2.ListBuilder<Ipv4PrefixSpecification>();
  set assignedIpv4Prefixes(
          _i2.ListBuilder<Ipv4PrefixSpecification>? assignedIpv4Prefixes) =>
      _$this._assignedIpv4Prefixes = assignedIpv4Prefixes;

  AssignPrivateIpAddressesResultBuilder();

  AssignPrivateIpAddressesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _assignedPrivateIpAddresses = $v.assignedPrivateIpAddresses?.toBuilder();
      _assignedIpv4Prefixes = $v.assignedIpv4Prefixes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignPrivateIpAddressesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignPrivateIpAddressesResult;
  }

  @override
  void update(void Function(AssignPrivateIpAddressesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignPrivateIpAddressesResult build() => _build();

  _$AssignPrivateIpAddressesResult _build() {
    _$AssignPrivateIpAddressesResult _$result;
    try {
      _$result = _$v ??
          new _$AssignPrivateIpAddressesResult._(
              networkInterfaceId: networkInterfaceId,
              assignedPrivateIpAddresses: _assignedPrivateIpAddresses?.build(),
              assignedIpv4Prefixes: _assignedIpv4Prefixes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assignedPrivateIpAddresses';
        _assignedPrivateIpAddresses?.build();
        _$failedField = 'assignedIpv4Prefixes';
        _assignedIpv4Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssignPrivateIpAddressesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
