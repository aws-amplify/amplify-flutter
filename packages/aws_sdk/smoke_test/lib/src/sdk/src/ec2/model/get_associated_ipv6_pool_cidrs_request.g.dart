// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_associated_ipv6_pool_cidrs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAssociatedIpv6PoolCidrsRequest
    extends GetAssociatedIpv6PoolCidrsRequest {
  @override
  final String? poolId;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$GetAssociatedIpv6PoolCidrsRequest(
          [void Function(GetAssociatedIpv6PoolCidrsRequestBuilder)? updates]) =>
      (new GetAssociatedIpv6PoolCidrsRequestBuilder()..update(updates))
          ._build();

  _$GetAssociatedIpv6PoolCidrsRequest._(
      {this.poolId,
      this.nextToken,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetAssociatedIpv6PoolCidrsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetAssociatedIpv6PoolCidrsRequest', 'dryRun');
  }

  @override
  GetAssociatedIpv6PoolCidrsRequest rebuild(
          void Function(GetAssociatedIpv6PoolCidrsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAssociatedIpv6PoolCidrsRequestBuilder toBuilder() =>
      new GetAssociatedIpv6PoolCidrsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAssociatedIpv6PoolCidrsRequest &&
        poolId == other.poolId &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAssociatedIpv6PoolCidrsRequestBuilder
    implements
        Builder<GetAssociatedIpv6PoolCidrsRequest,
            GetAssociatedIpv6PoolCidrsRequestBuilder> {
  _$GetAssociatedIpv6PoolCidrsRequest? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetAssociatedIpv6PoolCidrsRequestBuilder() {
    GetAssociatedIpv6PoolCidrsRequest._init(this);
  }

  GetAssociatedIpv6PoolCidrsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAssociatedIpv6PoolCidrsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAssociatedIpv6PoolCidrsRequest;
  }

  @override
  void update(
      void Function(GetAssociatedIpv6PoolCidrsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAssociatedIpv6PoolCidrsRequest build() => _build();

  _$GetAssociatedIpv6PoolCidrsRequest _build() {
    final _$result = _$v ??
        new _$GetAssociatedIpv6PoolCidrsRequest._(
            poolId: poolId,
            nextToken: nextToken,
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'GetAssociatedIpv6PoolCidrsRequest', 'maxResults'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetAssociatedIpv6PoolCidrsRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
