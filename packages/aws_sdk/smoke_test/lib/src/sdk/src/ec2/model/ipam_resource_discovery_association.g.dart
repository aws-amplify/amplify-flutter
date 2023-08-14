// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_resource_discovery_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamResourceDiscoveryAssociation
    extends IpamResourceDiscoveryAssociation {
  @override
  final String? ownerId;
  @override
  final String? ipamResourceDiscoveryAssociationId;
  @override
  final String? ipamResourceDiscoveryAssociationArn;
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final String? ipamId;
  @override
  final String? ipamArn;
  @override
  final String? ipamRegion;
  @override
  final bool isDefault;
  @override
  final IpamAssociatedResourceDiscoveryStatus? resourceDiscoveryStatus;
  @override
  final IpamResourceDiscoveryAssociationState? state;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$IpamResourceDiscoveryAssociation(
          [void Function(IpamResourceDiscoveryAssociationBuilder)? updates]) =>
      (new IpamResourceDiscoveryAssociationBuilder()..update(updates))._build();

  _$IpamResourceDiscoveryAssociation._(
      {this.ownerId,
      this.ipamResourceDiscoveryAssociationId,
      this.ipamResourceDiscoveryAssociationArn,
      this.ipamResourceDiscoveryId,
      this.ipamId,
      this.ipamArn,
      this.ipamRegion,
      required this.isDefault,
      this.resourceDiscoveryStatus,
      this.state,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isDefault, r'IpamResourceDiscoveryAssociation', 'isDefault');
  }

  @override
  IpamResourceDiscoveryAssociation rebuild(
          void Function(IpamResourceDiscoveryAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamResourceDiscoveryAssociationBuilder toBuilder() =>
      new IpamResourceDiscoveryAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamResourceDiscoveryAssociation &&
        ownerId == other.ownerId &&
        ipamResourceDiscoveryAssociationId ==
            other.ipamResourceDiscoveryAssociationId &&
        ipamResourceDiscoveryAssociationArn ==
            other.ipamResourceDiscoveryAssociationArn &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        ipamId == other.ipamId &&
        ipamArn == other.ipamArn &&
        ipamRegion == other.ipamRegion &&
        isDefault == other.isDefault &&
        resourceDiscoveryStatus == other.resourceDiscoveryStatus &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryAssociationId.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryAssociationArn.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, ipamArn.hashCode);
    _$hash = $jc(_$hash, ipamRegion.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, resourceDiscoveryStatus.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamResourceDiscoveryAssociationBuilder
    implements
        Builder<IpamResourceDiscoveryAssociation,
            IpamResourceDiscoveryAssociationBuilder> {
  _$IpamResourceDiscoveryAssociation? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ipamResourceDiscoveryAssociationId;
  String? get ipamResourceDiscoveryAssociationId =>
      _$this._ipamResourceDiscoveryAssociationId;
  set ipamResourceDiscoveryAssociationId(
          String? ipamResourceDiscoveryAssociationId) =>
      _$this._ipamResourceDiscoveryAssociationId =
          ipamResourceDiscoveryAssociationId;

  String? _ipamResourceDiscoveryAssociationArn;
  String? get ipamResourceDiscoveryAssociationArn =>
      _$this._ipamResourceDiscoveryAssociationArn;
  set ipamResourceDiscoveryAssociationArn(
          String? ipamResourceDiscoveryAssociationArn) =>
      _$this._ipamResourceDiscoveryAssociationArn =
          ipamResourceDiscoveryAssociationArn;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  String? _ipamArn;
  String? get ipamArn => _$this._ipamArn;
  set ipamArn(String? ipamArn) => _$this._ipamArn = ipamArn;

  String? _ipamRegion;
  String? get ipamRegion => _$this._ipamRegion;
  set ipamRegion(String? ipamRegion) => _$this._ipamRegion = ipamRegion;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  IpamAssociatedResourceDiscoveryStatus? _resourceDiscoveryStatus;
  IpamAssociatedResourceDiscoveryStatus? get resourceDiscoveryStatus =>
      _$this._resourceDiscoveryStatus;
  set resourceDiscoveryStatus(
          IpamAssociatedResourceDiscoveryStatus? resourceDiscoveryStatus) =>
      _$this._resourceDiscoveryStatus = resourceDiscoveryStatus;

  IpamResourceDiscoveryAssociationState? _state;
  IpamResourceDiscoveryAssociationState? get state => _$this._state;
  set state(IpamResourceDiscoveryAssociationState? state) =>
      _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  IpamResourceDiscoveryAssociationBuilder() {
    IpamResourceDiscoveryAssociation._init(this);
  }

  IpamResourceDiscoveryAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _ipamResourceDiscoveryAssociationId =
          $v.ipamResourceDiscoveryAssociationId;
      _ipamResourceDiscoveryAssociationArn =
          $v.ipamResourceDiscoveryAssociationArn;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _ipamId = $v.ipamId;
      _ipamArn = $v.ipamArn;
      _ipamRegion = $v.ipamRegion;
      _isDefault = $v.isDefault;
      _resourceDiscoveryStatus = $v.resourceDiscoveryStatus;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamResourceDiscoveryAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamResourceDiscoveryAssociation;
  }

  @override
  void update(void Function(IpamResourceDiscoveryAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamResourceDiscoveryAssociation build() => _build();

  _$IpamResourceDiscoveryAssociation _build() {
    _$IpamResourceDiscoveryAssociation _$result;
    try {
      _$result = _$v ??
          new _$IpamResourceDiscoveryAssociation._(
              ownerId: ownerId,
              ipamResourceDiscoveryAssociationId:
                  ipamResourceDiscoveryAssociationId,
              ipamResourceDiscoveryAssociationArn:
                  ipamResourceDiscoveryAssociationArn,
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              ipamId: ipamId,
              ipamArn: ipamArn,
              ipamRegion: ipamRegion,
              isDefault: BuiltValueNullFieldError.checkNotNull(
                  isDefault, r'IpamResourceDiscoveryAssociation', 'isDefault'),
              resourceDiscoveryStatus: resourceDiscoveryStatus,
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamResourceDiscoveryAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
