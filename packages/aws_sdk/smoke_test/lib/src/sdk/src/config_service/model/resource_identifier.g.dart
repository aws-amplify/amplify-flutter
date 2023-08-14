// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_identifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceIdentifier extends ResourceIdentifier {
  @override
  final ResourceType? resourceType;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final DateTime? resourceDeletionTime;

  factory _$ResourceIdentifier(
          [void Function(ResourceIdentifierBuilder)? updates]) =>
      (new ResourceIdentifierBuilder()..update(updates))._build();

  _$ResourceIdentifier._(
      {this.resourceType,
      this.resourceId,
      this.resourceName,
      this.resourceDeletionTime})
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
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceDeletionTime == other.resourceDeletionTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceDeletionTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceIdentifierBuilder
    implements Builder<ResourceIdentifier, ResourceIdentifierBuilder> {
  _$ResourceIdentifier? _$v;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  DateTime? _resourceDeletionTime;
  DateTime? get resourceDeletionTime => _$this._resourceDeletionTime;
  set resourceDeletionTime(DateTime? resourceDeletionTime) =>
      _$this._resourceDeletionTime = resourceDeletionTime;

  ResourceIdentifierBuilder();

  ResourceIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceDeletionTime = $v.resourceDeletionTime;
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
            resourceType: resourceType,
            resourceId: resourceId,
            resourceName: resourceName,
            resourceDeletionTime: resourceDeletionTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
