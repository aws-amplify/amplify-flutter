// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_group_reference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroupReference extends SecurityGroupReference {
  @override
  final String? groupId;
  @override
  final String? referencingVpcId;
  @override
  final String? vpcPeeringConnectionId;

  factory _$SecurityGroupReference(
          [void Function(SecurityGroupReferenceBuilder)? updates]) =>
      (new SecurityGroupReferenceBuilder()..update(updates))._build();

  _$SecurityGroupReference._(
      {this.groupId, this.referencingVpcId, this.vpcPeeringConnectionId})
      : super._();

  @override
  SecurityGroupReference rebuild(
          void Function(SecurityGroupReferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupReferenceBuilder toBuilder() =>
      new SecurityGroupReferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroupReference &&
        groupId == other.groupId &&
        referencingVpcId == other.referencingVpcId &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, referencingVpcId.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupReferenceBuilder
    implements Builder<SecurityGroupReference, SecurityGroupReferenceBuilder> {
  _$SecurityGroupReference? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _referencingVpcId;
  String? get referencingVpcId => _$this._referencingVpcId;
  set referencingVpcId(String? referencingVpcId) =>
      _$this._referencingVpcId = referencingVpcId;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  SecurityGroupReferenceBuilder();

  SecurityGroupReferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _referencingVpcId = $v.referencingVpcId;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroupReference other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroupReference;
  }

  @override
  void update(void Function(SecurityGroupReferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroupReference build() => _build();

  _$SecurityGroupReference _build() {
    final _$result = _$v ??
        new _$SecurityGroupReference._(
            groupId: groupId,
            referencingVpcId: referencingVpcId,
            vpcPeeringConnectionId: vpcPeeringConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
