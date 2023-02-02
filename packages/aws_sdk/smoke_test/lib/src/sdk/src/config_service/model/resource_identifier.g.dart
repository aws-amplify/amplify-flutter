// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_identifier;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceIdentifier extends ResourceIdentifier {
  @override
  final DateTime? resourceDeletionTime;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final _i2.ResourceType? resourceType;

  factory _$ResourceIdentifier(
          [void Function(ResourceIdentifierBuilder)? updates]) =>
      (new ResourceIdentifierBuilder()..update(updates))._build();

  _$ResourceIdentifier._(
      {this.resourceDeletionTime,
      this.resourceId,
      this.resourceName,
      this.resourceType})
      : super._();

  @override
  ResourceIdentifier rebuild(
          void Function(ResourceIdentifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceIdentifierBuilder toBuilder() =>
      new ResourceIdentifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceIdentifier &&
        resourceDeletionTime == other.resourceDeletionTime &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceDeletionTime.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceIdentifierBuilder
    implements Builder<ResourceIdentifier, ResourceIdentifierBuilder> {
  _$ResourceIdentifier? _$v;

  DateTime? _resourceDeletionTime;
  DateTime? get resourceDeletionTime => _$this._resourceDeletionTime;
  set resourceDeletionTime(DateTime? resourceDeletionTime) =>
      _$this._resourceDeletionTime = resourceDeletionTime;

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

  ResourceIdentifierBuilder() {
    ResourceIdentifier._init(this);
  }

  ResourceIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceDeletionTime = $v.resourceDeletionTime;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceIdentifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceIdentifier;
  }

  @override
  void update(void Function(ResourceIdentifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceIdentifier build() => _build();

  _$ResourceIdentifier _build() {
    final _$result = _$v ??
        new _$ResourceIdentifier._(
            resourceDeletionTime: resourceDeletionTime,
            resourceId: resourceId,
            resourceName: resourceName,
            resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
