// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_elastic_gpus_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeElasticGpusRequest extends DescribeElasticGpusRequest {
  @override
  final _i3.BuiltList<String>? elasticGpuIds;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeElasticGpusRequest(
          [void Function(DescribeElasticGpusRequestBuilder)? updates]) =>
      (new DescribeElasticGpusRequestBuilder()..update(updates))._build();

  _$DescribeElasticGpusRequest._(
      {this.elasticGpuIds,
      required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeElasticGpusRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeElasticGpusRequest', 'maxResults');
  }

  @override
  DescribeElasticGpusRequest rebuild(
          void Function(DescribeElasticGpusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeElasticGpusRequestBuilder toBuilder() =>
      new DescribeElasticGpusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeElasticGpusRequest &&
        elasticGpuIds == other.elasticGpuIds &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elasticGpuIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeElasticGpusRequestBuilder
    implements
        Builder<DescribeElasticGpusRequest, DescribeElasticGpusRequestBuilder> {
  _$DescribeElasticGpusRequest? _$v;

  _i3.ListBuilder<String>? _elasticGpuIds;
  _i3.ListBuilder<String> get elasticGpuIds =>
      _$this._elasticGpuIds ??= new _i3.ListBuilder<String>();
  set elasticGpuIds(_i3.ListBuilder<String>? elasticGpuIds) =>
      _$this._elasticGpuIds = elasticGpuIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

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

  DescribeElasticGpusRequestBuilder() {
    DescribeElasticGpusRequest._init(this);
  }

  DescribeElasticGpusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elasticGpuIds = $v.elasticGpuIds?.toBuilder();
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeElasticGpusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeElasticGpusRequest;
  }

  @override
  void update(void Function(DescribeElasticGpusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeElasticGpusRequest build() => _build();

  _$DescribeElasticGpusRequest _build() {
    _$DescribeElasticGpusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeElasticGpusRequest._(
              elasticGpuIds: _elasticGpuIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeElasticGpusRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeElasticGpusRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'elasticGpuIds';
        _elasticGpuIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeElasticGpusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
