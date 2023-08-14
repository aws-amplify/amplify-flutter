// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_pool_cidrs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamPoolCidrsRequest extends GetIpamPoolCidrsRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetIpamPoolCidrsRequest(
          [void Function(GetIpamPoolCidrsRequestBuilder)? updates]) =>
      (new GetIpamPoolCidrsRequestBuilder()..update(updates))._build();

  _$GetIpamPoolCidrsRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetIpamPoolCidrsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetIpamPoolCidrsRequest', 'maxResults');
  }

  @override
  GetIpamPoolCidrsRequest rebuild(
          void Function(GetIpamPoolCidrsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamPoolCidrsRequestBuilder toBuilder() =>
      new GetIpamPoolCidrsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamPoolCidrsRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamPoolCidrsRequestBuilder
    implements
        Builder<GetIpamPoolCidrsRequest, GetIpamPoolCidrsRequestBuilder> {
  _$GetIpamPoolCidrsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

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

  GetIpamPoolCidrsRequestBuilder() {
    GetIpamPoolCidrsRequest._init(this);
  }

  GetIpamPoolCidrsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamPoolCidrsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamPoolCidrsRequest;
  }

  @override
  void update(void Function(GetIpamPoolCidrsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamPoolCidrsRequest build() => _build();

  _$GetIpamPoolCidrsRequest _build() {
    _$GetIpamPoolCidrsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetIpamPoolCidrsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetIpamPoolCidrsRequest', 'dryRun'),
              ipamPoolId: ipamPoolId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'GetIpamPoolCidrsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamPoolCidrsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
