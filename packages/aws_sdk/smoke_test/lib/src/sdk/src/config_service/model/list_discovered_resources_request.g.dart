// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_discovered_resources_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListDiscoveredResourcesRequest extends ListDiscoveredResourcesRequest {
  @override
  final bool? includeDeletedResources;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<String>? resourceIds;
  @override
  final String? resourceName;
  @override
  final _i3.ResourceType resourceType;

  factory _$ListDiscoveredResourcesRequest(
          [void Function(ListDiscoveredResourcesRequestBuilder)? updates]) =>
      (new ListDiscoveredResourcesRequestBuilder()..update(updates))._build();

  _$ListDiscoveredResourcesRequest._(
      {this.includeDeletedResources,
      this.limit,
      this.nextToken,
      this.resourceIds,
      this.resourceName,
      required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'ListDiscoveredResourcesRequest', 'resourceType');
  }

  @override
  ListDiscoveredResourcesRequest rebuild(
          void Function(ListDiscoveredResourcesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListDiscoveredResourcesRequestBuilder toBuilder() =>
      new ListDiscoveredResourcesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListDiscoveredResourcesRequest &&
        includeDeletedResources == other.includeDeletedResources &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        resourceIds == other.resourceIds &&
        resourceName == other.resourceName &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, includeDeletedResources.hashCode),
                        limit.hashCode),
                    nextToken.hashCode),
                resourceIds.hashCode),
            resourceName.hashCode),
        resourceType.hashCode));
  }
}

class ListDiscoveredResourcesRequestBuilder
    implements
        Builder<ListDiscoveredResourcesRequest,
            ListDiscoveredResourcesRequestBuilder> {
  _$ListDiscoveredResourcesRequest? _$v;

  bool? _includeDeletedResources;
  bool? get includeDeletedResources => _$this._includeDeletedResources;
  set includeDeletedResources(bool? includeDeletedResources) =>
      _$this._includeDeletedResources = includeDeletedResources;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<String>? _resourceIds;
  _i4.ListBuilder<String> get resourceIds =>
      _$this._resourceIds ??= new _i4.ListBuilder<String>();
  set resourceIds(_i4.ListBuilder<String>? resourceIds) =>
      _$this._resourceIds = resourceIds;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  ListDiscoveredResourcesRequestBuilder() {
    ListDiscoveredResourcesRequest._init(this);
  }

  ListDiscoveredResourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _includeDeletedResources = $v.includeDeletedResources;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _resourceIds = $v.resourceIds?.toBuilder();
      _resourceName = $v.resourceName;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListDiscoveredResourcesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListDiscoveredResourcesRequest;
  }

  @override
  void update(void Function(ListDiscoveredResourcesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListDiscoveredResourcesRequest build() => _build();

  _$ListDiscoveredResourcesRequest _build() {
    _$ListDiscoveredResourcesRequest _$result;
    try {
      _$result = _$v ??
          new _$ListDiscoveredResourcesRequest._(
              includeDeletedResources: includeDeletedResources,
              limit: limit,
              nextToken: nextToken,
              resourceIds: _resourceIds?.build(),
              resourceName: resourceName,
              resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                  r'ListDiscoveredResourcesRequest', 'resourceType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIds';
        _resourceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListDiscoveredResourcesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
