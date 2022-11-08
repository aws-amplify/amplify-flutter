// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceFilters extends ResourceFilters {
  @override
  final String? accountId;
  @override
  final String? region;
  @override
  final String? resourceId;
  @override
  final String? resourceName;

  factory _$ResourceFilters([void Function(ResourceFiltersBuilder)? updates]) =>
      (new ResourceFiltersBuilder()..update(updates))._build();

  _$ResourceFilters._(
      {this.accountId, this.region, this.resourceId, this.resourceName})
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
        region == other.region &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accountId.hashCode), region.hashCode),
            resourceId.hashCode),
        resourceName.hashCode));
  }
}

class ResourceFiltersBuilder
    implements Builder<ResourceFilters, ResourceFiltersBuilder> {
  _$ResourceFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  ResourceFiltersBuilder() {
    ResourceFilters._init(this);
  }

  ResourceFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _region = $v.region;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
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
            region: region,
            resourceId: resourceId,
            resourceName: resourceName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
