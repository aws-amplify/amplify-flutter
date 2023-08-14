// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_nat_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNatGatewayRequest extends CreateNatGatewayRequest {
  @override
  final String? allocationId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final String? subnetId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final ConnectivityType? connectivityType;
  @override
  final String? privateIpAddress;
  @override
  final _i3.BuiltList<String>? secondaryAllocationIds;
  @override
  final _i3.BuiltList<String>? secondaryPrivateIpAddresses;
  @override
  final int secondaryPrivateIpAddressCount;

  factory _$CreateNatGatewayRequest(
          [void Function(CreateNatGatewayRequestBuilder)? updates]) =>
      (new CreateNatGatewayRequestBuilder()..update(updates))._build();

  _$CreateNatGatewayRequest._(
      {this.allocationId,
      this.clientToken,
      required this.dryRun,
      this.subnetId,
      this.tagSpecifications,
      this.connectivityType,
      this.privateIpAddress,
      this.secondaryAllocationIds,
      this.secondaryPrivateIpAddresses,
      required this.secondaryPrivateIpAddressCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNatGatewayRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(secondaryPrivateIpAddressCount,
        r'CreateNatGatewayRequest', 'secondaryPrivateIpAddressCount');
  }

  @override
  CreateNatGatewayRequest rebuild(
          void Function(CreateNatGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNatGatewayRequestBuilder toBuilder() =>
      new CreateNatGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNatGatewayRequest &&
        allocationId == other.allocationId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        subnetId == other.subnetId &&
        tagSpecifications == other.tagSpecifications &&
        connectivityType == other.connectivityType &&
        privateIpAddress == other.privateIpAddress &&
        secondaryAllocationIds == other.secondaryAllocationIds &&
        secondaryPrivateIpAddresses == other.secondaryPrivateIpAddresses &&
        secondaryPrivateIpAddressCount == other.secondaryPrivateIpAddressCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, connectivityType.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, secondaryAllocationIds.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddresses.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddressCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNatGatewayRequestBuilder
    implements
        Builder<CreateNatGatewayRequest, CreateNatGatewayRequestBuilder> {
  _$CreateNatGatewayRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  ConnectivityType? _connectivityType;
  ConnectivityType? get connectivityType => _$this._connectivityType;
  set connectivityType(ConnectivityType? connectivityType) =>
      _$this._connectivityType = connectivityType;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i3.ListBuilder<String>? _secondaryAllocationIds;
  _i3.ListBuilder<String> get secondaryAllocationIds =>
      _$this._secondaryAllocationIds ??= new _i3.ListBuilder<String>();
  set secondaryAllocationIds(_i3.ListBuilder<String>? secondaryAllocationIds) =>
      _$this._secondaryAllocationIds = secondaryAllocationIds;

  _i3.ListBuilder<String>? _secondaryPrivateIpAddresses;
  _i3.ListBuilder<String> get secondaryPrivateIpAddresses =>
      _$this._secondaryPrivateIpAddresses ??= new _i3.ListBuilder<String>();
  set secondaryPrivateIpAddresses(
          _i3.ListBuilder<String>? secondaryPrivateIpAddresses) =>
      _$this._secondaryPrivateIpAddresses = secondaryPrivateIpAddresses;

  int? _secondaryPrivateIpAddressCount;
  int? get secondaryPrivateIpAddressCount =>
      _$this._secondaryPrivateIpAddressCount;
  set secondaryPrivateIpAddressCount(int? secondaryPrivateIpAddressCount) =>
      _$this._secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount;

  CreateNatGatewayRequestBuilder() {
    CreateNatGatewayRequest._init(this);
  }

  CreateNatGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _subnetId = $v.subnetId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _connectivityType = $v.connectivityType;
      _privateIpAddress = $v.privateIpAddress;
      _secondaryAllocationIds = $v.secondaryAllocationIds?.toBuilder();
      _secondaryPrivateIpAddresses =
          $v.secondaryPrivateIpAddresses?.toBuilder();
      _secondaryPrivateIpAddressCount = $v.secondaryPrivateIpAddressCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNatGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNatGatewayRequest;
  }

  @override
  void update(void Function(CreateNatGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNatGatewayRequest build() => _build();

  _$CreateNatGatewayRequest _build() {
    _$CreateNatGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNatGatewayRequest._(
              allocationId: allocationId,
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateNatGatewayRequest', 'dryRun'),
              subnetId: subnetId,
              tagSpecifications: _tagSpecifications?.build(),
              connectivityType: connectivityType,
              privateIpAddress: privateIpAddress,
              secondaryAllocationIds: _secondaryAllocationIds?.build(),
              secondaryPrivateIpAddresses:
                  _secondaryPrivateIpAddresses?.build(),
              secondaryPrivateIpAddressCount:
                  BuiltValueNullFieldError.checkNotNull(
                      secondaryPrivateIpAddressCount,
                      r'CreateNatGatewayRequest',
                      'secondaryPrivateIpAddressCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();

        _$failedField = 'secondaryAllocationIds';
        _secondaryAllocationIds?.build();
        _$failedField = 'secondaryPrivateIpAddresses';
        _secondaryPrivateIpAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNatGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
