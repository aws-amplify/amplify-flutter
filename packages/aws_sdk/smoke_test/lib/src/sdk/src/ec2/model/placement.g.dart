// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Placement extends Placement {
  @override
  final String? availabilityZone;
  @override
  final String? affinity;
  @override
  final String? groupName;
  @override
  final int partitionNumber;
  @override
  final String? hostId;
  @override
  final Tenancy? tenancy;
  @override
  final String? spreadDomain;
  @override
  final String? hostResourceGroupArn;
  @override
  final String? groupId;

  factory _$Placement([void Function(PlacementBuilder)? updates]) =>
      (new PlacementBuilder()..update(updates))._build();

  _$Placement._(
      {this.availabilityZone,
      this.affinity,
      this.groupName,
      required this.partitionNumber,
      this.hostId,
      this.tenancy,
      this.spreadDomain,
      this.hostResourceGroupArn,
      this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        partitionNumber, r'Placement', 'partitionNumber');
  }

  @override
  Placement rebuild(void Function(PlacementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacementBuilder toBuilder() => new PlacementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Placement &&
        availabilityZone == other.availabilityZone &&
        affinity == other.affinity &&
        groupName == other.groupName &&
        partitionNumber == other.partitionNumber &&
        hostId == other.hostId &&
        tenancy == other.tenancy &&
        spreadDomain == other.spreadDomain &&
        hostResourceGroupArn == other.hostResourceGroupArn &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, affinity.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, partitionNumber.hashCode);
    _$hash = $jc(_$hash, hostId.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, spreadDomain.hashCode);
    _$hash = $jc(_$hash, hostResourceGroupArn.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PlacementBuilder implements Builder<Placement, PlacementBuilder> {
  _$Placement? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _affinity;
  String? get affinity => _$this._affinity;
  set affinity(String? affinity) => _$this._affinity = affinity;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  int? _partitionNumber;
  int? get partitionNumber => _$this._partitionNumber;
  set partitionNumber(int? partitionNumber) =>
      _$this._partitionNumber = partitionNumber;

  String? _hostId;
  String? get hostId => _$this._hostId;
  set hostId(String? hostId) => _$this._hostId = hostId;

  Tenancy? _tenancy;
  Tenancy? get tenancy => _$this._tenancy;
  set tenancy(Tenancy? tenancy) => _$this._tenancy = tenancy;

  String? _spreadDomain;
  String? get spreadDomain => _$this._spreadDomain;
  set spreadDomain(String? spreadDomain) => _$this._spreadDomain = spreadDomain;

  String? _hostResourceGroupArn;
  String? get hostResourceGroupArn => _$this._hostResourceGroupArn;
  set hostResourceGroupArn(String? hostResourceGroupArn) =>
      _$this._hostResourceGroupArn = hostResourceGroupArn;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  PlacementBuilder() {
    Placement._init(this);
  }

  PlacementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _affinity = $v.affinity;
      _groupName = $v.groupName;
      _partitionNumber = $v.partitionNumber;
      _hostId = $v.hostId;
      _tenancy = $v.tenancy;
      _spreadDomain = $v.spreadDomain;
      _hostResourceGroupArn = $v.hostResourceGroupArn;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Placement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Placement;
  }

  @override
  void update(void Function(PlacementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Placement build() => _build();

  _$Placement _build() {
    final _$result = _$v ??
        new _$Placement._(
            availabilityZone: availabilityZone,
            affinity: affinity,
            groupName: groupName,
            partitionNumber: BuiltValueNullFieldError.checkNotNull(
                partitionNumber, r'Placement', 'partitionNumber'),
            hostId: hostId,
            tenancy: tenancy,
            spreadDomain: spreadDomain,
            hostResourceGroupArn: hostResourceGroupArn,
            groupId: groupId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
