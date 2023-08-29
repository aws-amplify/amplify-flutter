// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateAddressRequest extends AssociateAddressRequest {
  @override
  final String? allocationId;
  @override
  final String? instanceId;
  @override
  final String? publicIp;
  @override
  final bool allowReassociation;
  @override
  final bool dryRun;
  @override
  final String? networkInterfaceId;
  @override
  final String? privateIpAddress;

  factory _$AssociateAddressRequest(
          [void Function(AssociateAddressRequestBuilder)? updates]) =>
      (new AssociateAddressRequestBuilder()..update(updates))._build();

  _$AssociateAddressRequest._(
      {this.allocationId,
      this.instanceId,
      this.publicIp,
      required this.allowReassociation,
      required this.dryRun,
      this.networkInterfaceId,
      this.privateIpAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allowReassociation, r'AssociateAddressRequest', 'allowReassociation');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateAddressRequest', 'dryRun');
  }

  @override
  AssociateAddressRequest rebuild(
          void Function(AssociateAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateAddressRequestBuilder toBuilder() =>
      new AssociateAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateAddressRequest &&
        allocationId == other.allocationId &&
        instanceId == other.instanceId &&
        publicIp == other.publicIp &&
        allowReassociation == other.allowReassociation &&
        dryRun == other.dryRun &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIpAddress == other.privateIpAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, allowReassociation.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateAddressRequestBuilder
    implements
        Builder<AssociateAddressRequest, AssociateAddressRequestBuilder> {
  _$AssociateAddressRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  bool? _allowReassociation;
  bool? get allowReassociation => _$this._allowReassociation;
  set allowReassociation(bool? allowReassociation) =>
      _$this._allowReassociation = allowReassociation;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  AssociateAddressRequestBuilder() {
    AssociateAddressRequest._init(this);
  }

  AssociateAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _instanceId = $v.instanceId;
      _publicIp = $v.publicIp;
      _allowReassociation = $v.allowReassociation;
      _dryRun = $v.dryRun;
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIpAddress = $v.privateIpAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateAddressRequest;
  }

  @override
  void update(void Function(AssociateAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateAddressRequest build() => _build();

  _$AssociateAddressRequest _build() {
    final _$result = _$v ??
        new _$AssociateAddressRequest._(
            allocationId: allocationId,
            instanceId: instanceId,
            publicIp: publicIp,
            allowReassociation: BuiltValueNullFieldError.checkNotNull(
                allowReassociation,
                r'AssociateAddressRequest',
                'allowReassociation'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AssociateAddressRequest', 'dryRun'),
            networkInterfaceId: networkInterfaceId,
            privateIpAddress: privateIpAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
