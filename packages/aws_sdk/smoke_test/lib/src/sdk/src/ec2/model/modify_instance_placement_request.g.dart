// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_placement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstancePlacementRequest extends ModifyInstancePlacementRequest {
  @override
  final Affinity? affinity;
  @override
  final String? groupName;
  @override
  final String? hostId;
  @override
  final String? instanceId;
  @override
  final HostTenancy? tenancy;
  @override
  final int partitionNumber;
  @override
  final String? hostResourceGroupArn;
  @override
  final String? groupId;

  factory _$ModifyInstancePlacementRequest(
          [void Function(ModifyInstancePlacementRequestBuilder)? updates]) =>
      (new ModifyInstancePlacementRequestBuilder()..update(updates))._build();

  _$ModifyInstancePlacementRequest._(
      {this.affinity,
      this.groupName,
      this.hostId,
      this.instanceId,
      this.tenancy,
      required this.partitionNumber,
      this.hostResourceGroupArn,
      this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        partitionNumber, r'ModifyInstancePlacementRequest', 'partitionNumber');
  }

  @override
  ModifyInstancePlacementRequest rebuild(
          void Function(ModifyInstancePlacementRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstancePlacementRequestBuilder toBuilder() =>
      new ModifyInstancePlacementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstancePlacementRequest &&
        affinity == other.affinity &&
        groupName == other.groupName &&
        hostId == other.hostId &&
        instanceId == other.instanceId &&
        tenancy == other.tenancy &&
        partitionNumber == other.partitionNumber &&
        hostResourceGroupArn == other.hostResourceGroupArn &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, affinity.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, hostId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, partitionNumber.hashCode);
    _$hash = $jc(_$hash, hostResourceGroupArn.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstancePlacementRequestBuilder
    implements
        Builder<ModifyInstancePlacementRequest,
            ModifyInstancePlacementRequestBuilder> {
  _$ModifyInstancePlacementRequest? _$v;

  Affinity? _affinity;
  Affinity? get affinity => _$this._affinity;
  set affinity(Affinity? affinity) => _$this._affinity = affinity;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _hostId;
  String? get hostId => _$this._hostId;
  set hostId(String? hostId) => _$this._hostId = hostId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  HostTenancy? _tenancy;
  HostTenancy? get tenancy => _$this._tenancy;
  set tenancy(HostTenancy? tenancy) => _$this._tenancy = tenancy;

  int? _partitionNumber;
  int? get partitionNumber => _$this._partitionNumber;
  set partitionNumber(int? partitionNumber) =>
      _$this._partitionNumber = partitionNumber;

  String? _hostResourceGroupArn;
  String? get hostResourceGroupArn => _$this._hostResourceGroupArn;
  set hostResourceGroupArn(String? hostResourceGroupArn) =>
      _$this._hostResourceGroupArn = hostResourceGroupArn;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  ModifyInstancePlacementRequestBuilder() {
    ModifyInstancePlacementRequest._init(this);
  }

  ModifyInstancePlacementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _affinity = $v.affinity;
      _groupName = $v.groupName;
      _hostId = $v.hostId;
      _instanceId = $v.instanceId;
      _tenancy = $v.tenancy;
      _partitionNumber = $v.partitionNumber;
      _hostResourceGroupArn = $v.hostResourceGroupArn;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstancePlacementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstancePlacementRequest;
  }

  @override
  void update(void Function(ModifyInstancePlacementRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstancePlacementRequest build() => _build();

  _$ModifyInstancePlacementRequest _build() {
    final _$result = _$v ??
        new _$ModifyInstancePlacementRequest._(
            affinity: affinity,
            groupName: groupName,
            hostId: hostId,
            instanceId: instanceId,
            tenancy: tenancy,
            partitionNumber: BuiltValueNullFieldError.checkNotNull(
                partitionNumber,
                r'ModifyInstancePlacementRequest',
                'partitionNumber'),
            hostResourceGroupArn: hostResourceGroupArn,
            groupId: groupId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
