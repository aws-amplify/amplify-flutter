// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_acl_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkAclAssociation extends NetworkAclAssociation {
  @override
  final String? networkAclAssociationId;
  @override
  final String? networkAclId;
  @override
  final String? subnetId;

  factory _$NetworkAclAssociation(
          [void Function(NetworkAclAssociationBuilder)? updates]) =>
      (new NetworkAclAssociationBuilder()..update(updates))._build();

  _$NetworkAclAssociation._(
      {this.networkAclAssociationId, this.networkAclId, this.subnetId})
      : super._();

  @override
  NetworkAclAssociation rebuild(
          void Function(NetworkAclAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkAclAssociationBuilder toBuilder() =>
      new NetworkAclAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkAclAssociation &&
        networkAclAssociationId == other.networkAclAssociationId &&
        networkAclId == other.networkAclId &&
        subnetId == other.subnetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkAclAssociationId.hashCode);
    _$hash = $jc(_$hash, networkAclId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkAclAssociationBuilder
    implements Builder<NetworkAclAssociation, NetworkAclAssociationBuilder> {
  _$NetworkAclAssociation? _$v;

  String? _networkAclAssociationId;
  String? get networkAclAssociationId => _$this._networkAclAssociationId;
  set networkAclAssociationId(String? networkAclAssociationId) =>
      _$this._networkAclAssociationId = networkAclAssociationId;

  String? _networkAclId;
  String? get networkAclId => _$this._networkAclId;
  set networkAclId(String? networkAclId) => _$this._networkAclId = networkAclId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  NetworkAclAssociationBuilder();

  NetworkAclAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkAclAssociationId = $v.networkAclAssociationId;
      _networkAclId = $v.networkAclId;
      _subnetId = $v.subnetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkAclAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkAclAssociation;
  }

  @override
  void update(void Function(NetworkAclAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkAclAssociation build() => _build();

  _$NetworkAclAssociation _build() {
    final _$result = _$v ??
        new _$NetworkAclAssociation._(
            networkAclAssociationId: networkAclAssociationId,
            networkAclId: networkAclId,
            subnetId: subnetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
