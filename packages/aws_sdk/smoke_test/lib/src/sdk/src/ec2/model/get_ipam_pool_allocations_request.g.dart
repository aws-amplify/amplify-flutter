// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_pool_allocations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamPoolAllocationsRequest extends GetIpamPoolAllocationsRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? ipamPoolAllocationId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetIpamPoolAllocationsRequest(
          [void Function(GetIpamPoolAllocationsRequestBuilder)? updates]) =>
      (new GetIpamPoolAllocationsRequestBuilder()..update(updates))._build();

  _$GetIpamPoolAllocationsRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.ipamPoolAllocationId,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetIpamPoolAllocationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetIpamPoolAllocationsRequest', 'maxResults');
  }

  @override
  GetIpamPoolAllocationsRequest rebuild(
          void Function(GetIpamPoolAllocationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamPoolAllocationsRequestBuilder toBuilder() =>
      new GetIpamPoolAllocationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamPoolAllocationsRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        ipamPoolAllocationId == other.ipamPoolAllocationId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, ipamPoolAllocationId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamPoolAllocationsRequestBuilder
    implements
        Builder<GetIpamPoolAllocationsRequest,
            GetIpamPoolAllocationsRequestBuilder> {
  _$GetIpamPoolAllocationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _ipamPoolAllocationId;
  String? get ipamPoolAllocationId => _$this._ipamPoolAllocationId;
  set ipamPoolAllocationId(String? ipamPoolAllocationId) =>
      _$this._ipamPoolAllocationId = ipamPoolAllocationId;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamPoolAllocationsRequestBuilder() {
    GetIpamPoolAllocationsRequest._init(this);
  }

  GetIpamPoolAllocationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _ipamPoolAllocationId = $v.ipamPoolAllocationId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamPoolAllocationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamPoolAllocationsRequest;
  }

  @override
  void update(void Function(GetIpamPoolAllocationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamPoolAllocationsRequest build() => _build();

  _$GetIpamPoolAllocationsRequest _build() {
    _$GetIpamPoolAllocationsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetIpamPoolAllocationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetIpamPoolAllocationsRequest', 'dryRun'),
              ipamPoolId: ipamPoolId,
              ipamPoolAllocationId: ipamPoolAllocationId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'GetIpamPoolAllocationsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamPoolAllocationsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
