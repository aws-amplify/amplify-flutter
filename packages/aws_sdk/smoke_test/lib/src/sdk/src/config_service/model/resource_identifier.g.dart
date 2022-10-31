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
    return $jf($jc(
        $jc($jc($jc(0, resourceDeletionTime.hashCode), resourceId.hashCode),
            resourceName.hashCode),
        resourceType.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
