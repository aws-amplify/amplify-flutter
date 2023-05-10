// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceKey extends ResourceKey {
  @override
  final _i2.ResourceType resourceType;
  @override
  final String resourceId;

  factory _$ResourceKey([void Function(ResourceKeyBuilder)? updates]) =>
      (new ResourceKeyBuilder()..update(updates))._build();

  _$ResourceKey._({required this.resourceType, required this.resourceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'ResourceKey', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'ResourceKey', 'resourceId');
  }

  @override
  ResourceKey rebuild(void Function(ResourceKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceKeyBuilder toBuilder() => new ResourceKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceKey &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceKeyBuilder implements Builder<ResourceKey, ResourceKeyBuilder> {
  _$ResourceKey? _$v;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  ResourceKeyBuilder() {
    ResourceKey._init(this);
  }

  ResourceKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceKey;
  }

  @override
  void update(void Function(ResourceKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceKey build() => _build();

  _$ResourceKey _build() {
    final _$result = _$v ??
        new _$ResourceKey._(
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'ResourceKey', 'resourceType'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'ResourceKey', 'resourceId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
