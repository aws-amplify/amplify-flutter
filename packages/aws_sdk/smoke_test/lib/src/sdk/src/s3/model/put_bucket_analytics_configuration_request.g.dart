// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_analytics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketAnalyticsConfigurationRequest
    extends PutBucketAnalyticsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final _i2.AnalyticsConfiguration analyticsConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketAnalyticsConfigurationRequest(
          [void Function(PutBucketAnalyticsConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketAnalyticsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketAnalyticsConfigurationRequest._(
      {required this.bucket,
      required this.id,
      required this.analyticsConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketAnalyticsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'PutBucketAnalyticsConfigurationRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(analyticsConfiguration,
        r'PutBucketAnalyticsConfigurationRequest', 'analyticsConfiguration');
  }

  @override
  PutBucketAnalyticsConfigurationRequest rebuild(
          void Function(PutBucketAnalyticsConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketAnalyticsConfigurationRequestBuilder toBuilder() =>
      new PutBucketAnalyticsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketAnalyticsConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id &&
        analyticsConfiguration == other.analyticsConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, analyticsConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketAnalyticsConfigurationRequestBuilder
    implements
        Builder<PutBucketAnalyticsConfigurationRequest,
            PutBucketAnalyticsConfigurationRequestBuilder> {
  _$PutBucketAnalyticsConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.AnalyticsConfigurationBuilder? _analyticsConfiguration;
  _i2.AnalyticsConfigurationBuilder get analyticsConfiguration =>
      _$this._analyticsConfiguration ??=
          new _i2.AnalyticsConfigurationBuilder();
  set analyticsConfiguration(
          _i2.AnalyticsConfigurationBuilder? analyticsConfiguration) =>
      _$this._analyticsConfiguration = analyticsConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketAnalyticsConfigurationRequestBuilder() {
    PutBucketAnalyticsConfigurationRequest._init(this);
  }

  PutBucketAnalyticsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _analyticsConfiguration = $v.analyticsConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketAnalyticsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketAnalyticsConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketAnalyticsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketAnalyticsConfigurationRequest build() => _build();

  _$PutBucketAnalyticsConfigurationRequest _build() {
    _$PutBucketAnalyticsConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketAnalyticsConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketAnalyticsConfigurationRequest', 'bucket'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PutBucketAnalyticsConfigurationRequest', 'id'),
              analyticsConfiguration: analyticsConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsConfiguration';
        analyticsConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketAnalyticsConfigurationRequest',
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
