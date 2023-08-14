// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nat_gateway_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NatGatewayAddress extends NatGatewayAddress {
  @override
  final String? allocationId;
  @override
  final String? networkInterfaceId;
  @override
  final String? privateIp;
  @override
  final String? publicIp;
  @override
  final String? associationId;
  @override
  final bool isPrimary;
  @override
  final String? failureMessage;
  @override
  final NatGatewayAddressStatus? status;

  factory _$NatGatewayAddress(
          [void Function(NatGatewayAddressBuilder)? updates]) =>
      (new NatGatewayAddressBuilder()..update(updates))._build();

  _$NatGatewayAddress._(
      {this.allocationId,
      this.networkInterfaceId,
      this.privateIp,
      this.publicIp,
      this.associationId,
      required this.isPrimary,
      this.failureMessage,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isPrimary, r'NatGatewayAddress', 'isPrimary');
  }

  @override
  NatGatewayAddress rebuild(void Function(NatGatewayAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NatGatewayAddressBuilder toBuilder() =>
      new NatGatewayAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NatGatewayAddress &&
        allocationId == other.allocationId &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIp == other.privateIp &&
        publicIp == other.publicIp &&
        associationId == other.associationId &&
        isPrimary == other.isPrimary &&
        failureMessage == other.failureMessage &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIp.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NatGatewayAddressBuilder
    implements Builder<NatGatewayAddress, NatGatewayAddressBuilder> {
  _$NatGatewayAddress? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _privateIp;
  String? get privateIp => _$this._privateIp;
  set privateIp(String? privateIp) => _$this._privateIp = privateIp;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  NatGatewayAddressStatus? _status;
  NatGatewayAddressStatus? get status => _$this._status;
  set status(NatGatewayAddressStatus? status) => _$this._status = status;

  NatGatewayAddressBuilder() {
    NatGatewayAddress._init(this);
  }

  NatGatewayAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIp = $v.privateIp;
      _publicIp = $v.publicIp;
      _associationId = $v.associationId;
      _isPrimary = $v.isPrimary;
      _failureMessage = $v.failureMessage;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NatGatewayAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NatGatewayAddress;
  }

  @override
  void update(void Function(NatGatewayAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NatGatewayAddress build() => _build();

  _$NatGatewayAddress _build() {
    final _$result = _$v ??
        new _$NatGatewayAddress._(
            allocationId: allocationId,
            networkInterfaceId: networkInterfaceId,
            privateIp: privateIp,
            publicIp: publicIp,
            associationId: associationId,
            isPrimary: BuiltValueNullFieldError.checkNotNull(
                isPrimary, r'NatGatewayAddress', 'isPrimary'),
            failureMessage: failureMessage,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
