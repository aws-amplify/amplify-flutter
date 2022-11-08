// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_metrics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketMetricsConfigurationRequest
    extends PutBucketMetricsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;
  @override
  final _i2.MetricsConfiguration metricsConfiguration;

  factory _$PutBucketMetricsConfigurationRequest(
          [void Function(PutBucketMetricsConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketMetricsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketMetricsConfigurationRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.id,
      required this.metricsConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketMetricsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'PutBucketMetricsConfigurationRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(metricsConfiguration,
        r'PutBucketMetricsConfigurationRequest', 'metricsConfiguration');
  }

  @override
  PutBucketMetricsConfigurationRequest rebuild(
          void Function(PutBucketMetricsConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketMetricsConfigurationRequestBuilder toBuilder() =>
      new PutBucketMetricsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketMetricsConfigurationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        id == other.id &&
        metricsConfiguration == other.metricsConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode),
            id.hashCode),
        metricsConfiguration.hashCode));
  }
}

class PutBucketMetricsConfigurationRequestBuilder
    implements
        Builder<PutBucketMetricsConfigurationRequest,
            PutBucketMetricsConfigurationRequestBuilder> {
  _$PutBucketMetricsConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.MetricsConfigurationBuilder? _metricsConfiguration;
  _i2.MetricsConfigurationBuilder get metricsConfiguration =>
      _$this._metricsConfiguration ??= new _i2.MetricsConfigurationBuilder();
  set metricsConfiguration(
          _i2.MetricsConfigurationBuilder? metricsConfiguration) =>
      _$this._metricsConfiguration = metricsConfiguration;

  PutBucketMetricsConfigurationRequestBuilder() {
    PutBucketMetricsConfigurationRequest._init(this);
  }

  PutBucketMetricsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _id = $v.id;
      _metricsConfiguration = $v.metricsConfiguration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketMetricsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketMetricsConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketMetricsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketMetricsConfigurationRequest build() => _build();

  _$PutBucketMetricsConfigurationRequest _build() {
    _$PutBucketMetricsConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketMetricsConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketMetricsConfigurationRequest', 'bucket'),
              expectedBucketOwner: expectedBucketOwner,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PutBucketMetricsConfigurationRequest', 'id'),
              metricsConfiguration: metricsConfiguration.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metricsConfiguration';
        metricsConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketMetricsConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
