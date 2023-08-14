// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamScope extends IpamScope {
  @override
  final String? ownerId;
  @override
  final String? ipamScopeId;
  @override
  final String? ipamScopeArn;
  @override
  final String? ipamArn;
  @override
  final String? ipamRegion;
  @override
  final IpamScopeType? ipamScopeType;
  @override
  final bool isDefault;
  @override
  final String? description;
  @override
  final int poolCount;
  @override
  final IpamScopeState? state;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$IpamScope([void Function(IpamScopeBuilder)? updates]) =>
      (new IpamScopeBuilder()..update(updates))._build();

  _$IpamScope._(
      {this.ownerId,
      this.ipamScopeId,
      this.ipamScopeArn,
      this.ipamArn,
      this.ipamRegion,
      this.ipamScopeType,
      required this.isDefault,
      this.description,
      required this.poolCount,
      this.state,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isDefault, r'IpamScope', 'isDefault');
    BuiltValueNullFieldError.checkNotNull(poolCount, r'IpamScope', 'poolCount');
  }

  @override
  IpamScope rebuild(void Function(IpamScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamScopeBuilder toBuilder() => new IpamScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamScope &&
        ownerId == other.ownerId &&
        ipamScopeId == other.ipamScopeId &&
        ipamScopeArn == other.ipamScopeArn &&
        ipamArn == other.ipamArn &&
        ipamRegion == other.ipamRegion &&
        ipamScopeType == other.ipamScopeType &&
        isDefault == other.isDefault &&
        description == other.description &&
        poolCount == other.poolCount &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jc(_$hash, ipamScopeArn.hashCode);
    _$hash = $jc(_$hash, ipamArn.hashCode);
    _$hash = $jc(_$hash, ipamRegion.hashCode);
    _$hash = $jc(_$hash, ipamScopeType.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, poolCount.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamScopeBuilder implements Builder<IpamScope, IpamScopeBuilder> {
  _$IpamScope? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  String? _ipamScopeArn;
  String? get ipamScopeArn => _$this._ipamScopeArn;
  set ipamScopeArn(String? ipamScopeArn) => _$this._ipamScopeArn = ipamScopeArn;

  String? _ipamArn;
  String? get ipamArn => _$this._ipamArn;
  set ipamArn(String? ipamArn) => _$this._ipamArn = ipamArn;

  String? _ipamRegion;
  String? get ipamRegion => _$this._ipamRegion;
  set ipamRegion(String? ipamRegion) => _$this._ipamRegion = ipamRegion;

  IpamScopeType? _ipamScopeType;
  IpamScopeType? get ipamScopeType => _$this._ipamScopeType;
  set ipamScopeType(IpamScopeType? ipamScopeType) =>
      _$this._ipamScopeType = ipamScopeType;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _poolCount;
  int? get poolCount => _$this._poolCount;
  set poolCount(int? poolCount) => _$this._poolCount = poolCount;

  IpamScopeState? _state;
  IpamScopeState? get state => _$this._state;
  set state(IpamScopeState? state) => _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  IpamScopeBuilder() {
    IpamScope._init(this);
  }

  IpamScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _ipamScopeId = $v.ipamScopeId;
      _ipamScopeArn = $v.ipamScopeArn;
      _ipamArn = $v.ipamArn;
      _ipamRegion = $v.ipamRegion;
      _ipamScopeType = $v.ipamScopeType;
      _isDefault = $v.isDefault;
      _description = $v.description;
      _poolCount = $v.poolCount;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamScope other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamScope;
  }

  @override
  void update(void Function(IpamScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamScope build() => _build();

  _$IpamScope _build() {
    _$IpamScope _$result;
    try {
      _$result = _$v ??
          new _$IpamScope._(
              ownerId: ownerId,
              ipamScopeId: ipamScopeId,
              ipamScopeArn: ipamScopeArn,
              ipamArn: ipamArn,
              ipamRegion: ipamRegion,
              ipamScopeType: ipamScopeType,
              isDefault: BuiltValueNullFieldError.checkNotNull(
                  isDefault, r'IpamScope', 'isDefault'),
              description: description,
              poolCount: BuiltValueNullFieldError.checkNotNull(
                  poolCount, r'IpamScope', 'poolCount'),
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamScope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
