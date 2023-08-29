// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coip_pool_usage_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCoipPoolUsageRequest extends GetCoipPoolUsageRequest {
  @override
  final String? poolId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetCoipPoolUsageRequest(
          [void Function(GetCoipPoolUsageRequestBuilder)? updates]) =>
      (new GetCoipPoolUsageRequestBuilder()..update(updates))._build();

  _$GetCoipPoolUsageRequest._(
      {this.poolId,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetCoipPoolUsageRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetCoipPoolUsageRequest', 'dryRun');
  }

  @override
  GetCoipPoolUsageRequest rebuild(
          void Function(GetCoipPoolUsageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCoipPoolUsageRequestBuilder toBuilder() =>
      new GetCoipPoolUsageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCoipPoolUsageRequest &&
        poolId == other.poolId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, poolId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCoipPoolUsageRequestBuilder
    implements
        Builder<GetCoipPoolUsageRequest, GetCoipPoolUsageRequestBuilder> {
  _$GetCoipPoolUsageRequest? _$v;

  String? _poolId;
  String? get poolId => _$this._poolId;
  set poolId(String? poolId) => _$this._poolId = poolId;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetCoipPoolUsageRequestBuilder() {
    GetCoipPoolUsageRequest._init(this);
  }

  GetCoipPoolUsageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _poolId = $v.poolId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCoipPoolUsageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCoipPoolUsageRequest;
  }

  @override
  void update(void Function(GetCoipPoolUsageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCoipPoolUsageRequest build() => _build();

  _$GetCoipPoolUsageRequest _build() {
    _$GetCoipPoolUsageRequest _$result;
    try {
      _$result = _$v ??
          new _$GetCoipPoolUsageRequest._(
              poolId: poolId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'GetCoipPoolUsageRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetCoipPoolUsageRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetCoipPoolUsageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
