// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Host extends Host {
  @override
  final AutoPlacement? autoPlacement;
  @override
  final String? availabilityZone;
  @override
  final AvailableCapacity? availableCapacity;
  @override
  final String? clientToken;
  @override
  final String? hostId;
  @override
  final HostProperties? hostProperties;
  @override
  final String? hostReservationId;
  @override
  final _i2.BuiltList<HostInstance>? instances;
  @override
  final AllocationState? state;
  @override
  final DateTime? allocationTime;
  @override
  final DateTime? releaseTime;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final HostRecovery? hostRecovery;
  @override
  final AllowsMultipleInstanceTypes? allowsMultipleInstanceTypes;
  @override
  final String? ownerId;
  @override
  final String? availabilityZoneId;
  @override
  final bool memberOfServiceLinkedResourceGroup;
  @override
  final String? outpostArn;
  @override
  final HostMaintenance? hostMaintenance;
  @override
  final String? assetId;

  factory _$Host([void Function(HostBuilder)? updates]) =>
      (new HostBuilder()..update(updates))._build();

  _$Host._(
      {this.autoPlacement,
      this.availabilityZone,
      this.availableCapacity,
      this.clientToken,
      this.hostId,
      this.hostProperties,
      this.hostReservationId,
      this.instances,
      this.state,
      this.allocationTime,
      this.releaseTime,
      this.tags,
      this.hostRecovery,
      this.allowsMultipleInstanceTypes,
      this.ownerId,
      this.availabilityZoneId,
      required this.memberOfServiceLinkedResourceGroup,
      this.outpostArn,
      this.hostMaintenance,
      this.assetId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(memberOfServiceLinkedResourceGroup,
        r'Host', 'memberOfServiceLinkedResourceGroup');
  }

  @override
  Host rebuild(void Function(HostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostBuilder toBuilder() => new HostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Host &&
        autoPlacement == other.autoPlacement &&
        availabilityZone == other.availabilityZone &&
        availableCapacity == other.availableCapacity &&
        clientToken == other.clientToken &&
        hostId == other.hostId &&
        hostProperties == other.hostProperties &&
        hostReservationId == other.hostReservationId &&
        instances == other.instances &&
        state == other.state &&
        allocationTime == other.allocationTime &&
        releaseTime == other.releaseTime &&
        tags == other.tags &&
        hostRecovery == other.hostRecovery &&
        allowsMultipleInstanceTypes == other.allowsMultipleInstanceTypes &&
        ownerId == other.ownerId &&
        availabilityZoneId == other.availabilityZoneId &&
        memberOfServiceLinkedResourceGroup ==
            other.memberOfServiceLinkedResourceGroup &&
        outpostArn == other.outpostArn &&
        hostMaintenance == other.hostMaintenance &&
        assetId == other.assetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoPlacement.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, availableCapacity.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, hostId.hashCode);
    _$hash = $jc(_$hash, hostProperties.hashCode);
    _$hash = $jc(_$hash, hostReservationId.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, allocationTime.hashCode);
    _$hash = $jc(_$hash, releaseTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, hostRecovery.hashCode);
    _$hash = $jc(_$hash, allowsMultipleInstanceTypes.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, memberOfServiceLinkedResourceGroup.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, hostMaintenance.hashCode);
    _$hash = $jc(_$hash, assetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostBuilder implements Builder<Host, HostBuilder> {
  _$Host? _$v;

  AutoPlacement? _autoPlacement;
  AutoPlacement? get autoPlacement => _$this._autoPlacement;
  set autoPlacement(AutoPlacement? autoPlacement) =>
      _$this._autoPlacement = autoPlacement;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  AvailableCapacityBuilder? _availableCapacity;
  AvailableCapacityBuilder get availableCapacity =>
      _$this._availableCapacity ??= new AvailableCapacityBuilder();
  set availableCapacity(AvailableCapacityBuilder? availableCapacity) =>
      _$this._availableCapacity = availableCapacity;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _hostId;
  String? get hostId => _$this._hostId;
  set hostId(String? hostId) => _$this._hostId = hostId;

  HostPropertiesBuilder? _hostProperties;
  HostPropertiesBuilder get hostProperties =>
      _$this._hostProperties ??= new HostPropertiesBuilder();
  set hostProperties(HostPropertiesBuilder? hostProperties) =>
      _$this._hostProperties = hostProperties;

  String? _hostReservationId;
  String? get hostReservationId => _$this._hostReservationId;
  set hostReservationId(String? hostReservationId) =>
      _$this._hostReservationId = hostReservationId;

  _i2.ListBuilder<HostInstance>? _instances;
  _i2.ListBuilder<HostInstance> get instances =>
      _$this._instances ??= new _i2.ListBuilder<HostInstance>();
  set instances(_i2.ListBuilder<HostInstance>? instances) =>
      _$this._instances = instances;

  AllocationState? _state;
  AllocationState? get state => _$this._state;
  set state(AllocationState? state) => _$this._state = state;

  DateTime? _allocationTime;
  DateTime? get allocationTime => _$this._allocationTime;
  set allocationTime(DateTime? allocationTime) =>
      _$this._allocationTime = allocationTime;

  DateTime? _releaseTime;
  DateTime? get releaseTime => _$this._releaseTime;
  set releaseTime(DateTime? releaseTime) => _$this._releaseTime = releaseTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  HostRecovery? _hostRecovery;
  HostRecovery? get hostRecovery => _$this._hostRecovery;
  set hostRecovery(HostRecovery? hostRecovery) =>
      _$this._hostRecovery = hostRecovery;

  AllowsMultipleInstanceTypes? _allowsMultipleInstanceTypes;
  AllowsMultipleInstanceTypes? get allowsMultipleInstanceTypes =>
      _$this._allowsMultipleInstanceTypes;
  set allowsMultipleInstanceTypes(
          AllowsMultipleInstanceTypes? allowsMultipleInstanceTypes) =>
      _$this._allowsMultipleInstanceTypes = allowsMultipleInstanceTypes;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  bool? _memberOfServiceLinkedResourceGroup;
  bool? get memberOfServiceLinkedResourceGroup =>
      _$this._memberOfServiceLinkedResourceGroup;
  set memberOfServiceLinkedResourceGroup(
          bool? memberOfServiceLinkedResourceGroup) =>
      _$this._memberOfServiceLinkedResourceGroup =
          memberOfServiceLinkedResourceGroup;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  HostMaintenance? _hostMaintenance;
  HostMaintenance? get hostMaintenance => _$this._hostMaintenance;
  set hostMaintenance(HostMaintenance? hostMaintenance) =>
      _$this._hostMaintenance = hostMaintenance;

  String? _assetId;
  String? get assetId => _$this._assetId;
  set assetId(String? assetId) => _$this._assetId = assetId;

  HostBuilder() {
    Host._init(this);
  }

  HostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoPlacement = $v.autoPlacement;
      _availabilityZone = $v.availabilityZone;
      _availableCapacity = $v.availableCapacity?.toBuilder();
      _clientToken = $v.clientToken;
      _hostId = $v.hostId;
      _hostProperties = $v.hostProperties?.toBuilder();
      _hostReservationId = $v.hostReservationId;
      _instances = $v.instances?.toBuilder();
      _state = $v.state;
      _allocationTime = $v.allocationTime;
      _releaseTime = $v.releaseTime;
      _tags = $v.tags?.toBuilder();
      _hostRecovery = $v.hostRecovery;
      _allowsMultipleInstanceTypes = $v.allowsMultipleInstanceTypes;
      _ownerId = $v.ownerId;
      _availabilityZoneId = $v.availabilityZoneId;
      _memberOfServiceLinkedResourceGroup =
          $v.memberOfServiceLinkedResourceGroup;
      _outpostArn = $v.outpostArn;
      _hostMaintenance = $v.hostMaintenance;
      _assetId = $v.assetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Host other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Host;
  }

  @override
  void update(void Function(HostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Host build() => _build();

  _$Host _build() {
    _$Host _$result;
    try {
      _$result = _$v ??
          new _$Host._(
              autoPlacement: autoPlacement,
              availabilityZone: availabilityZone,
              availableCapacity: _availableCapacity?.build(),
              clientToken: clientToken,
              hostId: hostId,
              hostProperties: _hostProperties?.build(),
              hostReservationId: hostReservationId,
              instances: _instances?.build(),
              state: state,
              allocationTime: allocationTime,
              releaseTime: releaseTime,
              tags: _tags?.build(),
              hostRecovery: hostRecovery,
              allowsMultipleInstanceTypes: allowsMultipleInstanceTypes,
              ownerId: ownerId,
              availabilityZoneId: availabilityZoneId,
              memberOfServiceLinkedResourceGroup:
                  BuiltValueNullFieldError.checkNotNull(
                      memberOfServiceLinkedResourceGroup,
                      r'Host',
                      'memberOfServiceLinkedResourceGroup'),
              outpostArn: outpostArn,
              hostMaintenance: hostMaintenance,
              assetId: assetId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableCapacity';
        _availableCapacity?.build();

        _$failedField = 'hostProperties';
        _hostProperties?.build();

        _$failedField = 'instances';
        _instances?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Host', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
