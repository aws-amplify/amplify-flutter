// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_endpoint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcEndpoint extends VpcEndpoint {
  @override
  final String? vpcEndpointId;
  @override
  final VpcEndpointType? vpcEndpointType;
  @override
  final String? vpcId;
  @override
  final String? serviceName;
  @override
  final State? state;
  @override
  final String? policyDocument;
  @override
  final _i2.BuiltList<String>? routeTableIds;
  @override
  final _i2.BuiltList<String>? subnetIds;
  @override
  final _i2.BuiltList<SecurityGroupIdentifier>? groups;
  @override
  final IpAddressType? ipAddressType;
  @override
  final DnsOptions? dnsOptions;
  @override
  final bool privateDnsEnabled;
  @override
  final bool requesterManaged;
  @override
  final _i2.BuiltList<String>? networkInterfaceIds;
  @override
  final _i2.BuiltList<DnsEntry>? dnsEntries;
  @override
  final DateTime? creationTimestamp;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? ownerId;
  @override
  final LastError? lastError;

  factory _$VpcEndpoint([void Function(VpcEndpointBuilder)? updates]) =>
      (new VpcEndpointBuilder()..update(updates))._build();

  _$VpcEndpoint._(
      {this.vpcEndpointId,
      this.vpcEndpointType,
      this.vpcId,
      this.serviceName,
      this.state,
      this.policyDocument,
      this.routeTableIds,
      this.subnetIds,
      this.groups,
      this.ipAddressType,
      this.dnsOptions,
      required this.privateDnsEnabled,
      required this.requesterManaged,
      this.networkInterfaceIds,
      this.dnsEntries,
      this.creationTimestamp,
      this.tags,
      this.ownerId,
      this.lastError})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        privateDnsEnabled, r'VpcEndpoint', 'privateDnsEnabled');
    BuiltValueNullFieldError.checkNotNull(
        requesterManaged, r'VpcEndpoint', 'requesterManaged');
  }

  @override
  VpcEndpoint rebuild(void Function(VpcEndpointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcEndpointBuilder toBuilder() => new VpcEndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcEndpoint &&
        vpcEndpointId == other.vpcEndpointId &&
        vpcEndpointType == other.vpcEndpointType &&
        vpcId == other.vpcId &&
        serviceName == other.serviceName &&
        state == other.state &&
        policyDocument == other.policyDocument &&
        routeTableIds == other.routeTableIds &&
        subnetIds == other.subnetIds &&
        groups == other.groups &&
        ipAddressType == other.ipAddressType &&
        dnsOptions == other.dnsOptions &&
        privateDnsEnabled == other.privateDnsEnabled &&
        requesterManaged == other.requesterManaged &&
        networkInterfaceIds == other.networkInterfaceIds &&
        dnsEntries == other.dnsEntries &&
        creationTimestamp == other.creationTimestamp &&
        tags == other.tags &&
        ownerId == other.ownerId &&
        lastError == other.lastError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcEndpointId.hashCode);
    _$hash = $jc(_$hash, vpcEndpointType.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, routeTableIds.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ipAddressType.hashCode);
    _$hash = $jc(_$hash, dnsOptions.hashCode);
    _$hash = $jc(_$hash, privateDnsEnabled.hashCode);
    _$hash = $jc(_$hash, requesterManaged.hashCode);
    _$hash = $jc(_$hash, networkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, dnsEntries.hashCode);
    _$hash = $jc(_$hash, creationTimestamp.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcEndpointBuilder implements Builder<VpcEndpoint, VpcEndpointBuilder> {
  _$VpcEndpoint? _$v;

  String? _vpcEndpointId;
  String? get vpcEndpointId => _$this._vpcEndpointId;
  set vpcEndpointId(String? vpcEndpointId) =>
      _$this._vpcEndpointId = vpcEndpointId;

  VpcEndpointType? _vpcEndpointType;
  VpcEndpointType? get vpcEndpointType => _$this._vpcEndpointType;
  set vpcEndpointType(VpcEndpointType? vpcEndpointType) =>
      _$this._vpcEndpointType = vpcEndpointType;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  State? _state;
  State? get state => _$this._state;
  set state(State? state) => _$this._state = state;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  _i2.ListBuilder<String>? _routeTableIds;
  _i2.ListBuilder<String> get routeTableIds =>
      _$this._routeTableIds ??= new _i2.ListBuilder<String>();
  set routeTableIds(_i2.ListBuilder<String>? routeTableIds) =>
      _$this._routeTableIds = routeTableIds;

  _i2.ListBuilder<String>? _subnetIds;
  _i2.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i2.ListBuilder<String>();
  set subnetIds(_i2.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  _i2.ListBuilder<SecurityGroupIdentifier>? _groups;
  _i2.ListBuilder<SecurityGroupIdentifier> get groups =>
      _$this._groups ??= new _i2.ListBuilder<SecurityGroupIdentifier>();
  set groups(_i2.ListBuilder<SecurityGroupIdentifier>? groups) =>
      _$this._groups = groups;

  IpAddressType? _ipAddressType;
  IpAddressType? get ipAddressType => _$this._ipAddressType;
  set ipAddressType(IpAddressType? ipAddressType) =>
      _$this._ipAddressType = ipAddressType;

  DnsOptionsBuilder? _dnsOptions;
  DnsOptionsBuilder get dnsOptions =>
      _$this._dnsOptions ??= new DnsOptionsBuilder();
  set dnsOptions(DnsOptionsBuilder? dnsOptions) =>
      _$this._dnsOptions = dnsOptions;

  bool? _privateDnsEnabled;
  bool? get privateDnsEnabled => _$this._privateDnsEnabled;
  set privateDnsEnabled(bool? privateDnsEnabled) =>
      _$this._privateDnsEnabled = privateDnsEnabled;

  bool? _requesterManaged;
  bool? get requesterManaged => _$this._requesterManaged;
  set requesterManaged(bool? requesterManaged) =>
      _$this._requesterManaged = requesterManaged;

  _i2.ListBuilder<String>? _networkInterfaceIds;
  _i2.ListBuilder<String> get networkInterfaceIds =>
      _$this._networkInterfaceIds ??= new _i2.ListBuilder<String>();
  set networkInterfaceIds(_i2.ListBuilder<String>? networkInterfaceIds) =>
      _$this._networkInterfaceIds = networkInterfaceIds;

  _i2.ListBuilder<DnsEntry>? _dnsEntries;
  _i2.ListBuilder<DnsEntry> get dnsEntries =>
      _$this._dnsEntries ??= new _i2.ListBuilder<DnsEntry>();
  set dnsEntries(_i2.ListBuilder<DnsEntry>? dnsEntries) =>
      _$this._dnsEntries = dnsEntries;

  DateTime? _creationTimestamp;
  DateTime? get creationTimestamp => _$this._creationTimestamp;
  set creationTimestamp(DateTime? creationTimestamp) =>
      _$this._creationTimestamp = creationTimestamp;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  LastErrorBuilder? _lastError;
  LastErrorBuilder get lastError =>
      _$this._lastError ??= new LastErrorBuilder();
  set lastError(LastErrorBuilder? lastError) => _$this._lastError = lastError;

  VpcEndpointBuilder() {
    VpcEndpoint._init(this);
  }

  VpcEndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcEndpointId = $v.vpcEndpointId;
      _vpcEndpointType = $v.vpcEndpointType;
      _vpcId = $v.vpcId;
      _serviceName = $v.serviceName;
      _state = $v.state;
      _policyDocument = $v.policyDocument;
      _routeTableIds = $v.routeTableIds?.toBuilder();
      _subnetIds = $v.subnetIds?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _ipAddressType = $v.ipAddressType;
      _dnsOptions = $v.dnsOptions?.toBuilder();
      _privateDnsEnabled = $v.privateDnsEnabled;
      _requesterManaged = $v.requesterManaged;
      _networkInterfaceIds = $v.networkInterfaceIds?.toBuilder();
      _dnsEntries = $v.dnsEntries?.toBuilder();
      _creationTimestamp = $v.creationTimestamp;
      _tags = $v.tags?.toBuilder();
      _ownerId = $v.ownerId;
      _lastError = $v.lastError?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcEndpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcEndpoint;
  }

  @override
  void update(void Function(VpcEndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcEndpoint build() => _build();

  _$VpcEndpoint _build() {
    _$VpcEndpoint _$result;
    try {
      _$result = _$v ??
          new _$VpcEndpoint._(
              vpcEndpointId: vpcEndpointId,
              vpcEndpointType: vpcEndpointType,
              vpcId: vpcId,
              serviceName: serviceName,
              state: state,
              policyDocument: policyDocument,
              routeTableIds: _routeTableIds?.build(),
              subnetIds: _subnetIds?.build(),
              groups: _groups?.build(),
              ipAddressType: ipAddressType,
              dnsOptions: _dnsOptions?.build(),
              privateDnsEnabled: BuiltValueNullFieldError.checkNotNull(
                  privateDnsEnabled, r'VpcEndpoint', 'privateDnsEnabled'),
              requesterManaged: BuiltValueNullFieldError.checkNotNull(
                  requesterManaged, r'VpcEndpoint', 'requesterManaged'),
              networkInterfaceIds: _networkInterfaceIds?.build(),
              dnsEntries: _dnsEntries?.build(),
              creationTimestamp: creationTimestamp,
              tags: _tags?.build(),
              ownerId: ownerId,
              lastError: _lastError?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeTableIds';
        _routeTableIds?.build();
        _$failedField = 'subnetIds';
        _subnetIds?.build();
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'dnsOptions';
        _dnsOptions?.build();

        _$failedField = 'networkInterfaceIds';
        _networkInterfaceIds?.build();
        _$failedField = 'dnsEntries';
        _dnsEntries?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'lastError';
        _lastError?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcEndpoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
