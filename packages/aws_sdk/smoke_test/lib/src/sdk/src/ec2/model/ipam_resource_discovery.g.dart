// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_resource_discovery.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamResourceDiscovery extends IpamResourceDiscovery {
  @override
  final String? ownerId;
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final String? ipamResourceDiscoveryArn;
  @override
  final String? ipamResourceDiscoveryRegion;
  @override
  final String? description;
  @override
  final _i2.BuiltList<IpamOperatingRegion>? operatingRegions;
  @override
  final bool isDefault;
  @override
  final IpamResourceDiscoveryState? state;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$IpamResourceDiscovery(
          [void Function(IpamResourceDiscoveryBuilder)? updates]) =>
      (new IpamResourceDiscoveryBuilder()..update(updates))._build();

  _$IpamResourceDiscovery._(
      {this.ownerId,
      this.ipamResourceDiscoveryId,
      this.ipamResourceDiscoveryArn,
      this.ipamResourceDiscoveryRegion,
      this.description,
      this.operatingRegions,
      required this.isDefault,
      this.state,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isDefault, r'IpamResourceDiscovery', 'isDefault');
  }

  @override
  IpamResourceDiscovery rebuild(
          void Function(IpamResourceDiscoveryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamResourceDiscoveryBuilder toBuilder() =>
      new IpamResourceDiscoveryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamResourceDiscovery &&
        ownerId == other.ownerId &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        ipamResourceDiscoveryArn == other.ipamResourceDiscoveryArn &&
        ipamResourceDiscoveryRegion == other.ipamResourceDiscoveryRegion &&
        description == other.description &&
        operatingRegions == other.operatingRegions &&
        isDefault == other.isDefault &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryArn.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryRegion.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, operatingRegions.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamResourceDiscoveryBuilder
    implements Builder<IpamResourceDiscovery, IpamResourceDiscoveryBuilder> {
  _$IpamResourceDiscovery? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  String? _ipamResourceDiscoveryArn;
  String? get ipamResourceDiscoveryArn => _$this._ipamResourceDiscoveryArn;
  set ipamResourceDiscoveryArn(String? ipamResourceDiscoveryArn) =>
      _$this._ipamResourceDiscoveryArn = ipamResourceDiscoveryArn;

  String? _ipamResourceDiscoveryRegion;
  String? get ipamResourceDiscoveryRegion =>
      _$this._ipamResourceDiscoveryRegion;
  set ipamResourceDiscoveryRegion(String? ipamResourceDiscoveryRegion) =>
      _$this._ipamResourceDiscoveryRegion = ipamResourceDiscoveryRegion;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<IpamOperatingRegion>? _operatingRegions;
  _i2.ListBuilder<IpamOperatingRegion> get operatingRegions =>
      _$this._operatingRegions ??= new _i2.ListBuilder<IpamOperatingRegion>();
  set operatingRegions(
          _i2.ListBuilder<IpamOperatingRegion>? operatingRegions) =>
      _$this._operatingRegions = operatingRegions;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  IpamResourceDiscoveryState? _state;
  IpamResourceDiscoveryState? get state => _$this._state;
  set state(IpamResourceDiscoveryState? state) => _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  IpamResourceDiscoveryBuilder() {
    IpamResourceDiscovery._init(this);
  }

  IpamResourceDiscoveryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _ipamResourceDiscoveryArn = $v.ipamResourceDiscoveryArn;
      _ipamResourceDiscoveryRegion = $v.ipamResourceDiscoveryRegion;
      _description = $v.description;
      _operatingRegions = $v.operatingRegions?.toBuilder();
      _isDefault = $v.isDefault;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamResourceDiscovery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamResourceDiscovery;
  }

  @override
  void update(void Function(IpamResourceDiscoveryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamResourceDiscovery build() => _build();

  _$IpamResourceDiscovery _build() {
    _$IpamResourceDiscovery _$result;
    try {
      _$result = _$v ??
          new _$IpamResourceDiscovery._(
              ownerId: ownerId,
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              ipamResourceDiscoveryArn: ipamResourceDiscoveryArn,
              ipamResourceDiscoveryRegion: ipamResourceDiscoveryRegion,
              description: description,
              operatingRegions: _operatingRegions?.build(),
              isDefault: BuiltValueNullFieldError.checkNotNull(
                  isDefault, r'IpamResourceDiscovery', 'isDefault'),
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatingRegions';
        _operatingRegions?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamResourceDiscovery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
