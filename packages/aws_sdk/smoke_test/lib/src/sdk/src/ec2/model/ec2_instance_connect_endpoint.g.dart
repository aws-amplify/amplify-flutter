// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ec2_instance_connect_endpoint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ec2InstanceConnectEndpoint extends Ec2InstanceConnectEndpoint {
  @override
  final String? ownerId;
  @override
  final String? instanceConnectEndpointId;
  @override
  final String? instanceConnectEndpointArn;
  @override
  final Ec2InstanceConnectEndpointState? state;
  @override
  final String? stateMessage;
  @override
  final String? dnsName;
  @override
  final String? fipsDnsName;
  @override
  final _i2.BuiltList<String>? networkInterfaceIds;
  @override
  final String? vpcId;
  @override
  final String? availabilityZone;
  @override
  final DateTime? createdAt;
  @override
  final String? subnetId;
  @override
  final bool preserveClientIp;
  @override
  final _i2.BuiltList<String>? securityGroupIds;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$Ec2InstanceConnectEndpoint(
          [void Function(Ec2InstanceConnectEndpointBuilder)? updates]) =>
      (new Ec2InstanceConnectEndpointBuilder()..update(updates))._build();

  _$Ec2InstanceConnectEndpoint._(
      {this.ownerId,
      this.instanceConnectEndpointId,
      this.instanceConnectEndpointArn,
      this.state,
      this.stateMessage,
      this.dnsName,
      this.fipsDnsName,
      this.networkInterfaceIds,
      this.vpcId,
      this.availabilityZone,
      this.createdAt,
      this.subnetId,
      required this.preserveClientIp,
      this.securityGroupIds,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        preserveClientIp, r'Ec2InstanceConnectEndpoint', 'preserveClientIp');
  }

  @override
  Ec2InstanceConnectEndpoint rebuild(
          void Function(Ec2InstanceConnectEndpointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ec2InstanceConnectEndpointBuilder toBuilder() =>
      new Ec2InstanceConnectEndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ec2InstanceConnectEndpoint &&
        ownerId == other.ownerId &&
        instanceConnectEndpointId == other.instanceConnectEndpointId &&
        instanceConnectEndpointArn == other.instanceConnectEndpointArn &&
        state == other.state &&
        stateMessage == other.stateMessage &&
        dnsName == other.dnsName &&
        fipsDnsName == other.fipsDnsName &&
        networkInterfaceIds == other.networkInterfaceIds &&
        vpcId == other.vpcId &&
        availabilityZone == other.availabilityZone &&
        createdAt == other.createdAt &&
        subnetId == other.subnetId &&
        preserveClientIp == other.preserveClientIp &&
        securityGroupIds == other.securityGroupIds &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, instanceConnectEndpointId.hashCode);
    _$hash = $jc(_$hash, instanceConnectEndpointArn.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateMessage.hashCode);
    _$hash = $jc(_$hash, dnsName.hashCode);
    _$hash = $jc(_$hash, fipsDnsName.hashCode);
    _$hash = $jc(_$hash, networkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, preserveClientIp.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ec2InstanceConnectEndpointBuilder
    implements
        Builder<Ec2InstanceConnectEndpoint, Ec2InstanceConnectEndpointBuilder> {
  _$Ec2InstanceConnectEndpoint? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _instanceConnectEndpointId;
  String? get instanceConnectEndpointId => _$this._instanceConnectEndpointId;
  set instanceConnectEndpointId(String? instanceConnectEndpointId) =>
      _$this._instanceConnectEndpointId = instanceConnectEndpointId;

  String? _instanceConnectEndpointArn;
  String? get instanceConnectEndpointArn => _$this._instanceConnectEndpointArn;
  set instanceConnectEndpointArn(String? instanceConnectEndpointArn) =>
      _$this._instanceConnectEndpointArn = instanceConnectEndpointArn;

  Ec2InstanceConnectEndpointState? _state;
  Ec2InstanceConnectEndpointState? get state => _$this._state;
  set state(Ec2InstanceConnectEndpointState? state) => _$this._state = state;

  String? _stateMessage;
  String? get stateMessage => _$this._stateMessage;
  set stateMessage(String? stateMessage) => _$this._stateMessage = stateMessage;

  String? _dnsName;
  String? get dnsName => _$this._dnsName;
  set dnsName(String? dnsName) => _$this._dnsName = dnsName;

  String? _fipsDnsName;
  String? get fipsDnsName => _$this._fipsDnsName;
  set fipsDnsName(String? fipsDnsName) => _$this._fipsDnsName = fipsDnsName;

  _i2.ListBuilder<String>? _networkInterfaceIds;
  _i2.ListBuilder<String> get networkInterfaceIds =>
      _$this._networkInterfaceIds ??= new _i2.ListBuilder<String>();
  set networkInterfaceIds(_i2.ListBuilder<String>? networkInterfaceIds) =>
      _$this._networkInterfaceIds = networkInterfaceIds;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  bool? _preserveClientIp;
  bool? get preserveClientIp => _$this._preserveClientIp;
  set preserveClientIp(bool? preserveClientIp) =>
      _$this._preserveClientIp = preserveClientIp;

  _i2.ListBuilder<String>? _securityGroupIds;
  _i2.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i2.ListBuilder<String>();
  set securityGroupIds(_i2.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  Ec2InstanceConnectEndpointBuilder() {
    Ec2InstanceConnectEndpoint._init(this);
  }

  Ec2InstanceConnectEndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _instanceConnectEndpointId = $v.instanceConnectEndpointId;
      _instanceConnectEndpointArn = $v.instanceConnectEndpointArn;
      _state = $v.state;
      _stateMessage = $v.stateMessage;
      _dnsName = $v.dnsName;
      _fipsDnsName = $v.fipsDnsName;
      _networkInterfaceIds = $v.networkInterfaceIds?.toBuilder();
      _vpcId = $v.vpcId;
      _availabilityZone = $v.availabilityZone;
      _createdAt = $v.createdAt;
      _subnetId = $v.subnetId;
      _preserveClientIp = $v.preserveClientIp;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ec2InstanceConnectEndpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ec2InstanceConnectEndpoint;
  }

  @override
  void update(void Function(Ec2InstanceConnectEndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ec2InstanceConnectEndpoint build() => _build();

  _$Ec2InstanceConnectEndpoint _build() {
    _$Ec2InstanceConnectEndpoint _$result;
    try {
      _$result = _$v ??
          new _$Ec2InstanceConnectEndpoint._(
              ownerId: ownerId,
              instanceConnectEndpointId: instanceConnectEndpointId,
              instanceConnectEndpointArn: instanceConnectEndpointArn,
              state: state,
              stateMessage: stateMessage,
              dnsName: dnsName,
              fipsDnsName: fipsDnsName,
              networkInterfaceIds: _networkInterfaceIds?.build(),
              vpcId: vpcId,
              availabilityZone: availabilityZone,
              createdAt: createdAt,
              subnetId: subnetId,
              preserveClientIp: BuiltValueNullFieldError.checkNotNull(
                  preserveClientIp,
                  r'Ec2InstanceConnectEndpoint',
                  'preserveClientIp'),
              securityGroupIds: _securityGroupIds?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfaceIds';
        _networkInterfaceIds?.build();

        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ec2InstanceConnectEndpoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
