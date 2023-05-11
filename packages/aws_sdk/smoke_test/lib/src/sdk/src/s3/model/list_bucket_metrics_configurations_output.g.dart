// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_metrics_configurations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketMetricsConfigurationsOutput
    extends ListBucketMetricsConfigurationsOutput {
  @override
  final bool? isTruncated;
  @override
  final String? continuationToken;
  @override
  final String? nextContinuationToken;
  @override
  final _i3.BuiltList<_i2.MetricsConfiguration>? metricsConfigurationList;

  factory _$ListBucketMetricsConfigurationsOutput(
          [void Function(ListBucketMetricsConfigurationsOutputBuilder)?
              updates]) =>
      (new ListBucketMetricsConfigurationsOutputBuilder()..update(updates))
          ._build();

  _$ListBucketMetricsConfigurationsOutput._(
      {this.isTruncated,
      this.continuationToken,
      this.nextContinuationToken,
      this.metricsConfigurationList})
      : super._();

  @override
  ListBucketMetricsConfigurationsOutput rebuild(
          void Function(ListBucketMetricsConfigurationsOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketMetricsConfigurationsOutputBuilder toBuilder() =>
      new ListBucketMetricsConfigurationsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketMetricsConfigurationsOutput &&
        isTruncated == other.isTruncated &&
        continuationToken == other.continuationToken &&
        nextContinuationToken == other.nextContinuationToken &&
        metricsConfigurationList == other.metricsConfigurationList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jc(_$hash, nextContinuationToken.hashCode);
    _$hash = $jc(_$hash, metricsConfigurationList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListBucketMetricsConfigurationsOutputBuilder
    implements
        Builder<ListBucketMetricsConfigurationsOutput,
            ListBucketMetricsConfigurationsOutputBuilder> {
  _$ListBucketMetricsConfigurationsOutput? _$v;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  String? _nextContinuationToken;
  String? get nextContinuationToken => _$this._nextContinuationToken;
  set nextContinuationToken(String? nextContinuationToken) =>
      _$this._nextContinuationToken = nextContinuationToken;

  _i3.ListBuilder<_i2.MetricsConfiguration>? _metricsConfigurationList;
  _i3.ListBuilder<_i2.MetricsConfiguration> get metricsConfigurationList =>
      _$this._metricsConfigurationList ??=
          new _i3.ListBuilder<_i2.MetricsConfiguration>();
  set metricsConfigurationList(
          _i3.ListBuilder<_i2.MetricsConfiguration>?
              metricsConfigurationList) =>
      _$this._metricsConfigurationList = metricsConfigurationList;

  ListBucketMetricsConfigurationsOutputBuilder() {
    ListBucketMetricsConfigurationsOutput._init(this);
  }

  ListBucketMetricsConfigurationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isTruncated = $v.isTruncated;
      _continuationToken = $v.continuationToken;
      _nextContinuationToken = $v.nextContinuationToken;
      _metricsConfigurationList = $v.metricsConfigurationList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketMetricsConfigurationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketMetricsConfigurationsOutput;
  }

  @override
  void update(
      void Function(ListBucketMetricsConfigurationsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketMetricsConfigurationsOutput build() => _build();

  _$ListBucketMetricsConfigurationsOutput _build() {
    _$ListBucketMetricsConfigurationsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListBucketMetricsConfigurationsOutput._(
              isTruncated: isTruncated,
              continuationToken: continuationToken,
              nextContinuationToken: nextContinuationToken,
              metricsConfigurationList: _metricsConfigurationList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metricsConfigurationList';
        _metricsConfigurationList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListBucketMetricsConfigurationsOutput',
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
