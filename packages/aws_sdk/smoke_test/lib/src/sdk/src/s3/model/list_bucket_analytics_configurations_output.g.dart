// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_analytics_configurations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketAnalyticsConfigurationsOutput
    extends ListBucketAnalyticsConfigurationsOutput {
  @override
  final bool isTruncated;
  @override
  final String? continuationToken;
  @override
  final String? nextContinuationToken;
  @override
  final _i3.BuiltList<_i2.AnalyticsConfiguration>? analyticsConfigurationList;

  factory _$ListBucketAnalyticsConfigurationsOutput(
          [void Function(ListBucketAnalyticsConfigurationsOutputBuilder)?
              updates]) =>
      (new ListBucketAnalyticsConfigurationsOutputBuilder()..update(updates))
          ._build();

  _$ListBucketAnalyticsConfigurationsOutput._(
      {required this.isTruncated,
      this.continuationToken,
      this.nextContinuationToken,
      this.analyticsConfigurationList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListBucketAnalyticsConfigurationsOutput', 'isTruncated');
  }

  @override
  ListBucketAnalyticsConfigurationsOutput rebuild(
          void Function(ListBucketAnalyticsConfigurationsOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketAnalyticsConfigurationsOutputBuilder toBuilder() =>
      new ListBucketAnalyticsConfigurationsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketAnalyticsConfigurationsOutput &&
        isTruncated == other.isTruncated &&
        continuationToken == other.continuationToken &&
        nextContinuationToken == other.nextContinuationToken &&
        analyticsConfigurationList == other.analyticsConfigurationList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jc(_$hash, nextContinuationToken.hashCode);
    _$hash = $jc(_$hash, analyticsConfigurationList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListBucketAnalyticsConfigurationsOutputBuilder
    implements
        Builder<ListBucketAnalyticsConfigurationsOutput,
            ListBucketAnalyticsConfigurationsOutputBuilder> {
  _$ListBucketAnalyticsConfigurationsOutput? _$v;

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

  _i3.ListBuilder<_i2.AnalyticsConfiguration>? _analyticsConfigurationList;
  _i3.ListBuilder<_i2.AnalyticsConfiguration> get analyticsConfigurationList =>
      _$this._analyticsConfigurationList ??=
          new _i3.ListBuilder<_i2.AnalyticsConfiguration>();
  set analyticsConfigurationList(
          _i3.ListBuilder<_i2.AnalyticsConfiguration>?
              analyticsConfigurationList) =>
      _$this._analyticsConfigurationList = analyticsConfigurationList;

  ListBucketAnalyticsConfigurationsOutputBuilder() {
    ListBucketAnalyticsConfigurationsOutput._init(this);
  }

  ListBucketAnalyticsConfigurationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isTruncated = $v.isTruncated;
      _continuationToken = $v.continuationToken;
      _nextContinuationToken = $v.nextContinuationToken;
      _analyticsConfigurationList = $v.analyticsConfigurationList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketAnalyticsConfigurationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketAnalyticsConfigurationsOutput;
  }

  @override
  void update(
      void Function(ListBucketAnalyticsConfigurationsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketAnalyticsConfigurationsOutput build() => _build();

  _$ListBucketAnalyticsConfigurationsOutput _build() {
    _$ListBucketAnalyticsConfigurationsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListBucketAnalyticsConfigurationsOutput._(
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListBucketAnalyticsConfigurationsOutput', 'isTruncated'),
              continuationToken: continuationToken,
              nextContinuationToken: nextContinuationToken,
              analyticsConfigurationList: _analyticsConfigurationList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsConfigurationList';
        _analyticsConfigurationList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListBucketAnalyticsConfigurationsOutput',
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
