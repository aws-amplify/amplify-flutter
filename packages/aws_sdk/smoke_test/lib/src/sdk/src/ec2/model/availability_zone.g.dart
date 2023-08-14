// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_zone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityZone extends AvailabilityZone {
  @override
  final AvailabilityZoneState? state;
  @override
  final AvailabilityZoneOptInStatus? optInStatus;
  @override
  final _i2.BuiltList<AvailabilityZoneMessage>? messages;
  @override
  final String? regionName;
  @override
  final String? zoneName;
  @override
  final String? zoneId;
  @override
  final String? groupName;
  @override
  final String? networkBorderGroup;
  @override
  final String? zoneType;
  @override
  final String? parentZoneName;
  @override
  final String? parentZoneId;

  factory _$AvailabilityZone(
          [void Function(AvailabilityZoneBuilder)? updates]) =>
      (new AvailabilityZoneBuilder()..update(updates))._build();

  _$AvailabilityZone._(
      {this.state,
      this.optInStatus,
      this.messages,
      this.regionName,
      this.zoneName,
      this.zoneId,
      this.groupName,
      this.networkBorderGroup,
      this.zoneType,
      this.parentZoneName,
      this.parentZoneId})
      : super._();

  @override
  AvailabilityZone rebuild(void Function(AvailabilityZoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailabilityZoneBuilder toBuilder() =>
      new AvailabilityZoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityZone &&
        state == other.state &&
        optInStatus == other.optInStatus &&
        messages == other.messages &&
        regionName == other.regionName &&
        zoneName == other.zoneName &&
        zoneId == other.zoneId &&
        groupName == other.groupName &&
        networkBorderGroup == other.networkBorderGroup &&
        zoneType == other.zoneType &&
        parentZoneName == other.parentZoneName &&
        parentZoneId == other.parentZoneId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, optInStatus.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, zoneName.hashCode);
    _$hash = $jc(_$hash, zoneId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, networkBorderGroup.hashCode);
    _$hash = $jc(_$hash, zoneType.hashCode);
    _$hash = $jc(_$hash, parentZoneName.hashCode);
    _$hash = $jc(_$hash, parentZoneId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AvailabilityZoneBuilder
    implements Builder<AvailabilityZone, AvailabilityZoneBuilder> {
  _$AvailabilityZone? _$v;

  AvailabilityZoneState? _state;
  AvailabilityZoneState? get state => _$this._state;
  set state(AvailabilityZoneState? state) => _$this._state = state;

  AvailabilityZoneOptInStatus? _optInStatus;
  AvailabilityZoneOptInStatus? get optInStatus => _$this._optInStatus;
  set optInStatus(AvailabilityZoneOptInStatus? optInStatus) =>
      _$this._optInStatus = optInStatus;

  _i2.ListBuilder<AvailabilityZoneMessage>? _messages;
  _i2.ListBuilder<AvailabilityZoneMessage> get messages =>
      _$this._messages ??= new _i2.ListBuilder<AvailabilityZoneMessage>();
  set messages(_i2.ListBuilder<AvailabilityZoneMessage>? messages) =>
      _$this._messages = messages;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _zoneName;
  String? get zoneName => _$this._zoneName;
  set zoneName(String? zoneName) => _$this._zoneName = zoneName;

  String? _zoneId;
  String? get zoneId => _$this._zoneId;
  set zoneId(String? zoneId) => _$this._zoneId = zoneId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _networkBorderGroup;
  String? get networkBorderGroup => _$this._networkBorderGroup;
  set networkBorderGroup(String? networkBorderGroup) =>
      _$this._networkBorderGroup = networkBorderGroup;

  String? _zoneType;
  String? get zoneType => _$this._zoneType;
  set zoneType(String? zoneType) => _$this._zoneType = zoneType;

  String? _parentZoneName;
  String? get parentZoneName => _$this._parentZoneName;
  set parentZoneName(String? parentZoneName) =>
      _$this._parentZoneName = parentZoneName;

  String? _parentZoneId;
  String? get parentZoneId => _$this._parentZoneId;
  set parentZoneId(String? parentZoneId) => _$this._parentZoneId = parentZoneId;

  AvailabilityZoneBuilder();

  AvailabilityZoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _optInStatus = $v.optInStatus;
      _messages = $v.messages?.toBuilder();
      _regionName = $v.regionName;
      _zoneName = $v.zoneName;
      _zoneId = $v.zoneId;
      _groupName = $v.groupName;
      _networkBorderGroup = $v.networkBorderGroup;
      _zoneType = $v.zoneType;
      _parentZoneName = $v.parentZoneName;
      _parentZoneId = $v.parentZoneId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityZone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvailabilityZone;
  }

  @override
  void update(void Function(AvailabilityZoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityZone build() => _build();

  _$AvailabilityZone _build() {
    _$AvailabilityZone _$result;
    try {
      _$result = _$v ??
          new _$AvailabilityZone._(
              state: state,
              optInStatus: optInStatus,
              messages: _messages?.build(),
              regionName: regionName,
              zoneName: zoneName,
              zoneId: zoneId,
              groupName: groupName,
              networkBorderGroup: networkBorderGroup,
              zoneType: zoneType,
              parentZoneName: parentZoneName,
              parentZoneId: parentZoneId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AvailabilityZone', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
