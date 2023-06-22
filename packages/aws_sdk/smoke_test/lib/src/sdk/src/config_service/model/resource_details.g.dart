// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceDetails extends ResourceDetails {
  @override
  final String resourceId;
  @override
  final String resourceType;
  @override
  final String resourceConfiguration;
  @override
  final _i2.ResourceConfigurationSchemaType? resourceConfigurationSchemaType;

  factory _$ResourceDetails([void Function(ResourceDetailsBuilder)? updates]) =>
      (new ResourceDetailsBuilder()..update(updates))._build();

  _$ResourceDetails._(
      {required this.resourceId,
      required this.resourceType,
      required this.resourceConfiguration,
      this.resourceConfigurationSchemaType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'ResourceDetails', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'ResourceDetails', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        resourceConfiguration, r'ResourceDetails', 'resourceConfiguration');
  }

  @override
  ResourceDetails rebuild(void Function(ResourceDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceDetailsBuilder toBuilder() =>
      new ResourceDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceDetails &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceConfiguration == other.resourceConfiguration &&
        resourceConfigurationSchemaType ==
            other.resourceConfigurationSchemaType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceConfiguration.hashCode);
    _$hash = $jc(_$hash, resourceConfigurationSchemaType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceDetailsBuilder
    implements Builder<ResourceDetails, ResourceDetailsBuilder> {
  _$ResourceDetails? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _resourceConfiguration;
  String? get resourceConfiguration => _$this._resourceConfiguration;
  set resourceConfiguration(String? resourceConfiguration) =>
      _$this._resourceConfiguration = resourceConfiguration;

  _i2.ResourceConfigurationSchemaType? _resourceConfigurationSchemaType;
  _i2.ResourceConfigurationSchemaType? get resourceConfigurationSchemaType =>
      _$this._resourceConfigurationSchemaType;
  set resourceConfigurationSchemaType(
          _i2.ResourceConfigurationSchemaType?
              resourceConfigurationSchemaType) =>
      _$this._resourceConfigurationSchemaType = resourceConfigurationSchemaType;

  ResourceDetailsBuilder() {
    ResourceDetails._init(this);
  }

  ResourceDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceConfiguration = $v.resourceConfiguration;
      _resourceConfigurationSchemaType = $v.resourceConfigurationSchemaType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceDetails;
  }

  @override
  void update(void Function(ResourceDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceDetails build() => _build();

  _$ResourceDetails _build() {
    final _$result = _$v ??
        new _$ResourceDetails._(
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'ResourceDetails', 'resourceId'),
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'ResourceDetails', 'resourceType'),
            resourceConfiguration: BuiltValueNullFieldError.checkNotNull(
                resourceConfiguration,
                r'ResourceDetails',
                'resourceConfiguration'),
            resourceConfigurationSchemaType: resourceConfigurationSchemaType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
