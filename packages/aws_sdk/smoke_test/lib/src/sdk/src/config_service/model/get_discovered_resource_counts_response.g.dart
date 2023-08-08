// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_discovered_resource_counts_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDiscoveredResourceCountsResponse
    extends GetDiscoveredResourceCountsResponse {
  @override
  final _i2.Int64 totalDiscoveredResources;
  @override
  final _i4.BuiltList<_i3.ResourceCount>? resourceCounts;
  @override
  final String? nextToken;

  factory _$GetDiscoveredResourceCountsResponse(
          [void Function(GetDiscoveredResourceCountsResponseBuilder)?
              updates]) =>
      (new GetDiscoveredResourceCountsResponseBuilder()..update(updates))
          ._build();

  _$GetDiscoveredResourceCountsResponse._(
      {required this.totalDiscoveredResources,
      this.resourceCounts,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalDiscoveredResources,
        r'GetDiscoveredResourceCountsResponse', 'totalDiscoveredResources');
  }

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
        totalDiscoveredResources == other.totalDiscoveredResources &&
        resourceCounts == other.resourceCounts &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalDiscoveredResources.hashCode);
    _$hash = $jc(_$hash, resourceCounts.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDiscoveredResourceCountsResponseBuilder
    implements
        Builder<GetDiscoveredResourceCountsResponse,
            GetDiscoveredResourceCountsResponseBuilder> {
  _$GetDiscoveredResourceCountsResponse? _$v;

  _i2.Int64? _totalDiscoveredResources;
  _i2.Int64? get totalDiscoveredResources => _$this._totalDiscoveredResources;
  set totalDiscoveredResources(_i2.Int64? totalDiscoveredResources) =>
      _$this._totalDiscoveredResources = totalDiscoveredResources;

  _i4.ListBuilder<_i3.ResourceCount>? _resourceCounts;
  _i4.ListBuilder<_i3.ResourceCount> get resourceCounts =>
      _$this._resourceCounts ??= new _i4.ListBuilder<_i3.ResourceCount>();
  set resourceCounts(_i4.ListBuilder<_i3.ResourceCount>? resourceCounts) =>
      _$this._resourceCounts = resourceCounts;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetDiscoveredResourceCountsResponseBuilder() {
    GetDiscoveredResourceCountsResponse._init(this);
  }

  GetDiscoveredResourceCountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalDiscoveredResources = $v.totalDiscoveredResources;
      _resourceCounts = $v.resourceCounts?.toBuilder();
      _nextToken = $v.nextToken;
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
              totalDiscoveredResources: BuiltValueNullFieldError.checkNotNull(
                  totalDiscoveredResources,
                  r'GetDiscoveredResourceCountsResponse',
                  'totalDiscoveredResources'),
              resourceCounts: _resourceCounts?.build(),
              nextToken: nextToken);
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
