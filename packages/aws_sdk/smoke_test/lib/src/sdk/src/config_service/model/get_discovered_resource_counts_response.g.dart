// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_discovered_resource_counts_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDiscoveredResourceCountsResponse
    extends GetDiscoveredResourceCountsResponse {
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i2.ResourceCount>? resourceCounts;
  @override
  final _i3.Int64? totalDiscoveredResources;

  factory _$GetDiscoveredResourceCountsResponse(
          [void Function(GetDiscoveredResourceCountsResponseBuilder)?
              updates]) =>
      (new GetDiscoveredResourceCountsResponseBuilder()..update(updates))
          ._build();

  _$GetDiscoveredResourceCountsResponse._(
      {this.nextToken, this.resourceCounts, this.totalDiscoveredResources})
      : super._();

  @override
  GetDiscoveredResourceCountsResponse rebuild(
          void Function(GetDiscoveredResourceCountsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDiscoveredResourceCountsResponseBuilder toBuilder() =>
      new GetDiscoveredResourceCountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDiscoveredResourceCountsResponse &&
        nextToken == other.nextToken &&
        resourceCounts == other.resourceCounts &&
        totalDiscoveredResources == other.totalDiscoveredResources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, resourceCounts.hashCode);
    _$hash = $jc(_$hash, totalDiscoveredResources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDiscoveredResourceCountsResponseBuilder
    implements
        Builder<GetDiscoveredResourceCountsResponse,
            GetDiscoveredResourceCountsResponseBuilder> {
  _$GetDiscoveredResourceCountsResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i2.ResourceCount>? _resourceCounts;
  _i4.ListBuilder<_i2.ResourceCount> get resourceCounts =>
      _$this._resourceCounts ??= new _i4.ListBuilder<_i2.ResourceCount>();
  set resourceCounts(_i4.ListBuilder<_i2.ResourceCount>? resourceCounts) =>
      _$this._resourceCounts = resourceCounts;

  _i3.Int64? _totalDiscoveredResources;
  _i3.Int64? get totalDiscoveredResources => _$this._totalDiscoveredResources;
  set totalDiscoveredResources(_i3.Int64? totalDiscoveredResources) =>
      _$this._totalDiscoveredResources = totalDiscoveredResources;

  GetDiscoveredResourceCountsResponseBuilder() {
    GetDiscoveredResourceCountsResponse._init(this);
  }

  GetDiscoveredResourceCountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _resourceCounts = $v.resourceCounts?.toBuilder();
      _totalDiscoveredResources = $v.totalDiscoveredResources;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDiscoveredResourceCountsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDiscoveredResourceCountsResponse;
  }

  @override
  void update(
      void Function(GetDiscoveredResourceCountsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDiscoveredResourceCountsResponse build() => _build();

  _$GetDiscoveredResourceCountsResponse _build() {
    _$GetDiscoveredResourceCountsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetDiscoveredResourceCountsResponse._(
              nextToken: nextToken,
              resourceCounts: _resourceCounts?.build(),
              totalDiscoveredResources: totalDiscoveredResources);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceCounts';
        _resourceCounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDiscoveredResourceCountsResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
