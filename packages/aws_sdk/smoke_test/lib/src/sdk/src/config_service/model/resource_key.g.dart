// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceKey extends ResourceKey {
  @override
  final String resourceId;
  @override
  final _i2.ResourceType resourceType;

  factory _$ResourceKey([void Function(ResourceKeyBuilder)? updates]) =>
      (new ResourceKeyBuilder()..update(updates))._build();

  _$ResourceKey._({required this.resourceId, required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'ResourceKey', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'ResourceKey', 'resourceType');
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
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resourceId.hashCode), resourceType.hashCode));
  }
}

class ResourceKeyBuilder implements Builder<ResourceKey, ResourceKeyBuilder> {
  _$ResourceKey? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  ResourceKeyBuilder() {
    ResourceKey._init(this);
  }

  ResourceKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
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
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'ResourceKey', 'resourceId'),
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'ResourceKey', 'resourceType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
