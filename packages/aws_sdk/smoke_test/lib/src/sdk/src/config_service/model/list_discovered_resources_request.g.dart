// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_discovered_resources_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListDiscoveredResourcesRequest extends ListDiscoveredResourcesRequest {
  @override
  final _i3.ResourceType resourceType;
  @override
  final _i4.BuiltList<String>? resourceIds;
  @override
  final String? resourceName;
  @override
  final int limit;
  @override
  final bool includeDeletedResources;
  @override
  final String? nextToken;

  factory _$ListDiscoveredResourcesRequest(
          [void Function(ListDiscoveredResourcesRequestBuilder)? updates]) =>
      (new ListDiscoveredResourcesRequestBuilder()..update(updates))._build();

  _$ListDiscoveredResourcesRequest._(
      {required this.resourceType,
      this.resourceIds,
      this.resourceName,
      required this.limit,
      required this.includeDeletedResources,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'ListDiscoveredResourcesRequest', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'ListDiscoveredResourcesRequest', 'limit');
    BuiltValueNullFieldError.checkNotNull(includeDeletedResources,
        r'ListDiscoveredResourcesRequest', 'includeDeletedResources');
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
        resourceType == other.resourceType &&
        resourceIds == other.resourceIds &&
        resourceName == other.resourceName &&
        limit == other.limit &&
        includeDeletedResources == other.includeDeletedResources &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceIds.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, includeDeletedResources.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListDiscoveredResourcesRequestBuilder
    implements
        Builder<ListDiscoveredResourcesRequest,
            ListDiscoveredResourcesRequestBuilder> {
  _$ListDiscoveredResourcesRequest? _$v;

  _i3.ResourceType? _resourceType;
  _i3.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i4.ListBuilder<String>? _resourceIds;
  _i4.ListBuilder<String> get resourceIds =>
      _$this._resourceIds ??= new _i4.ListBuilder<String>();
  set resourceIds(_i4.ListBuilder<String>? resourceIds) =>
      _$this._resourceIds = resourceIds;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  bool? _includeDeletedResources;
  bool? get includeDeletedResources => _$this._includeDeletedResources;
  set includeDeletedResources(bool? includeDeletedResources) =>
      _$this._includeDeletedResources = includeDeletedResources;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListDiscoveredResourcesRequestBuilder() {
    ListDiscoveredResourcesRequest._init(this);
  }

  ListDiscoveredResourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceIds = $v.resourceIds?.toBuilder();
      _resourceName = $v.resourceName;
      _limit = $v.limit;
      _includeDeletedResources = $v.includeDeletedResources;
      _nextToken = $v.nextToken;
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
              resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                  r'ListDiscoveredResourcesRequest', 'resourceType'),
              resourceIds: _resourceIds?.build(),
              resourceName: resourceName,
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'ListDiscoveredResourcesRequest', 'limit'),
              includeDeletedResources: BuiltValueNullFieldError.checkNotNull(
                  includeDeletedResources,
                  r'ListDiscoveredResourcesRequest',
                  'includeDeletedResources'),
              nextToken: nextToken);
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
