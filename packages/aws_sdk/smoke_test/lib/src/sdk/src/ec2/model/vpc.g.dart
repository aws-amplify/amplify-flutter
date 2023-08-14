// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Vpc extends Vpc {
  @override
  final String? cidrBlock;
  @override
  final String? dhcpOptionsId;
  @override
  final VpcState? state;
  @override
  final String? vpcId;
  @override
  final String? ownerId;
  @override
  final Tenancy? instanceTenancy;
  @override
  final _i2.BuiltList<VpcIpv6CidrBlockAssociation>? ipv6CidrBlockAssociationSet;
  @override
  final _i2.BuiltList<VpcCidrBlockAssociation>? cidrBlockAssociationSet;
  @override
  final bool isDefault;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$Vpc([void Function(VpcBuilder)? updates]) =>
      (new VpcBuilder()..update(updates))._build();

  _$Vpc._(
      {this.cidrBlock,
      this.dhcpOptionsId,
      this.state,
      this.vpcId,
      this.ownerId,
      this.instanceTenancy,
      this.ipv6CidrBlockAssociationSet,
      this.cidrBlockAssociationSet,
      required this.isDefault,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isDefault, r'Vpc', 'isDefault');
  }

  @override
  Vpc rebuild(void Function(VpcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcBuilder toBuilder() => new VpcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vpc &&
        cidrBlock == other.cidrBlock &&
        dhcpOptionsId == other.dhcpOptionsId &&
        state == other.state &&
        vpcId == other.vpcId &&
        ownerId == other.ownerId &&
        instanceTenancy == other.instanceTenancy &&
        ipv6CidrBlockAssociationSet == other.ipv6CidrBlockAssociationSet &&
        cidrBlockAssociationSet == other.cidrBlockAssociationSet &&
        isDefault == other.isDefault &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, dhcpOptionsId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockAssociationSet.hashCode);
    _$hash = $jc(_$hash, cidrBlockAssociationSet.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcBuilder implements Builder<Vpc, VpcBuilder> {
  _$Vpc? _$v;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  String? _dhcpOptionsId;
  String? get dhcpOptionsId => _$this._dhcpOptionsId;
  set dhcpOptionsId(String? dhcpOptionsId) =>
      _$this._dhcpOptionsId = dhcpOptionsId;

  VpcState? _state;
  VpcState? get state => _$this._state;
  set state(VpcState? state) => _$this._state = state;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  Tenancy? _instanceTenancy;
  Tenancy? get instanceTenancy => _$this._instanceTenancy;
  set instanceTenancy(Tenancy? instanceTenancy) =>
      _$this._instanceTenancy = instanceTenancy;

  _i2.ListBuilder<VpcIpv6CidrBlockAssociation>? _ipv6CidrBlockAssociationSet;
  _i2.ListBuilder<VpcIpv6CidrBlockAssociation>
      get ipv6CidrBlockAssociationSet => _$this._ipv6CidrBlockAssociationSet ??=
          new _i2.ListBuilder<VpcIpv6CidrBlockAssociation>();
  set ipv6CidrBlockAssociationSet(
          _i2.ListBuilder<VpcIpv6CidrBlockAssociation>?
              ipv6CidrBlockAssociationSet) =>
      _$this._ipv6CidrBlockAssociationSet = ipv6CidrBlockAssociationSet;

  _i2.ListBuilder<VpcCidrBlockAssociation>? _cidrBlockAssociationSet;
  _i2.ListBuilder<VpcCidrBlockAssociation> get cidrBlockAssociationSet =>
      _$this._cidrBlockAssociationSet ??=
          new _i2.ListBuilder<VpcCidrBlockAssociation>();
  set cidrBlockAssociationSet(
          _i2.ListBuilder<VpcCidrBlockAssociation>? cidrBlockAssociationSet) =>
      _$this._cidrBlockAssociationSet = cidrBlockAssociationSet;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VpcBuilder() {
    Vpc._init(this);
  }

  VpcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrBlock = $v.cidrBlock;
      _dhcpOptionsId = $v.dhcpOptionsId;
      _state = $v.state;
      _vpcId = $v.vpcId;
      _ownerId = $v.ownerId;
      _instanceTenancy = $v.instanceTenancy;
      _ipv6CidrBlockAssociationSet =
          $v.ipv6CidrBlockAssociationSet?.toBuilder();
      _cidrBlockAssociationSet = $v.cidrBlockAssociationSet?.toBuilder();
      _isDefault = $v.isDefault;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vpc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Vpc;
  }

  @override
  void update(void Function(VpcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Vpc build() => _build();

  _$Vpc _build() {
    _$Vpc _$result;
    try {
      _$result = _$v ??
          new _$Vpc._(
              cidrBlock: cidrBlock,
              dhcpOptionsId: dhcpOptionsId,
              state: state,
              vpcId: vpcId,
              ownerId: ownerId,
              instanceTenancy: instanceTenancy,
              ipv6CidrBlockAssociationSet:
                  _ipv6CidrBlockAssociationSet?.build(),
              cidrBlockAssociationSet: _cidrBlockAssociationSet?.build(),
              isDefault: BuiltValueNullFieldError.checkNotNull(
                  isDefault, r'Vpc', 'isDefault'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockAssociationSet';
        _ipv6CidrBlockAssociationSet?.build();
        _$failedField = 'cidrBlockAssociationSet';
        _cidrBlockAssociationSet?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Vpc', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
