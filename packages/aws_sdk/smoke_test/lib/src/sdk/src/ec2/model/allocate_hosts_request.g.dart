// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocate_hosts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocateHostsRequest extends AllocateHostsRequest {
  @override
  final AutoPlacement? autoPlacement;
  @override
  final String? availabilityZone;
  @override
  final String? clientToken;
  @override
  final String? instanceType;
  @override
  final String? instanceFamily;
  @override
  final int quantity;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final HostRecovery? hostRecovery;
  @override
  final String? outpostArn;
  @override
  final HostMaintenance? hostMaintenance;
  @override
  final _i3.BuiltList<String>? assetIds;

  factory _$AllocateHostsRequest(
          [void Function(AllocateHostsRequestBuilder)? updates]) =>
      (new AllocateHostsRequestBuilder()..update(updates))._build();

  _$AllocateHostsRequest._(
      {this.autoPlacement,
      this.availabilityZone,
      this.clientToken,
      this.instanceType,
      this.instanceFamily,
      required this.quantity,
      this.tagSpecifications,
      this.hostRecovery,
      this.outpostArn,
      this.hostMaintenance,
      this.assetIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'AllocateHostsRequest', 'quantity');
  }

  @override
  AllocateHostsRequest rebuild(
          void Function(AllocateHostsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocateHostsRequestBuilder toBuilder() =>
      new AllocateHostsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocateHostsRequest &&
        autoPlacement == other.autoPlacement &&
        availabilityZone == other.availabilityZone &&
        clientToken == other.clientToken &&
        instanceType == other.instanceType &&
        instanceFamily == other.instanceFamily &&
        quantity == other.quantity &&
        tagSpecifications == other.tagSpecifications &&
        hostRecovery == other.hostRecovery &&
        outpostArn == other.outpostArn &&
        hostMaintenance == other.hostMaintenance &&
        assetIds == other.assetIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoPlacement.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, hostRecovery.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, hostMaintenance.hashCode);
    _$hash = $jc(_$hash, assetIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllocateHostsRequestBuilder
    implements Builder<AllocateHostsRequest, AllocateHostsRequestBuilder> {
  _$AllocateHostsRequest? _$v;

  AutoPlacement? _autoPlacement;
  AutoPlacement? get autoPlacement => _$this._autoPlacement;
  set autoPlacement(AutoPlacement? autoPlacement) =>
      _$this._autoPlacement = autoPlacement;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  HostRecovery? _hostRecovery;
  HostRecovery? get hostRecovery => _$this._hostRecovery;
  set hostRecovery(HostRecovery? hostRecovery) =>
      _$this._hostRecovery = hostRecovery;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  HostMaintenance? _hostMaintenance;
  HostMaintenance? get hostMaintenance => _$this._hostMaintenance;
  set hostMaintenance(HostMaintenance? hostMaintenance) =>
      _$this._hostMaintenance = hostMaintenance;

  _i3.ListBuilder<String>? _assetIds;
  _i3.ListBuilder<String> get assetIds =>
      _$this._assetIds ??= new _i3.ListBuilder<String>();
  set assetIds(_i3.ListBuilder<String>? assetIds) =>
      _$this._assetIds = assetIds;

  AllocateHostsRequestBuilder() {
    AllocateHostsRequest._init(this);
  }

  AllocateHostsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoPlacement = $v.autoPlacement;
      _availabilityZone = $v.availabilityZone;
      _clientToken = $v.clientToken;
      _instanceType = $v.instanceType;
      _instanceFamily = $v.instanceFamily;
      _quantity = $v.quantity;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _hostRecovery = $v.hostRecovery;
      _outpostArn = $v.outpostArn;
      _hostMaintenance = $v.hostMaintenance;
      _assetIds = $v.assetIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocateHostsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllocateHostsRequest;
  }

  @override
  void update(void Function(AllocateHostsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocateHostsRequest build() => _build();

  _$AllocateHostsRequest _build() {
    _$AllocateHostsRequest _$result;
    try {
      _$result = _$v ??
          new _$AllocateHostsRequest._(
              autoPlacement: autoPlacement,
              availabilityZone: availabilityZone,
              clientToken: clientToken,
              instanceType: instanceType,
              instanceFamily: instanceFamily,
              quantity: BuiltValueNullFieldError.checkNotNull(
                  quantity, r'AllocateHostsRequest', 'quantity'),
              tagSpecifications: _tagSpecifications?.build(),
              hostRecovery: hostRecovery,
              outpostArn: outpostArn,
              hostMaintenance: hostMaintenance,
              assetIds: _assetIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();

        _$failedField = 'assetIds';
        _assetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllocateHostsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
