// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.relationship;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Relationship extends Relationship {
  @override
  final String? relationshipName;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final _i2.ResourceType? resourceType;

  factory _$Relationship([void Function(RelationshipBuilder)? updates]) =>
      (new RelationshipBuilder()..update(updates))._build();

  _$Relationship._(
      {this.relationshipName,
      this.resourceId,
      this.resourceName,
      this.resourceType})
      : super._();

  @override
  Relationship rebuild(void Function(RelationshipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationshipBuilder toBuilder() => new RelationshipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Relationship &&
        relationshipName == other.relationshipName &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, relationshipName.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RelationshipBuilder
    implements Builder<Relationship, RelationshipBuilder> {
  _$Relationship? _$v;

  String? _relationshipName;
  String? get relationshipName => _$this._relationshipName;
  set relationshipName(String? relationshipName) =>
      _$this._relationshipName = relationshipName;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  RelationshipBuilder() {
    Relationship._init(this);
  }

  RelationshipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relationshipName = $v.relationshipName;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Relationship other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Relationship;
  }

  @override
  void update(void Function(RelationshipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Relationship build() => _build();

  _$Relationship _build() {
    final _$result = _$v ??
        new _$Relationship._(
            relationshipName: relationshipName,
            resourceId: resourceId,
            resourceName: resourceName,
            resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
