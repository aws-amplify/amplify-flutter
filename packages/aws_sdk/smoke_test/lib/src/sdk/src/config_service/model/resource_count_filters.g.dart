// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_count_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceCountFilters extends ResourceCountFilters {
  @override
  final _i2.ResourceType? resourceType;
  @override
  final String? accountId;
  @override
  final String? region;

  factory _$ResourceCountFilters(
          [void Function(ResourceCountFiltersBuilder)? updates]) =>
      (new ResourceCountFiltersBuilder()..update(updates))._build();

  _$ResourceCountFilters._({this.resourceType, this.accountId, this.region})
      : super._();

  @override
  ResourceCountFilters rebuild(
          void Function(ResourceCountFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceCountFiltersBuilder toBuilder() =>
      new ResourceCountFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceCountFilters &&
        resourceType == other.resourceType &&
        accountId == other.accountId &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceCountFiltersBuilder
    implements Builder<ResourceCountFilters, ResourceCountFiltersBuilder> {
  _$ResourceCountFilters? _$v;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  ResourceCountFiltersBuilder() {
    ResourceCountFilters._init(this);
  }

  ResourceCountFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _accountId = $v.accountId;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceCountFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceCountFilters;
  }

  @override
  void update(void Function(ResourceCountFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceCountFilters build() => _build();

  _$ResourceCountFilters _build() {
    final _$result = _$v ??
        new _$ResourceCountFilters._(
            resourceType: resourceType, accountId: accountId, region: region);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
