// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id_group_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserIdGroupPair extends UserIdGroupPair {
  @override
  final String? description;
  @override
  final String? groupId;
  @override
  final String? groupName;
  @override
  final String? peeringStatus;
  @override
  final String? userId;
  @override
  final String? vpcId;
  @override
  final String? vpcPeeringConnectionId;

  factory _$UserIdGroupPair([void Function(UserIdGroupPairBuilder)? updates]) =>
      (new UserIdGroupPairBuilder()..update(updates))._build();

  _$UserIdGroupPair._(
      {this.description,
      this.groupId,
      this.groupName,
      this.peeringStatus,
      this.userId,
      this.vpcId,
      this.vpcPeeringConnectionId})
      : super._();

  @override
  UserIdGroupPair rebuild(void Function(UserIdGroupPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserIdGroupPairBuilder toBuilder() =>
      new UserIdGroupPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserIdGroupPair &&
        description == other.description &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        peeringStatus == other.peeringStatus &&
        userId == other.userId &&
        vpcId == other.vpcId &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, peeringStatus.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserIdGroupPairBuilder
    implements Builder<UserIdGroupPair, UserIdGroupPairBuilder> {
  _$UserIdGroupPair? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

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

  UserIdGroupPairBuilder();

  UserIdGroupPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _groupId = $v.groupId;
      _groupName = $v.groupName;
      _peeringStatus = $v.peeringStatus;
      _userId = $v.userId;
      _vpcId = $v.vpcId;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserIdGroupPair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserIdGroupPair;
  }

  @override
  void update(void Function(UserIdGroupPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserIdGroupPair build() => _build();

  _$UserIdGroupPair _build() {
    final _$result = _$v ??
        new _$UserIdGroupPair._(
            description: description,
            groupId: groupId,
            groupName: groupName,
            peeringStatus: peeringStatus,
            userId: userId,
            vpcId: vpcId,
            vpcPeeringConnectionId: vpcPeeringConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
