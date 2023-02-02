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
    var _$hash = 0;
    _$hash = $jc(_$hash, includeDeletedResources.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, resourceIds.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
