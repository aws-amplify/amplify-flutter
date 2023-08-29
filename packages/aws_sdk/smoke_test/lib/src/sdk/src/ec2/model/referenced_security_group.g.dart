// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_security_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferencedSecurityGroup extends ReferencedSecurityGroup {
  @override
  final String? groupId;
  @override
  final String? peeringStatus;
  @override
  final String? userId;
  @override
  final String? vpcId;
  @override
  final String? vpcPeeringConnectionId;

  factory _$ReferencedSecurityGroup(
          [void Function(ReferencedSecurityGroupBuilder)? updates]) =>
      (new ReferencedSecurityGroupBuilder()..update(updates))._build();

  _$ReferencedSecurityGroup._(
      {this.groupId,
      this.peeringStatus,
      this.userId,
      this.vpcId,
      this.vpcPeeringConnectionId})
      : super._();

  @override
  ReferencedSecurityGroup rebuild(
          void Function(ReferencedSecurityGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferencedSecurityGroupBuilder toBuilder() =>
      new ReferencedSecurityGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferencedSecurityGroup &&
        groupId == other.groupId &&
        peeringStatus == other.peeringStatus &&
        userId == other.userId &&
        vpcId == other.vpcId &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, peeringStatus.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReferencedSecurityGroupBuilder
    implements
        Builder<ReferencedSecurityGroup, ReferencedSecurityGroupBuilder> {
  _$ReferencedSecurityGroup? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _peeringStatus;
  String? get peeringStatus => _$this._peeringStatus;
  set peeringStatus(String? peeringStatus) =>
      _$this._peeringStatus = peeringStatus;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  ReferencedSecurityGroupBuilder();

  ReferencedSecurityGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _peeringStatus = $v.peeringStatus;
      _userId = $v.userId;
      _vpcId = $v.vpcId;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferencedSecurityGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReferencedSecurityGroup;
  }

  @override
  void update(void Function(ReferencedSecurityGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferencedSecurityGroup build() => _build();

  _$ReferencedSecurityGroup _build() {
    final _$result = _$v ??
        new _$ReferencedSecurityGroup._(
            groupId: groupId,
            peeringStatus: peeringStatus,
            userId: userId,
            vpcId: vpcId,
            vpcPeeringConnectionId: vpcPeeringConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
