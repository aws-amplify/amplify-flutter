// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fleets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetsRequest extends DescribeFleetsRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? fleetIds;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribeFleetsRequest(
          [void Function(DescribeFleetsRequestBuilder)? updates]) =>
      (new DescribeFleetsRequestBuilder()..update(updates))._build();

  _$DescribeFleetsRequest._(
      {required this.dryRun,
      required this.maxResults,
      this.nextToken,
      this.fleetIds,
      this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFleetsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeFleetsRequest', 'maxResults');
  }

  @override
  DescribeFleetsRequest rebuild(
          void Function(DescribeFleetsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetsRequestBuilder toBuilder() =>
      new DescribeFleetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetsRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        fleetIds == other.fleetIds &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, fleetIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetsRequestBuilder
    implements Builder<DescribeFleetsRequest, DescribeFleetsRequestBuilder> {
  _$DescribeFleetsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _fleetIds;
  _i3.ListBuilder<String> get fleetIds =>
      _$this._fleetIds ??= new _i3.ListBuilder<String>();
  set fleetIds(_i3.ListBuilder<String>? fleetIds) =>
      _$this._fleetIds = fleetIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribeFleetsRequestBuilder() {
    DescribeFleetsRequest._init(this);
  }

  DescribeFleetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _fleetIds = $v.fleetIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetsRequest;
  }

  @override
  void update(void Function(DescribeFleetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetsRequest build() => _build();

  _$DescribeFleetsRequest _build() {
    _$DescribeFleetsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeFleetsRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeFleetsRequest', 'maxResults'),
              nextToken: nextToken,
              fleetIds: _fleetIds?.build(),
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fleetIds';
        _fleetIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFleetsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
