// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_discovered_resource_counts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDiscoveredResourceCountsRequest
    extends GetDiscoveredResourceCountsRequest {
  @override
  final _i3.BuiltList<String>? resourceTypes;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetDiscoveredResourceCountsRequest(
          [void Function(GetDiscoveredResourceCountsRequestBuilder)?
              updates]) =>
      (new GetDiscoveredResourceCountsRequestBuilder()..update(updates))
          ._build();

  _$GetDiscoveredResourceCountsRequest._(
      {this.resourceTypes, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetDiscoveredResourceCountsRequest', 'limit');
  }

  @override
  GetDiscoveredResourceCountsRequest rebuild(
          void Function(GetDiscoveredResourceCountsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDiscoveredResourceCountsRequestBuilder toBuilder() =>
      new GetDiscoveredResourceCountsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDiscoveredResourceCountsRequest &&
        resourceTypes == other.resourceTypes &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDiscoveredResourceCountsRequestBuilder
    implements
        Builder<GetDiscoveredResourceCountsRequest,
            GetDiscoveredResourceCountsRequestBuilder> {
  _$GetDiscoveredResourceCountsRequest? _$v;

  _i3.ListBuilder<String>? _resourceTypes;
  _i3.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i3.ListBuilder<String>();
  set resourceTypes(_i3.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetDiscoveredResourceCountsRequestBuilder() {
    GetDiscoveredResourceCountsRequest._init(this);
  }

  GetDiscoveredResourceCountsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDiscoveredResourceCountsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDiscoveredResourceCountsRequest;
  }

  @override
  void update(
      void Function(GetDiscoveredResourceCountsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDiscoveredResourceCountsRequest build() => _build();

  _$GetDiscoveredResourceCountsRequest _build() {
    _$GetDiscoveredResourceCountsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetDiscoveredResourceCountsRequest._(
              resourceTypes: _resourceTypes?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'GetDiscoveredResourceCountsRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDiscoveredResourceCountsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
