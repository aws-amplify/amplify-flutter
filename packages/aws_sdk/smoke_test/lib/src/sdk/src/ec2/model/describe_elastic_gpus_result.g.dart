// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_elastic_gpus_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeElasticGpusResult extends DescribeElasticGpusResult {
  @override
  final _i2.BuiltList<ElasticGpus>? elasticGpuSet;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeElasticGpusResult(
          [void Function(DescribeElasticGpusResultBuilder)? updates]) =>
      (new DescribeElasticGpusResultBuilder()..update(updates))._build();

  _$DescribeElasticGpusResult._(
      {this.elasticGpuSet, required this.maxResults, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeElasticGpusResult', 'maxResults');
  }

  @override
  DescribeElasticGpusResult rebuild(
          void Function(DescribeElasticGpusResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeElasticGpusResultBuilder toBuilder() =>
      new DescribeElasticGpusResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeElasticGpusResult &&
        elasticGpuSet == other.elasticGpuSet &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elasticGpuSet.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeElasticGpusResultBuilder
    implements
        Builder<DescribeElasticGpusResult, DescribeElasticGpusResultBuilder> {
  _$DescribeElasticGpusResult? _$v;

  _i2.ListBuilder<ElasticGpus>? _elasticGpuSet;
  _i2.ListBuilder<ElasticGpus> get elasticGpuSet =>
      _$this._elasticGpuSet ??= new _i2.ListBuilder<ElasticGpus>();
  set elasticGpuSet(_i2.ListBuilder<ElasticGpus>? elasticGpuSet) =>
      _$this._elasticGpuSet = elasticGpuSet;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeElasticGpusResultBuilder() {
    DescribeElasticGpusResult._init(this);
  }

  DescribeElasticGpusResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elasticGpuSet = $v.elasticGpuSet?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeElasticGpusResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeElasticGpusResult;
  }

  @override
  void update(void Function(DescribeElasticGpusResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeElasticGpusResult build() => _build();

  _$DescribeElasticGpusResult _build() {
    _$DescribeElasticGpusResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeElasticGpusResult._(
              elasticGpuSet: _elasticGpuSet?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeElasticGpusResult', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'elasticGpuSet';
        _elasticGpuSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeElasticGpusResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
