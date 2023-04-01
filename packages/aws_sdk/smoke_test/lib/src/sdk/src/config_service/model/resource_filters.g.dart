// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceFilters extends ResourceFilters {
  @override
  final String? accountId;
  @override
  final String? resourceId;
  @override
  final String? resourceName;
  @override
  final String? region;

  factory _$ResourceFilters([void Function(ResourceFiltersBuilder)? updates]) =>
      (new ResourceFiltersBuilder()..update(updates))._build();

  _$ResourceFilters._(
      {this.accountId, this.resourceId, this.resourceName, this.region})
      : super._();

  @override
  ResourceFilters rebuild(void Function(ResourceFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceFiltersBuilder toBuilder() =>
      new ResourceFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceFilters &&
        accountId == other.accountId &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceFiltersBuilder
    implements Builder<ResourceFilters, ResourceFiltersBuilder> {
  _$ResourceFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  ResourceFiltersBuilder() {
    ResourceFilters._init(this);
  }

  ResourceFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceFilters;
  }

  @override
  void update(void Function(ResourceFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceFilters build() => _build();

  _$ResourceFilters _build() {
    final _$result = _$v ??
        new _$ResourceFilters._(
            accountId: accountId,
            resourceId: resourceId,
            resourceName: resourceName,
            region: region);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
