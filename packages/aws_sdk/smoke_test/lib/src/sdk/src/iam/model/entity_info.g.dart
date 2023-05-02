// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.entity_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityInfo extends EntityInfo {
  @override
  final String arn;
  @override
  final String name;
  @override
  final _i2.PolicyOwnerEntityType type;
  @override
  final String id;
  @override
  final String? path;

  factory _$EntityInfo([void Function(EntityInfoBuilder)? updates]) =>
      (new EntityInfoBuilder()..update(updates))._build();

  _$EntityInfo._(
      {required this.arn,
      required this.name,
      required this.type,
      required this.id,
      this.path})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(arn, r'EntityInfo', 'arn');
    BuiltValueNullFieldError.checkNotNull(name, r'EntityInfo', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'EntityInfo', 'type');
    BuiltValueNullFieldError.checkNotNull(id, r'EntityInfo', 'id');
  }

  @override
  EntityInfo rebuild(void Function(EntityInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityInfoBuilder toBuilder() => new EntityInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityInfo &&
        arn == other.arn &&
        name == other.name &&
        type == other.type &&
        id == other.id &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EntityInfoBuilder implements Builder<EntityInfo, EntityInfoBuilder> {
  _$EntityInfo? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.PolicyOwnerEntityType? _type;
  _i2.PolicyOwnerEntityType? get type => _$this._type;
  set type(_i2.PolicyOwnerEntityType? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  EntityInfoBuilder() {
    EntityInfo._init(this);
  }

  EntityInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _name = $v.name;
      _type = $v.type;
      _id = $v.id;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntityInfo;
  }

  @override
  void update(void Function(EntityInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityInfo build() => _build();

  _$EntityInfo _build() {
    final _$result = _$v ??
        new _$EntityInfo._(
            arn: BuiltValueNullFieldError.checkNotNull(
                arn, r'EntityInfo', 'arn'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EntityInfo', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'EntityInfo', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'EntityInfo', 'id'),
            path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
