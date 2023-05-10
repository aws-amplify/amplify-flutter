// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.resource_target_definition;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceTargetDefinition extends ResourceTargetDefinition {
  @override
  final _i2.ResourceAttribute? attribute;
  @override
  final String? name;
  @override
  final _i3.RequiresRecreation? requiresRecreation;

  factory _$ResourceTargetDefinition(
          [void Function(ResourceTargetDefinitionBuilder)? updates]) =>
      (new ResourceTargetDefinitionBuilder()..update(updates))._build();

  _$ResourceTargetDefinition._(
      {this.attribute, this.name, this.requiresRecreation})
      : super._();

  @override
  ResourceTargetDefinition rebuild(
          void Function(ResourceTargetDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceTargetDefinitionBuilder toBuilder() =>
      new ResourceTargetDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceTargetDefinition &&
        attribute == other.attribute &&
        name == other.name &&
        requiresRecreation == other.requiresRecreation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, requiresRecreation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceTargetDefinitionBuilder
    implements
        Builder<ResourceTargetDefinition, ResourceTargetDefinitionBuilder> {
  _$ResourceTargetDefinition? _$v;

  _i2.ResourceAttribute? _attribute;
  _i2.ResourceAttribute? get attribute => _$this._attribute;
  set attribute(_i2.ResourceAttribute? attribute) =>
      _$this._attribute = attribute;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.RequiresRecreation? _requiresRecreation;
  _i3.RequiresRecreation? get requiresRecreation => _$this._requiresRecreation;
  set requiresRecreation(_i3.RequiresRecreation? requiresRecreation) =>
      _$this._requiresRecreation = requiresRecreation;

  ResourceTargetDefinitionBuilder() {
    ResourceTargetDefinition._init(this);
  }

  ResourceTargetDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _name = $v.name;
      _requiresRecreation = $v.requiresRecreation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceTargetDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceTargetDefinition;
  }

  @override
  void update(void Function(ResourceTargetDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceTargetDefinition build() => _build();

  _$ResourceTargetDefinition _build() {
    final _$result = _$v ??
        new _$ResourceTargetDefinition._(
            attribute: attribute,
            name: name,
            requiresRecreation: requiresRecreation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
